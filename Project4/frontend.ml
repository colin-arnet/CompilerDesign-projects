open Ll
open Llutil
open Ast

(* instruction streams ------------------------------------------------------ *)

(* As in the last project, we'll be working with a flattened representation
   of LLVMlite programs to make emitting code easier. This version
   additionally makes it possible to emit elements will be gathered up and
   "hoisted" to specific parts of the constructed CFG
   - G of gid * Ll.gdecl: allows you to output global definitions in the middle
     of the instruction stream. You will find this useful for compiling string
     literals
   - E of uid * insn: allows you to emit an instruction that will be moved up
     to the entry block of the current function. This will be useful for 
     compiling local variable declarations
*)

type elt = 
  | L of Ll.lbl             (* block labels *)
  | I of uid * Ll.insn      (* instruction *)
  | T of Ll.terminator      (* block terminators *)
  | G of gid * Ll.gdecl     (* hoisted globals (usually strings) *)
  | E of uid * Ll.insn      (* hoisted entry block instructions *)

type stream = elt list
let ( >@ ) x y = y @ x
let ( >:: ) x y = y :: x
let lift : (uid * insn) list -> stream = List.rev_map (fun (x,i) -> I (x,i))

(* Build a CFG and collection of global variable definitions from a stream *)
let cfg_of_stream (code:stream) : Ll.cfg * (Ll.gid * Ll.gdecl) list  =
    let gs, einsns, insns, term_opt, blks = List.fold_left
      (fun (gs, einsns, insns, term_opt, blks) e ->
        match e with
        | L l ->
           begin match term_opt with
           | None -> 
              if (List.length insns) = 0 then (gs, einsns, [], None, blks)
              else failwith @@ Printf.sprintf "build_cfg: block labeled %s has\
                                               no terminator" l
           | Some term ->
              (gs, einsns, [], None, (l, {insns; term})::blks)
           end
        | T t  -> (gs, einsns, [], Some (Llutil.Parsing.gensym "tmn", t), blks)
        | I (uid,insn)  -> (gs, einsns, (uid,insn)::insns, term_opt, blks)
        | G (gid,gdecl) ->  ((gid,gdecl)::gs, einsns, insns, term_opt, blks)
        | E (uid,i) -> (gs, (uid, i)::einsns, insns, term_opt, blks)
      ) ([], [], [], None, []) code
    in
    match term_opt with
    | None -> failwith "build_cfg: entry block has no terminator" 
    | Some term -> 
       let insns = einsns @ insns in
       ({insns; term}, blks), gs


(* compilation contexts ----------------------------------------------------- *)

(* To compile OAT variables, we maintain a mapping of source identifiers to the
   corresponding LLVMlite operands. Bindings are added for global OAT variables
   and local variables that are in scope. *)

module Ctxt = struct

  type t = (Ast.id * (Ll.ty * Ll.operand)) list
  let empty = []

  (* Add a binding to the context *)
  let add (c:t) (id:id) (bnd:Ll.ty * Ll.operand) : t = (id,bnd)::c

  (* Lookup a binding in the context *)
  let lookup (id:Ast.id) (c:t) : Ll.ty * Ll.operand =
    List.assoc id c

  (* Lookup a function, fail otherwise *)
  let lookup_function (id:Ast.id) (c:t) : Ll.ty * Ll.operand =
    match List.assoc id c with
    | Ptr (Fun (args, ret)), g -> Ptr (Fun (args, ret)), g
    | _ -> failwith @@ id ^ " not bound to a function"

  let lookup_function_option (id:Ast.id) (c:t) : (Ll.ty * Ll.operand) option =
    try Some (lookup_function id c) with _ -> None
  
end

(* compiling OAT types ------------------------------------------------------ *)

(* The mapping of source types onto LLVMlite is straightforward. Booleans and ints
   are represented as the corresponding integer types. OAT strings are
   pointers to bytes (I8). Arrays are the most interesting type: they are
   represented as pointers to structs where the first component is the number
   of elements in the following array.

   The trickiest part of this project will be satisfying LLVM's rudimentary type
   system. Recall that global arrays in LLVMlite need to be declared with their
   length in the type to statically allocate the right amount of memory. The 
   global strings and arrays you emit will therefore have a more specific type
   annotation than the output of cmp_rty. You will have to carefully bitcast
   gids to satisfy the LLVM type checker.
*)

