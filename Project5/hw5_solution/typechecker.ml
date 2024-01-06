open Ast
open Astlib
open Tctxt

(* Error Reporting ---------------------------------------------------------- *)
(* NOTE: Use type_error to report error messages for ill-typed programs. *)

exception TypeError of string

let type_error (l : 'a node) err =
  let (_, (s, e), _) = l.loc in
  raise (TypeError (Printf.sprintf "[%d, %d] %s" s e err))


(* initial context: G0 ------------------------------------------------------ *)
(* The Oat types of the Oat built-in functions *)
let builtins =
  [ "array_of_string",  ([TRef RString],  RetVal (TRef(RArray TInt)))
  ; "string_of_array",  ([TRef(RArray TInt)], RetVal (TRef RString))
  ; "length_of_string", ([TRef RString],  RetVal TInt)
  ; "string_of_int",    ([TInt], RetVal (TRef RString))
  ; "string_cat",       ([TRef RString; TRef RString], RetVal (TRef RString))
  ; "print_string",     ([TRef RString],  RetVoid)
  ; "print_int",        ([TInt], RetVoid)
  ; "print_bool",       ([TBool], RetVoid)
  ]

(* binary operation types --------------------------------------------------- *)
let typ_of_binop : Ast.binop -> Ast.ty * Ast.ty * Ast.ty = function
  | Add | Mul | Sub | Shl | Shr | Sar | IAnd | IOr -> (TInt, TInt, TInt)
  | Lt | Lte | Gt | Gte -> (TInt, TInt, TBool)
  | And | Or -> (TBool, TBool, TBool)
  | Eq | Neq -> failwith "typ_of_binop called on polymorphic == or !="

(* unary operation types ---------------------------------------------------- *)
let typ_of_unop : Ast.unop -> Ast.ty * Ast.ty = function
  | Neg | Bitnot -> (TInt, TInt)
  | Lognot       -> (TBool, TBool)

(* subtyping ---------------------------------------------------------------- *)
(* Decides whether H |- t1 <: t2
   - assumes that H contains the declarations of all the possible struct types

   - you will want to introduce addition (possibly mutually recursive)
      helper functions to implement the different judgments of the subtyping
      relation. We have included a template for subtype_ref to get you started.
      (Don't forget about OCaml's 'and' keyword.)
*)
(* Colin Solution *)
let rec subtype (c : Tctxt.t) (t1 : Ast.ty) (t2 : Ast.ty) : bool =
  begin match (t1, t2) with
    |(TInt, TInt) -> true
    |(TBool, TBool) -> true
    |(TNullRef rt1, TNullRef rt2) -> subtype_ref c rt1 rt2
    |(TRef rt1, TRef rt2) -> subtype_ref c rt1 rt2
    |(TRef rt1, TNullRef rt2) -> subtype_ref c rt1 rt2
    |(_, _) -> false
  end

(* Decides whether H |-r ref1 <: ref2 *)
and subtype_ref (c : Tctxt.t) (t1 : Ast.rty) (t2 : Ast.rty) : bool =
  begin match (t1, t2) with
    |(RString, RString) -> true
    |(RArray at1, RArray at2) -> if at1 = at2 then true else false
    |(RStruct id1, RStruct id2) -> subtype_struct c id1 id2
    |(RFun (args1, ret1), RFun (args2, ret2)) -> 
    if(List.length args1 == List.length args2) then
      (subtype_args c args1 args2) && (subtype_rt c ret1 ret2)
    else false
    |(_, _) -> false
  end

and subtype_rt (c : Tctxt.t) (rt1 : Ast.ret_ty) (rt2 : Ast.ret_ty) : bool =
  begin match (rt1, rt2) with
    |(RetVoid, RetVoid) -> true
    |(RetVal t1, RetVal t2) -> subtype c t1 t2
    |(_, _) -> false
  end

and subtype_args (c : Tctxt.t) (args1 : Ast.ty list) (args2 : Ast.ty list) : bool =
  begin match (args1, args2) with
    |([], []) -> true
    |((a1::as1), (a2::as2)) -> if (subtype c a2 a1) then (subtype_args c as1 as2) else false
    |(_, _) -> failwith "FATAL ERROR: arg lists for subtyping not same lenght but should be"
  end

and subtype_struct (c : Tctxt.t) (id1 : Ast.id) (id2 : Ast.id) : bool = 
  let s1 = Tctxt.lookup_struct_option id1 c in
  let s2 = Tctxt.lookup_struct_option id2 c in
  begin match (s1, s2) with
    |(Some x1, Some x2) -> sublist x2 x1
    |(_, _) -> false
  end 

and sublist xs ys =
  begin match xs, ys with
    |[], ys -> true
    |xs, [] -> false
    |x::xs, y::ys -> if x = y then sublist xs ys else false
  end

(* Colin Solution End *)


(* well-formed types -------------------------------------------------------- *)
(* Implement a (set of) functions that check that types are well formed according
   to the H |- t and related inference rules

   - the function should succeed by returning () if the type is well-formed
      according to the rules

   - the function should fail using the "type_error" helper function if the
      type is

   - l is just an ast node that provides source location information for
      generating error messages (it's only needed for the type_error generation)

   - tc contains the structure definition context
*)
(* Colin Solution *)
let rec typecheck_ty (l : 'a Ast.node) (tc : Tctxt.t) (t : Ast.ty) : unit =
  begin match t with
    |TBool -> ()
    |TInt -> ()
    |TRef rt -> typecheck_ref l tc rt
    |TNullRef rt -> typecheck_ref l tc rt
  end

and typecheck_ref (l : 'a Ast.node) (tc : Tctxt.t) (t : Ast.rty) : unit =
  begin match t with
    |RString -> ()
    |RArray t -> typecheck_ty l tc t
    |RStruct id -> 
      begin match (lookup_struct_option id tc) with
        |Some s -> ()
        |None -> type_error l "struct type is not in context"
      end
    |RFun (args, ret) -> (List.iter (typecheck_ty l tc) args); (typecheck_rty l tc ret)
  end

and typecheck_rty (l : 'a Ast.node) (tc : Tctxt.t) (t : Ast.ret_ty) : unit =
  begin match t with
    |RetVoid -> ()
    |RetVal t -> typecheck_ty l tc t
  end
(* Colin Solution End *)

(* typechecking expressions ------------------------------------------------- *)
(* Typechecks an expression in the typing context c, returns the type of the
   expression.  This function should implement the inference rules given in the
   oad.pdf specification.  There, they are written:

       H; G; L |- exp : t

   See tctxt.ml for the implementation of the context c, which represents the
   four typing contexts: H - for structure definitions G - for global
   identifiers L - for local identifiers

   Returns the (most precise) type for the expression, if it is type correct
   according to the inference rules.

   Uses the type_error function to indicate a (useful!) error message if the
   expression is not type correct.  The exact wording of the error message is
   not important, but the fact that the error is raised, is important.  (Our
   tests also do not check the location information associated with the error.)

   Notes: - Structure values permit the programmer to write the fields in any
   order (compared with the structure definition).  This means that, given the
   declaration struct T { a:int; b:int; c:int } The expression new T {b=3; c=4;
   a=1} is well typed.  (You should sort the fields to compare them.)

*)
(* Colin Solution *)
let fst (a, _) = a

let snd (_, a) = a

let rec typecheck_exp (c : Tctxt.t) (e : Ast.exp node) : Ast.ty =
  begin match e.elt with
    |CNull rt -> (typecheck_ref e c rt); TNullRef rt
    |CBool _ -> TBool
    |CInt _ -> TInt
    |CStr _ -> TRef RString
    |Id i -> typecheck_id c i e
    |CArr (t, elements) -> (typecheck_ty e c t);
    (carr_subtype_aux c t (List.map (typecheck_exp c) elements) e);
    TRef (RArray t)
    |NewArr (ty, length, id, el) -> typecheck_newarr c ty length id el e
    |Index (arr_exp, index_exp) -> typecheck_index c arr_exp index_exp e
    |Length exp -> 
      begin match typecheck_exp c exp with
        |TRef (RArray ty) -> TInt
        |_ -> type_error e "LENGTH: expression is not an array" 
      end
    |CStruct (id, fields) -> typecheck_cstruct c id fields e
    |Proj (exp, id) -> typecheck_proj c exp id e
    |Call (exp, args) -> typecheck_call c exp args e
    |Bop (op, e1, e2) -> typecheck_binop c op e1 e2 e
    |Uop (op, exp) -> typecheck_unop c op exp e
  end

and typecheck_unop (c : Tctxt.t) (op : Ast.unop) (e1 : Ast.exp node) (exp : Ast.exp node) : Ast.ty =
  let t1 = typecheck_exp c e1 in
  let ty1, tyret = typ_of_unop op in
  if(t1 == ty1) then tyret else type_error exp "UNOP: wrong argument type"

and typecheck_binop (c : Tctxt.t) (op : Ast.binop) (e1 : Ast.exp node) (e2 : Ast.exp node) (exp : Ast.exp node) : Ast.ty = 
  let t1 = typecheck_exp c e1 in
  let t2 = typecheck_exp c e2 in
  begin match op with
    |Eq |Neq -> 
      if ((subtype c t1 t2) && (subtype c t2 t1)) then TBool else type_error exp "BINOP: EQ / NEQ type error"
    |_ ->
    let ty1, ty2, tyret = typ_of_binop op in
    if(ty1 == t1 && ty2 == t2) then tyret else type_error exp "BINOP: wrong argument types"
  end

and typecheck_call (c : Tctxt.t) (e1 : Ast.exp node) (args : Ast.exp node list) (exp : Ast.exp node) : Ast.ty = 
  begin match (typecheck_exp c e1) with
    |TRef (RFun (ar, RetVal ret)) -> 
      let args_ty = List.map (typecheck_exp c) args in
      if ((List.length args_ty == List.length ar) && (List.for_all2 (subtype c) args_ty ar)) then ret else (type_error exp "CALL: wrong argument types")
    |_ -> type_error exp "CALL: expression is not a function"
  end

and typecheck_proj (c : Tctxt.t) (stru : Ast.exp node) (id : Ast.id) (exp : Ast.exp node) : Ast.ty =
  begin match (typecheck_exp c stru) with
    |TRef (RStruct name) -> 
    begin match (lookup_field_option name id c) with
      |Some t -> t
      |None -> type_error exp "PROJ: field not in declared in context"
    end
    |_ -> type_error exp "PROJ: expression is not a struct"
  end

and typecheck_cstruct (c : Tctxt.t) (id : Ast.id) (fields : (Ast.id * Ast.exp node) list) (exp : Ast.exp node) : Ast.ty = 
  begin match lookup_struct_option id c with
    |Some s_fields -> 
    (*type of 's' (Ast.id * Ast.field list) list *)
    if (List.length s_fields == List.length fields) then
      let field_ids = (List.map (fst) fields) in
      let field_exps_ty = List.map (typecheck_exp c) (List.map (snd) fields) in
      let ctxt_field_ty = get_field_ty id field_ids c exp in
      if ((List.length field_exps_ty == List.length ctxt_field_ty) && 
      (List.for_all2 (subtype c) field_exps_ty ctxt_field_ty)) then TRef (RStruct id)
      else type_error exp "CSTRUCT: field does not have valid type"
    else type_error exp "CSTRUCT: invalid number of fields"
    |None -> type_error exp "CSTRUCT: struct id is not in context"
  end

and get_field_ty (id : Ast.id) (fields : Ast.id list) (c : Tctxt.t) (exp : Ast.exp node): Ast.ty list = 
  begin match fields with
    |[] -> []
    |i :: ids -> 
    begin match (lookup_field_option id i c) with
      |Some t -> t :: (get_field_ty id ids c exp)
      |None -> type_error exp "CSTRUCT: field is not declared in context"
    end
  end


and typecheck_index (c : Tctxt.t) (arr : Ast.exp node) (index : Ast.exp node) (exp : Ast.exp node) : Ast.ty = 
  let arr_ty = typecheck_exp c arr in
  let index_ty = typecheck_exp c index in
  begin match arr_ty, index_ty with
    |(TRef (RArray t), TInt) -> t
    |(_, TInt) -> type_error exp "INDEX: id is not array type"
    |(TRef (RArray t), _) -> type_error exp "INDEX: index is not integer type"
    |(_, _) ->  type_error exp "INDEX: id and index have incorrect type"
  end

 
and typecheck_newarr (c : Tctxt.t) (ty : Ast.ty) (e1 : Ast.exp node) (id : Ast.id) (e2 : Ast.exp node) (exp : Ast.exp node) : Ast.ty =
  (typecheck_ty exp c ty);
  begin match lookup_local_option id c with
    |Some _ -> type_error exp ("NEWARR: Id " ^ id ^ " is already defined in local")
    |None -> 
    let ty_e1 = typecheck_exp c e1 in
    let new_c = add_local c id TInt in
    let b_e2 = subtype new_c (typecheck_exp new_c e2) ty in
    begin match ty_e1, b_e2 with
      |TInt, true -> TRef (RArray ty)
      |TInt, false -> type_error exp "NEWARR: element has not the correct type"
      |_, true -> type_error exp "NEWARR: length does not have integer type"
      |_, _ -> type_error exp "NEWARR: both element and length have incorrect type"
    end
  end


and carr_subtype_aux (c : Tctxt.t) (ty : Ast.ty) (elements : Ast.ty list) (exp : Ast.exp node) : unit  = 
  begin match elements with
    |[] -> ()
    |e::es -> if (subtype c e ty) then 
      (carr_subtype_aux c ty es exp) 
    else type_error exp ("CARR: array element has not correct type")
  end

and typecheck_id (c : Tctxt.t) (id : Ast.id) (e : Ast.exp node): Ast.ty = 
  begin match (lookup_local_option id c) with
    |Some lt -> lt
    |None -> 
      begin match lookup_global_option id c with
        |Some gt -> gt
        |None -> type_error e ("ID: index " ^ id ^ " not found in context (not defined)")
      end
    end

(* Colin Solution End*)
(* statements --------------------------------------------------------------- *)

(* Typecheck a statement
   This function should implement the statment typechecking rules from oat.pdf.

   Inputs:
   - tc: the type context
   - s: the statement node
   - to_ret: the desired return type (from the function declaration)

   Returns:
   - the new type context (which includes newly declared variables in scope
       after this statement
   - A boolean indicating the return behavior of a statement:
        false:  might not return
        true: definitely returns

        in the branching statements, both branches must definitely return

        Intuitively: if one of the two branches of a conditional does not
        contain a return statement, then the entier conditional statement might
        not return.

        looping constructs never definitely return

   Uses the type_error function to indicate a (useful!) error message if the
   statement is not type correct.  The exact wording of the error message is
   not important, but the fact that the error is raised, is important.  (Our
   tests also do not check the location information associated with the error.)

   - You will probably find it convenient to add a helper function that implements the
     block typecheck rules.
*)
(* Colin Solution *)
let rec typecheck_stmt (tc : Tctxt.t) (s:Ast.stmt node) (to_ret:ret_ty) : Tctxt.t * bool =
  begin match s.elt with
    |Assn (lhs, rhs) -> typecheck_assn tc lhs rhs s
    |Decl decl -> typecheck_decl tc decl s
    |Ret exp -> typecheck_ret tc exp to_ret s
    |SCall (exp, args) -> typecheck_scall tc exp args s
    |If (b, br1, br2) -> typecheck_if tc b br1 br2 to_ret s
    |Cast (r, id, exp, blk1, blk2) -> typecheck_cast tc r id exp blk1 blk2 to_ret s
    |For (decls, test, update, blk) -> typecheck_for tc decls test update blk to_ret s
    |While (test, blk) -> typecheck_while tc test blk to_ret s
    |_ -> failwith "statement not yet implemented"
  end

and typecheck_while (tc : Tctxt.t) (test : Ast.exp node) (blk : Ast.stmt node list) (to_ret : ret_ty) (s : Ast.stmt node) : Tctxt.t * bool =
  let _ = begin match (typecheck_exp tc test) with
    |TBool -> ()
    |_ -> type_error s "WHILE: Test expression is not a bool"
  end in
  let _ = typecheck_block tc blk to_ret in
  (tc, false)

and typecheck_for (tc : Tctxt.t) (decls : Ast.vdecl list) (test : Ast.exp node option) (update : Ast.stmt node option) (blk : Ast.stmt node list) (to_ret : ret_ty) (s : Ast.stmt node) : Tctxt.t * bool =
  let vdecls_c = List.fold_left (fun c (id, e) ->
    begin match (lookup_local_option id c) with
      |Some _ -> type_error s "FOR: variable already declared"
      |None ->
      let ty = typecheck_exp c e in
      add_local c id ty
    end
  ) tc decls in
  let _ =
    begin match test with
      |Some e -> 
        begin match (typecheck_exp vdecls_c e) with
          |TBool -> ()
          |_ -> type_error s "FOR: Test expression is not a bool"
        end
      |None -> ()
    end in
  let _ = 
    begin match update with
      |Some u -> 
        let (_, r) = typecheck_stmt vdecls_c u to_ret in
        if r then type_error s "FOR: udate has unallowed return statement"
      |None -> ()
    end in
  let _ = typecheck_block vdecls_c blk to_ret in
  (tc, false)

and typecheck_cast (tc : Tctxt.t) (r : rty) (id : Ast.id) (exp : Ast.exp node) (blk1 : Ast.stmt node list) (blk2 : Ast.stmt node list) (to_ret : ret_ty) (s : Ast.stmt node) : Tctxt.t * bool =
  begin match (typecheck_exp tc exp) with
    |TNullRef rty ->
      if (subtype_ref tc rty r) then
        let c = add_local tc id (TRef r) in
        let (_, b1) = typecheck_block c blk1 to_ret in
        let (_, b2) = typecheck_block tc blk2 to_ret in
        (tc, b1 && b2)
      else type_error s "CAST: not the correct reference type"
    |_ -> type_error s "CAST: not a reference type"
  end

and typecheck_if (tc : Tctxt.t) (b : Ast.exp node) (br1 : Ast.stmt node list) (br2 : Ast.stmt node list) (to_ret : ret_ty) (s : Ast.stmt node) : Tctxt.t * bool =
  let b_ty = typecheck_exp tc b in
    begin match b_ty with
      |TBool -> 
        let c1, b1 = typecheck_block tc br1 to_ret in
        let c2, b2 = typecheck_block tc br2 to_ret in
        (tc, b1 && b2)
      |_ -> type_error s "IF: test is not of type bool"
    end

and typecheck_scall (tc : Tctxt.t) (f_id : Ast.exp node) (args : Ast.exp node list) (s : Ast.stmt node) : Tctxt.t * bool =
  let f_id_ty = typecheck_exp tc f_id in
  let args_ty1 = 
    begin match f_id_ty with
      |TRef (RFun (a, RetVoid)) -> a
      |_ -> type_error s "SCALL: is not a function identifier"
    end
  in
  let args_ty2 = List.map (typecheck_exp tc) args in
  if ((List.length args_ty1 == List.length args_ty2) && (List.for_all2 (subtype tc) args_ty2 args_ty1)) then
  (tc, false) else type_error s "SCALL: not the right number of arguments or arguments don't match"


and typecheck_ret (tc : Tctxt.t) (exp : Ast.exp node option) (to_ret : ret_ty) (s : Ast.stmt node) : Tctxt.t * bool = 
  let ty =
    begin match exp with
      |Some e -> RetVal (typecheck_exp tc e)
      |None -> RetVoid
    end
  in
  if (subtype_rt tc ty to_ret) then (tc, true) else type_error s "RET: return type not valid"



and typecheck_decl (tc : Tctxt.t) (id, exp : Ast.id * Ast.exp node) (s : Ast.stmt node) : Tctxt.t * bool =
  let _ = 
    begin match lookup_local_option id tc with
      |Some _ -> type_error s "DECL: id is already declared"
      |None -> ()
    end
  in
  let ty = typecheck_exp tc exp in
  let c = add_local tc id ty in
  (c, false)


and typecheck_assn (tc : Tctxt.t) (lhs : Ast.exp node) (rhs : Ast.exp node)  (s : Ast.stmt node) : Tctxt.t * bool =
  let _ = 
    begin match lhs.elt with
      |Id id -> 
        begin match lookup_local_option id tc with
          |Some _ -> ()
          |None ->
            begin match lookup_global_option id tc with
              |Some (TRef (RFun _)) -> type_error s "ASSN: lhs already declared"
              |_ -> ()
            end
        end
      |_ -> ()
    end
  in
  let lhs_ty = typecheck_exp tc lhs in
  let rhs_ty = typecheck_exp tc rhs in
  if (subtype tc rhs_ty lhs_ty) then (tc, false) else type_error rhs "ASSN: rhs is not subtype of lhs"

and typecheck_block (tc : Tctxt.t) (blk : Ast.block) (to_ret : ret_ty) : Tctxt.t * bool =
  begin match blk with
    |[] -> (tc, false)
    |[s] -> typecheck_stmt tc s to_ret
    |s1 :: s2 :: rest ->
      let (c, r) = typecheck_stmt tc s1 to_ret in
      if r then type_error s1 "BLOCK: return statement must be at the end of the block"
      else typecheck_block c (s2 :: rest) to_ret
    end
(* Colin Solution End *)
(* struct type declarations ------------------------------------------------- *)
(* Here is an example of how to implement the TYP_TDECLOK rule, which is
   is needed elswhere in the type system.
*)

(* Helper function to look for duplicate field names *)
let rec check_dups fs =
  match fs with
  | [] -> false
  | h :: t -> (List.exists (fun x -> x.fieldName = h.fieldName) t) || check_dups t

let typecheck_tdecl (tc : Tctxt.t) id fs  (l : 'a Ast.node) : unit =
  if check_dups fs
  then type_error l ("Repeated fields in " ^ id)
  else List.iter (fun f -> typecheck_ty l tc f.ftyp) fs

(* function declarations ---------------------------------------------------- *)
(* typecheck a function declaration
   - extends the local context with the types of the formal parameters to the
      function
   - typechecks the body of the function (passing in the expected return type
   - checks that the function actually returns
*)


(* Colin Solution *)
let typecheck_fdecl (tc : Tctxt.t) (f : Ast.fdecl) (l : 'a Ast.node) : unit =
  let retty = f.frtyp in
  let args = f.args in
  let body = f.body in
  let c = List.fold_left (fun ctxt arg ->
    add_local ctxt (snd arg) (fst arg)
  ) tc args in
  let _, r = typecheck_block c body retty in
  if (not r) then type_error l "FDECL: no return statement"

(* Colin Solution End *)

(* creating the typchecking context ----------------------------------------- *)

(* The following functions correspond to the
   judgments that create the global typechecking context.

   create_struct_ctxt: - adds all the struct types to the struct 'S'
   context (checking to see that there are no duplicate fields

     H |-s prog ==> H'


   create_function_ctxt: - adds the the function identifiers and their
   types to the 'F' context (ensuring that there are no redeclared
   function identifiers)

     H ; G1 |-f prog ==> G2


   create_global_ctxt: - typechecks the global initializers and adds
   their identifiers to the 'G' global context

     H ; G1 |-g prog ==> G2


   NOTE: global initializers may mention function identifiers as
   constants, but can't mention other global values *)

(* Colin Solution *)
let create_struct_ctxt (p:Ast.prog) : Tctxt.t =
  List.fold_left (fun result decl ->
    begin match decl with
      |Gtdecl s ->
        let id = fst s.elt in
        let fields = snd s.elt in
        begin match lookup_struct_option id result with
          |Some _ -> type_error s "STRUCT CTXT: struct is already declared"
          |None -> add_struct result id fields
        end
      |_ -> result
    end
  ) empty p

let create_function_ctxt (tc:Tctxt.t) (p:Ast.prog) : Tctxt.t =
  let g0 = List.fold_left (fun c (id, (tys, rty)) ->
      add_global c id (TRef (RFun(tys, rty)))
    ) tc builtins
  in
  List.fold_left (fun c p ->
      match p with
      | Gfdecl f ->
        let id = f.elt.fname in
        let tys = List.map fst f.elt.args in
        let rty = f.elt.frtyp in
        let ty = TRef (RFun (tys, rty)) in
        begin match lookup_global_option id c with
          | Some _ -> type_error f "Function already defined"
          | None -> add_global c id ty
        end
      | _ -> c
    ) g0 p


let create_global_ctxt (tc:Tctxt.t) (p:Ast.prog) : Tctxt.t =
  List.fold_left (fun result decl ->
    begin match decl with
      |Gvdecl v -> 
        let id = v.elt.name in
        let ty = typecheck_exp tc v.elt.init in
        begin match lookup_global_option id result with
          |Some _ -> type_error v "GLOBAL VARIABLE CTXT: global variable is already declared"
          |None -> add_global result id ty
        end
      |_ -> result
    end
  ) tc p

(* Colin Solution End *)


(* This function implements the |- prog and the H ; G |- prog
   rules of the oat.pdf specification.
*)
let typecheck_program (p:Ast.prog) : unit =
  let sc = create_struct_ctxt p in
  let fc = create_function_ctxt sc p in
  let tc = create_global_ctxt fc p in
  List.iter (fun p ->
      match p with
      | Gfdecl ({elt=f} as l) -> typecheck_fdecl tc f l
      | Gtdecl ({elt=(id, fs)} as l) -> typecheck_tdecl tc id fs l
      | _ -> ()) p