let rec cmp_ty : Ast.ty -> Ll.ty = function
  | Ast.TBool  -> I1
  | Ast.TInt   -> I64
  | Ast.TRef r -> Ptr (cmp_rty r)

and cmp_rty : Ast.rty -> Ll.ty = function
  | Ast.RString  -> I8
  | Ast.RArray u -> Struct [I64; Array(0, cmp_ty u)]
  | Ast.RFun (ts, t) -> 
      let args, ret = cmp_fty (ts, t) in
      Fun (args, ret)

and cmp_ret_ty : Ast.ret_ty -> Ll.ty = function
  | Ast.RetVoid  -> Void
  | Ast.RetVal t -> cmp_ty t

and cmp_fty (ts, r) : Ll.fty =
  List.map cmp_ty ts, cmp_ret_ty r


let typ_of_binop : Ast.binop -> Ast.ty * Ast.ty * Ast.ty = function
  | Add | Mul | Sub | Shl | Shr | Sar | IAnd | IOr -> (TInt, TInt, TInt)
  | Eq | Neq | Lt | Lte | Gt | Gte -> (TInt, TInt, TBool)
  | And | Or -> (TBool, TBool, TBool)

let typ_of_unop : Ast.unop -> Ast.ty * Ast.ty = function
  | Neg | Bitnot -> (TInt, TInt)
  | Lognot       -> (TBool, TBool)

(* Compiler Invariants

   The LLVM IR type of a variable (whether global or local) that stores an Oat
   array value (or any other reference type, like "string") will always be a
   double pointer.  In general, any Oat variable of Oat-type t will be
   represented by an LLVM IR value of type Ptr (cmp_ty t).  So the Oat variable
   x : int will be represented by an LLVM IR value of type i64*, y : string will
   be represented by a value of type i8**type vdecl = id * exp nodeing an identifier as a left-hand-side
   does not do the load, so cmp_lhs called on an Oat variable of type t returns
   and operand of type (cmp_ty t)*.  Extending these invariants to account for
   array accesses: the assignment e1[e2] = e3; treats e1[e2] as a
   left-hand-side, so we compile it as follows: compile e1 as an expression to
   obtain an array value (which is of pointer of type {i64, [0 x s]}* ).
   compile e2 as an expression to obtain an operand of type i64, generate code
   that uses getelementptr to compute the offset from the array value, which is
   a pointer to the "storage space associated with e1[e2]".

   On the other hand, compiling e1[e2] as an expression (to obtain the value of
   the array), we can simply compile e1[e2] as a left-hand-side and then do the
   load.  So cmp_exp and cmp_lhs are mutually recursive.  [[Actually, as I am
   writing this, I think it could make sense to factor the Oat grammar in this
   way, which would make things clearer, I may do that for next time around.]]

 
   Consider globals7.oat

   /--------------- globals7.oat ------------------ 
   global arr = int[] null;

   int foo() { 
     var x = new int[3]; 
     arr = x; 
     x[2] = 3; 
     return arr[2]; 
   }
   /------------------------------------------------
type vdecl = id * exp nodeill look like:

   @arr = global { i64, [0 x i64] }* null

   This means that the type of the LLVM IR identifier @arr is {i64, [0 x i64]}**
   which is consistent with the type of a locally-declared array variable.

   The local variable x would be allocated and initialized by (something like)
   the following code snippet.  Here %_x7 is the LLVM IR uid containing the
   pointer to the "storage space" for the Oat variable x.

   %_x7 = alloca { i64, [0 x i64] }*                              ;; (1)
   %_raw_array5 = call i64*  @oat_alloc_array(i64 3)              ;; (2)
   %_array6 = bitcast i64* %_raw_array5 to { i64, [0 x i64] }*    ;; (3)
   store { i64, [0 x i64]}* %_array6, { i64, [0 x i64] }** %_x7   ;; (4)

   (1) note that alloca uses cmp_ty (int[]) to find the type, so %_x7 has 
       the same type as @arr 

   (2) @oat_alloc_array allocates len+1 i64's 

   (3) we have to bitcast the result of @oat_alloc_array so we can store it
        in %_x7 

   (4) stores the resulting array value (itself a pointer) into %_x7 

  The assignment arr = x; gets compiled to (something like):

  %_x8 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x7     ;; (5)
  store {i64, [0 x i64] }* %_x8, { i64, [0 type vdecl = id * exp node i64] }, 
                  { i64, [0 x i64 ] }* %_x9, i32 0, i32 1, i32 2   ;; (8)
  store i64 3, i64* %_index_ptr11                                ;; (9)

  (7) as above, load the array value that is stored %_x7 

  (8) calculate the offset from the array using GEP

  (9) store 3 into the array

  Finally, return arr[2]; gets compiled to (something like) the following.
  Note that the way arr is treated is identical to x.  (Once we set up the
  translation, there is no difference between Oat globals and locals, except
  how their storage space is initially allocated.)

  %_arr12 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr    ;; (10)
  %_index_ptr14 = getelementptr { i64, [0 x i64] },                
                 { i64, [0 x i64] }* %_arr12, i32 0, i32 1, i32 2  ;; (11)
  %_index15 = load i64, i64* %_index_ptr14                         ;; (12)
  ret i64 %_index15

  (10) just like for %_x9, load the array value that is stored in @arr 

  (11)  calculate the array index offset

  (12) load the array value at the index 

*)

(* Global initialized arrays:

  There is another wrinkle: To compile global initialized arrays like in the
  globals4.oat, it is helpful to do a bitcast once at the global scope to
  convert the "precise type" required by the LLVM initializer to the actual
  translation type (which sets the array length to 0).  So for globals4.oat,
  the arr global would compile to (something like):

  @arr = global { i64, [0 x i64] }* bitcast 
           ({ i64, [4 x i64] }* @_global_arr5 to { i64, [0 x i64] }* ) 
  @_global_arr5 = global { i64, [4 x i64] } 
                  { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 4 ] }

*) 



(* Some useful helper functions *)

(* Generate a fresh temporary identifier. Since OAT identifiers cannot begin
   with an underscore, these should not clash with any source variables *)
let gensym : string -> string =
  let c = ref 0 in
  fun (s:string) -> incr c; Printf.sprintf "_%s%d" s (!c)

(* Amount of space an Oat type takes when stored in the satck, in bytes.  
   Note that since structured values are manipulated by reference, all
   Oat values take 8 bytes on the stack.
*)
let size_oat_ty (t : Ast.ty) = 8L

(* Generate code to allocate a zero-initialized array of source type TRef (RArray t) of the
   given size. Note "size" is an operand whose value can be computed at
   runtime *)
let oat_alloc_array (t:Ast.ty) (size:Ll.operand) : Ll.ty * operand * stream =
  let ans_id, arr_id = gensym "array", gensym "raw_array" in
  let ans_ty = cmp_ty @@ TRef (RArray t) in
  let arr_ty = Ptr I64 in
  ans_ty, Id ans_id, lift
    [ arr_id, Call(arr_ty, Gid "oat_alloc_array", [I64, size])
    ; ans_id, Bitcast(arr_ty, Id arr_id, ans_ty) ]

(* Compiles an expression exp in context c, outputting the Ll operand that will
   recieve the value of the expression, and the stream of instructions
   implementing the expression. 

   Tips:
   - use the provided cmp_ty function!

   - string literals (CStr s) should be hoisted. You'll need to make sure
     either that the resulting gid has type (Ptr I8), or, if the gid has type
     [n x i8] (where n is the length of the string), convert the gid to a 
     (Ptr I8), e.g., by using getelementptr.

   - use the provided "oat_alloc_array" function to implement literal arrays
     (CArr) and the (NewArr) expressions
*)


let store_e ty_array ty op i (op_e, _) =
    let var = gensym "" in
    let gep = I (var, (Gep (ty, op, [(Const 0L); (Const 1L); (Const (Int64.of_int i))]))) in
    let store = I ("", (Store (cmp_ty ty_array, op_e, Id var))) in
    [store] @ [gep]

let cmp_id (c:Ctxt.t) (x:Ast.id) : Ll.ty * Ll.operand * stream = 
  let (ty, op) = Ctxt.lookup x c in
  let uid = gensym "" in
  begin match ty with
    |Ptr (Array (n, ty)) -> Ptr (ty), Id(uid), [I(uid, Bitcast (Ptr (Array (n, ty)), op, Ptr(ty)))]
    |Ptr (ty) -> ty, Id(uid), [I(uid, Load(Ptr(ty), op))]
    |_ -> invalid_arg "invalid id"
  end

let cmp_cstr (s:string) : Ll.ty * Ll.operand * stream = 
  let ty = Ptr I8 in
  let gid = gensym "" in
  let uid = gensym "" in
  ty, Id uid, [G(gid, (Array(1 + String.length s, I8), GString s));
  I(uid, (Bitcast(Ptr (Array(1 + (String.length s), I8)), Gid gid, ty)))]
let cmp_cint (i:int64) : Ll.ty * Ll.operand * stream = 
  I64, Const i, []

let cmp_cbool (b:bool) : Ll.ty * Ll.operand * stream = 
  I1, Const (if b then 1L else 0L), []
  
let cmp_cnull (r:Ast.rty) : Ll.ty * Ll.operand * stream =
  cmp_ty (Ast.TRef r), Null, []

let rec cmp_exp (c:Ctxt.t) (exp:Ast.exp node) : Ll.ty * Ll.operand * stream =
  begin match exp.elt with
    |CNull ty -> cmp_cnull ty
    |CBool b -> cmp_cbool b
    |CInt x -> cmp_cint x
    |CStr s -> cmp_cstr s
    |CArr (ty_array, e_array) -> cmp_carr ty_array e_array c
    |NewArr (ty_array, e) -> cmp_newarr ty_array e c      
    |Id x -> cmp_id c x
    |Index (ar_e, id_e) -> cmp_index_value c ar_e id_e
    |Bop (op, x1, x2) -> cmp_bop c op x1 x2 
    |Uop (op, x) -> cmp_uop c op x 
    |Call (f, args) -> cmp_call c f args
  end

and cmp_exp_as (c:Ctxt.t) (ty:Ll.ty) (exp:Ast.exp node) : Ll.operand * stream =
    let (original_ty, op, stream) = cmp_exp c exp in
    if original_ty = ty then op, stream
    else let var = gensym "" in
      Id var, [I (var, Bitcast (original_ty, op, ty))] @ stream

and cmp_carr (ty_array:Ast.ty) (e_array : (Ast.exp node list)) (c:Ctxt.t) : Ll.ty * Ll.operand * stream = 
  let second = fun (_, x) -> x in
  let length = Int64.of_int (List.length e_array) in
  let (ty_alloc, op_alloc, stream_alloc) = oat_alloc_array ty_array (Const length) in
  let e_array_ll = List.map (cmp_exp_as c (cmp_ty ty_array)) e_array in
  let e_array_stream = List.flatten @@ List.map second e_array_ll in
  let store_stream = List.flatten @@ List.mapi (store_e ty_array ty_alloc op_alloc) e_array_ll in
  ty_alloc, op_alloc, store_stream @ e_array_stream @ stream_alloc

and cmp_newarr (ty_array:Ast.ty) (e : Ast.exp Ast.node) (c:Ctxt.t) : Ll.ty * Ll.operand * stream = 
  let (ty_size, op_size, stream_size) = cmp_exp c e in
  let (ty, op, stream) = oat_alloc_array ty_array op_size in
  ty, op, stream @ stream_size

and cmp_index_value (c:Ctxt.t) (ar_e:Ast.exp node) (id_e:Ast.exp node) : Ll.ty * Ll.operand * stream = 
  let (ar_ty, ar_op, ar_stream) = cmp_exp c ar_e in
  let (id_ty, id_op, id_stream) = cmp_exp c id_e in
  begin match ar_ty with
    |Ptr (Struct [_; Array (_, ty)]) ->
      let var = gensym "" in
      let target = gensym "" in
      let id = gensym "" in
      let cast = I (id, (Bitcast(ar_ty, ar_op, Ptr I64))) in
      let gep = I (var, (Gep (ar_ty, ar_op, [Const 0L; Const 1L; id_op]))) in
      let load = I (target, (Load (Ptr ty, Id var))) in
      ty, Id target, [load] @ [gep] @ [cast] @ id_stream @ ar_stream
    |_ -> invalid_arg "invalid array type"
  end

and cmp_bop (c:Ctxt.t) (op:Ast.binop) (x1:Ast.exp node) (x2:Ast.exp node) : Ll.ty * Ll.operand * stream =
  let (ty1, op1, s1) = cmp_exp c x1 in
  let (ty2, op2, s2) = cmp_exp c x2 in
  let var = (gensym "") in
  begin match op with
    |Add -> I64, Id var, [I (var, (Binop (Add, I64, op1, op2)))] @ s2 @ s1
    |Sub -> I64, Id var, [I (var, (Binop (Sub, I64, op1, op2)))] @ s2 @ s1
    |Mul -> I64, Id var, [I (var, (Binop (Mul, I64, op1, op2)))] @ s2 @ s1
    |Eq -> I1, Id var, [I (var, (Icmp (Eq, I64, op1, op2)))] @ s2 @ s1
    |Neq -> I1, Id var, [I (var, (Icmp (Ne, I64, op1, op2)))] @ s2 @ s1
    |Lt -> I1, Id var, [I (var, (Icmp (Slt, I64, op1, op2)))] @ s2 @ s1
    |Lte -> I1, Id var, [I (var, (Icmp (Sle, I64, op1, op2)))] @ s2 @ s1
    |Gt -> I1, Id var, [I (var, (Icmp (Sgt, I64, op1, op2)))] @ s2 @ s1
    |Gte -> I1, Id var, [I (var, (Icmp (Sge, I64, op1, op2)))] @ s2 @ s1
    |And -> I1, Id var, [I (var, (Binop (And, I1, op1, op2)))] @ s2 @ s1
    |Or -> I1, Id var, [I (var, (Binop (Or, I1, op1, op2)))] @ s2 @ s1
    |IAnd -> I64, Id var, [I (var, (Binop (And, I64, op1, op2)))] @ s2 @ s1
    |IOr -> I64, Id var, [I (var, (Binop (Or, I64, op1, op2)))] @ s2 @ s1
    |Shl -> I64, Id var, [I (var, (Binop (Shl, I64, op1, op2)))] @ s2 @ s1
    |Shr -> I64, Id var, [I (var, (Binop (Lshr, I64, op1, op2)))] @ s2 @ s1
    |Sar -> I64, Id var, [I (var, (Binop (Ashr, I64, op1, op2)))] @ s2 @ s1
  end

and cmp_uop (c:Ctxt.t) (op:Ast.unop) (x:Ast.exp node) : Ll.ty * Ll.operand * stream =
  let (ty, op1, s) = cmp_exp c x in
  let var = (gensym "") in
  begin match op with
    |Neg -> I64, Id var, [I (var, (Binop (Mul, I64, op1, Const (Int64.neg 1L))))] @ s
    |Lognot -> I1, Id var, [I (var, (Binop (Xor, I1, op1, Const (Int64.one))))] @ s
    |Bitnot -> I64, Id var, [I (var, (Binop (Xor, I64, op1, Const (Int64.minus_one))))] @ s
  end

and cmp_call (c:Ctxt.t) (f:Ast.exp node) (args:Ast.exp node list) : Ll.ty * Ll.operand * stream =
  let f = begin match f.elt with
  |Id x -> x
  |_ -> invalid_arg "wrong operand for call"
  end in
  let (ty, op) = Ctxt.lookup_function f c in
  let g = fun (argsll, stream1) (arg, ty) ->
  let (oparg, streamarg) = cmp_exp_as c ty arg in
  argsll @ [(ty, oparg)], stream1 @ streamarg in

  begin match ty with
  |Ptr Fun (arg_types, ret_type) ->
  let (args, stream) = List.fold_left g ([], []) (List.combine args arg_types) in
  let var = gensym "" in
  ret_type, Id var, [I (var, (Call (ret_type, op, args)))] @ stream
  |_ -> invalid_arg "wrong type for call"
  end
(* Compile a statement in context c with return typ rt. Return a new context, 
   possibly extended with new local bindings, and the instruction stream
   implementing the statement.

   Left-hand-sides of assignment statements must either be OAT identifiers,
   or an index into some arbitrary expression of array type. Otherwise, the
   program is not well-formed and your compiler may throw an error.

   Tips:
   - for local variable declarations, you will need to emit Allocas in the
     entry block of the current function using the E() constructor.

   - don't forget to add a bindings to the context for local variable 
     declarations
   
   - you can avoid some work by translating For loops to the corresponding
     While loop, building the AST and recursively calling cmp_stmt

   - you might find it helpful to reuse the code you wrote for the Call
     expression to implement the SCall statement

   - compiling the left-hand-side of an assignment is almost exactly like
     compiling the Id or Index expression. Instead of loading the resulting
     pointer, you just need to store to it!

 *)


let rec cmp_stmt (c:Ctxt.t) (rt:Ll.ty) (stmt:Ast.stmt node) : Ctxt.t * stream =
  let make_stmts return_type (c, stream) stmt : (Ctxt.t * stream) =
    let (c, s) = cmp_stmt c return_type stmt in
    c, s @ stream in
  begin match stmt.elt with
    |Ret x -> cmp_ret c x
    |Decl (id, e) -> cmp_decl c (id,e)
    |If (e, s1, s2) -> cmp_if c rt e s1 s2
    |While (e, s) -> cmp_while c rt e s
    |Assn (le, re) -> cmp_assn c le re
    |For (vdecls, e, inc, s) -> cmp_for c rt vdecls e inc s
    |SCall (f, args) -> cmp_scall c f args
  end

and cmp_while (c:Ctxt.t) (rt:Ll.ty) (e:Ast.exp node) (s:Ast.stmt node list) : Ctxt.t * stream = 
  let make_stmts return_type (c, stream) stmt : (Ctxt.t * stream) =
    let (c, s) = cmp_stmt c return_type stmt in
    c, s @ stream in
  let (ty, op, stream) = cmp_exp c e in
  let cnd_lbl = gensym "cnd" in
  let end_lbl = gensym "end" in
  let loop_lbl = gensym "loop" in
  let (c, stream1) = List.fold_left (make_stmts rt) (c, []) s in
  c, [L end_lbl] @
      [T (Br cnd_lbl)] @ stream1 @ [L loop_lbl] @
      [T (Cbr (op, loop_lbl, end_lbl))] @ stream @ [L cnd_lbl] @
      [T (Br cnd_lbl)]


and cmp_ret (c:Ctxt.t)(x:Ast.exp node option) : Ctxt.t * stream = 
  begin match x with
    |Some e ->
      let (ty, op, stream) = cmp_exp c e in
      (c, T(Ret (ty, Some op)) :: stream)
    |None -> c, [T(Ret (Void, None))]
  end

and cmp_decl (c:Ctxt.t) ((id,e):Ast.vdecl): Ctxt.t * stream = 
  let (ty, op, stream) = cmp_exp c e in
  let uid = gensym "" in
  Ctxt.add c id (Ptr ty, Id uid),
  [I ("", (Store (ty, op, (Id uid))))] @ [E (uid, (Alloca ty))] @ stream


and cmp_assn (c:Ctxt.t) (le:Ast.exp node) (re:Ast.exp node): Ctxt.t * stream = 
  let (tyr, opr, streamr) = cmp_exp c re in
    begin match le.elt with
      |Id id ->
        let (tyl, opl) = Ctxt.lookup id c in
        c, [I ("", Store (tyr, opr, opl))] @ streamr
      |Index (ar_e, id_e) ->
        let (ar_ty, ar_op, ar_stream) = cmp_exp c ar_e in
        let (id_ty, id_op, id_stream) = cmp_exp c id_e in
        begin match ar_ty with
          |Ptr (Struct [_; Array (len, ty)]) ->
            let var = gensym "" in
            let gep = I (var, (Gep (ar_ty, ar_op, [Const 0L; Const 1L; id_op]))) in
            let store = I ("", (Store (tyr, opr, Id var))) in
            c, [store] @ [gep] @ id_stream @ ar_stream @ streamr
          |_ -> invalid_arg "invalid arr type"
        end
      |_ -> invalid_arg "invalid lhs ass"
    end

and cmp_for (c:Ctxt.t) (rt:Ll.ty) (vdecls:Ast.vdecl list) (e:Ast.exp node option) (inc:Ast.stmt node option) (s:Ast.stmt node list) : Ctxt.t * stream = 
  let f = fun decl -> no_loc (Decl decl) in
    let decls = List.map f vdecls in
    let cnd = begin match e with
      |Some x -> x
      |_ -> no_loc (CBool true)
    end in
    let inc = begin match inc with
      |Some x -> [x]
      |_ -> []
    end in
    let (c,stream3)   = cmp_block c rt (decls @ [no_loc (While (cnd, s @ inc))]) in
    c, stream3

and cmp_scall (c:Ctxt.t) (f:Ast.exp node) (args:Ast.exp node list) : Ctxt.t * stream = 
  let e = no_loc (Call (f, args)) in
  let (ty, op, stream) = cmp_exp c e in
  c, stream

and cmp_if (c:Ctxt.t) (rt:Ll.ty)(e:Ast.exp node) (s1:Ast.stmt node list) (s2:Ast.stmt node list) : Ctxt.t * stream = 
  let make_stmts return_type (c, stream) stmt : (Ctxt.t * stream) =
    let (c, s) = cmp_stmt c return_type stmt in
    c, s @ stream in
  let (ty, op, stream) = cmp_exp c e in
  let if_lbl = gensym "if" in
  let else_lbl = gensym "else" in
  let end_lbl = gensym "end" in
  let (c, stream1) = List.fold_left (make_stmts rt) (c, []) s1 in
  let (c, stream2) = List.fold_left (make_stmts rt) (c, []) s2 in
  begin match s2 with
    |[] ->
      c, stream2 @ [L else_lbl] @
          [T (Br else_lbl)] @ stream1 @ [L if_lbl] @
          [T (Cbr (op, if_lbl, else_lbl))] @ stream
    |_ ->
      c, [L end_lbl] @
          [T (Br end_lbl)] @ stream2 @ [L else_lbl] @
          [T (Br end_lbl)] @ stream1 @ [L if_lbl] @
          [T (Cbr (op, if_lbl, else_lbl))] @ stream
  end



(* Compile a series of statements *)
and cmp_block (c:Ctxt.t) (rt:Ll.ty) (stmts:Ast.block) : Ctxt.t * stream =
  List.fold_left (fun (c, code) s -> 
      let c, stmt_code = cmp_stmt c rt s in
      c, code >@ stmt_code
    ) (c,[]) stmts



(* Adds each function identifer to the context at an
   appropriately translated type.  

   NOTE: The Gid of a function is just its source name
*)
let cmp_function_ctxt (c:Ctxt.t) (p:Ast.prog) : Ctxt.t =
    List.fold_left (fun c -> function
      | Ast.Gfdecl { elt={ frtyp; fname; args } } ->
         let ft = TRef (RFun (List.map fst args, frtyp)) in
         Ctxt.add c fname (cmp_ty ft, Gid fname)
      | _ -> c
    ) c p 

(* Populate a context with bindings for global variables 
   mapping OAT identifiers to LLVMlite gids and their types.

   Only a small subset of OAT expressions can be used as global initializers
   in well-formed programs. (The constructors starting with C). 
*)



let cmp_global_ctxt (c:Ctxt.t) (p:Ast.prog) : Ctxt.t =
  let f acc x = match x with
    | Gvdecl g ->
      let name = g.elt.name in
      let init = g.elt.init.elt in
      let bin =
        begin match init with
          | CNull ty -> (Ptr (cmp_rty ty), Gid name)
          | CBool b -> (Ptr I1, Gid name)
          | CInt i -> (Ptr I64, Gid name)
          | CStr s -> (Ptr (Array(1 + (String.length s), I8)), Gid name)
          | CArr (ty, e) -> (Ptr (Ptr (Struct [I64; Array((List.length e), (cmp_ty ty))])), Gid name)
          | _ -> failwith "cmp_global_ctxt: invalid type of global initializer"
        end
      in
      Ctxt.add acc name bin
    | _ -> acc
  in
  List.fold_left f c p
    

(* Compile a function declaration in global context c. Return the LLVMlite cfg
   and a list of global declarations containing the string literals appearing
   in the function.

   You will need to
   1. Allocate stack space for the function parameters using Alloca
   2. Store the function arguments in their corresponding alloca'd stack slot
   3. Extend the context with bindings for function variables
   4. Compile the body of the function using cmp_block
   5. Use cfg_of_stream to produce a LLVMlite cfg from 
 *)

 let cmp_fdecl (c:Ctxt.t) (f:Ast.fdecl node) : Ll.fdecl * (Ll.gid * Ll.gdecl) list =
  let f = f.elt in
  let f_ty = cmp_fty ((List.map fst f.args), f.frtyp) in
  let f_param = List.map snd f.args in
  let g = fun (c, acc) (ty, id) ->
    let uid = gensym id in
    let ty = cmp_ty ty in
    let c = Ctxt.add c id (Ptr ty, Id uid) in
    c, acc @ [E("", Store (ty, (Id id), (Id uid)))] @ [E(uid, Alloca ty)]
  in
  let (c, prologue) = List.fold_left g (c, []) f.args in
(*let body = cmp_block c (cmp_ret_ty f.frtyp) f.body in*)
  let (ll_body_c, ll_body_str) = cmp_block c (cmp_ret_ty f.frtyp) f.body in
  let f_cfg, gs = cfg_of_stream @@ prologue @ ll_body_str in
  {f_ty; f_param; f_cfg}, gs


(* Compile a global initializer, returning the resulting LLVMlite global
   declaration, and a list of additional global declarations.

   Tips:
   - Only CNull, CBool, CInt, CStr, and CArr can appear as global initializers
     in well-formed OAT programs. Your compiler may throw an error for the other
     cases

   - OAT arrays are always handled via pointers. A global array of arrays will
     be an array of pointers to arrays emitted as additional global declarations.
*)

let rec cmp_gexp c (e:Ast.exp node) : Ll.gdecl * (Ll.gid * Ll.gdecl) list =
  begin match e.elt with 
  | CNull ty -> ((cmp_ty (Ast.TRef ty), Ll.GNull),[])
  | CBool b -> (I1, GInt (if b then 1L else 0L)), []
  | CInt i -> (I64, GInt i), []
  | CStr s -> (Array(1 + (String.length s), I8), GString s), []
  | CArr (ty, e) ->
    let arr_ty = Array(List.length e, cmp_ty ty) in
    let e_ll = List.map (cmp_gexp c) e in
    let id = gensym "garr" in
    let gdecls = List.map (fun (x, _) -> x) e_ll in
    let gdecls_list = List.flatten @@ List.map (fun (_, x) -> x) e_ll in
    let len = List.length e_ll in
    (Ptr (Struct [I64; arr_ty]), GGid id),
    (id, (Struct [I64; arr_ty], GStruct ([I64, GInt (Int64.of_int len); Array (len, cmp_ty ty), GArray(gdecls)])))::gdecls_list
  | _ -> failwith "cmp_gexp: Error for other cases"
  end


(* Oat internals function context ------------------------------------------- *)
let internals = [
    "oat_alloc_array",         Ll.Fun ([I64], Ptr I64)
  ]

(* Oat builtin function context --------------------------------------------- *)
let builtins =
  [ "array_of_string",  cmp_rty @@ RFun ([TRef RString], RetVal (TRef(RArray TInt)))
  ; "string_of_array",  cmp_rty @@ RFun ([TRef(RArray TInt)], RetVal (TRef RString))
  ; "length_of_string", cmp_rty @@ RFun ([TRef RString],  RetVal TInt)
  ; "string_of_int",    cmp_rty @@ RFun ([TInt],  RetVal (TRef RString))
  ; "string_cat",       cmp_rty @@ RFun ([TRef RString; TRef RString], RetVal (TRef RString))
  ; "print_string",     cmp_rty @@ RFun ([TRef RString],  RetVoid)
  ; "print_int",        cmp_rty @@ RFun ([TInt],  RetVoid)
  ; "print_bool",       cmp_rty @@ RFun ([TBool], RetVoid)
  ]

(* Compile a OAT program to LLVMlite *)
let cmp_prog (p:Ast.prog) : Ll.prog =
  (* add built-in functions to context *)
  let init_ctxt = 
    List.fold_left (fun c (i, t) -> Ctxt.add c i (Ll.Ptr t, Gid i))
      Ctxt.empty builtins
  in
  let fc = cmp_function_ctxt init_ctxt p in

  (* build global variable context *)
  let c = cmp_global_ctxt fc p in

  (* compile functions and global variables *)
  let fdecls, gdecls = 
    List.fold_right (fun d (fs, gs) ->
        match d with
        | Ast.Gvdecl { elt=gd } -> 
           let ll_gd, gs' = cmp_gexp c gd.init in
           (fs, (gd.name, ll_gd)::gs' @ gs)
        | Ast.Gfdecl fd ->
           let fdecl, gs' = cmp_fdecl c fd in
           (fd.elt.fname,fdecl)::fs, gs' @ gs
      ) p ([], [])
  in

  (* gather external declarations *)
  let edecls = internals @ builtins in
  { tdecls = []; gdecls; fdecls; edecls }
