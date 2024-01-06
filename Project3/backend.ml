(* ll ir compilation -------------------------------------------------------- *)

open Ll
open X86
exception TypeError

(* Overview ----------------------------------------------------------------- *)

(* We suggest that you spend some time understanding this entire file and
   how it fits with the compiler pipeline before making changes.  The suggested
   plan for implementing the compiler is provided on the project web page.
*)


(* helpers ------------------------------------------------------------------ *)

(* Map LL comparison operations to X86 condition codes *)
let compile_cnd = function
  | Ll.Eq  -> X86.Eq
  | Ll.Ne  -> X86.Neq
  | Ll.Slt -> X86.Lt
  | Ll.Sle -> X86.Le
  | Ll.Sgt -> X86.Gt
  | Ll.Sge -> X86.Ge


(* locals and layout -------------------------------------------------------- *)

(* One key problem in compiling the LLVM IR is how to map its local
   identifiers to X86 abstractions.  For the best performance, one
   would want to use an X86 register for each LLVM %uid.  However,
   since there are an unlimited number of %uids and only 16 registers,
   doing so effectively is quite difficult.  We will see later in the
   course how _register allocation_ algorithms can do a good job at
   this.

   A simpler, but less performant, implementation is to map each %uid
   in the LLVM source to a _stack slot_ (i.e. a region of memory in
   the stack).  Since LLVMlite, unlike real LLVM, permits %uid locals
   to store only 64-bit data, each stack slot is an 8-byte value.

   [ NOTE: For compiling LLVMlite, even i1 data values should be
   represented as a 8-byte quad. This greatly simplifies code
   generation. ]

   We call the datastructure that maps each %uid to its stack slot a
   'stack layout'.  A stack layout maps a uid to an X86 operand for
   accessing its contents.  For this compilation strategy, the operand
   is always an offset from %rbp (in bytes) that represents a storage slot in
   the stack.
*)

type layout = (uid * X86.operand) list

(* A context contains the global type declarations (needed for getelementptr
   calculations) and a stack layout. *)
type ctxt = { tdecls : (tid * ty) list
            ; layout : layout
            }

(* useful for looking up items in tdecls or layouts *)
let lookup m x = List.assoc x m


(* compiling operands  ------------------------------------------------------ *)

(* LLVM IR instructions support several kinds of operands.

   LL local %uids live in stack slots, whereas global ids live at
   global addresses that must be computed from a label.  Constants are
   immediately available, and the operand Null is the 64-bit 0 value.

     NOTE: two important facts about global identifiers:

     (1) You should use (Platform.mangle gid) to obtain a string
     suitable for naming a global label on your platform (OS X expects
     "_main" while linux expects "main").

     (2) 64-bit assembly labels are not allowed as immediate operands.
     That is, the X86 code: movq _gid %rax which looks like it should
     put the address denoted by _gid into %rax is not allowed.
     Instead, you need to compute an %rip-relative address using the
     leaq instruction:   leaq _gid(%rip).

   One strategy for compiling instruction operands is to use a
   designated register (or registers) for holding the values being
   manipulated by the LLVM IR instruction. You might find it useful to
   implement the following helper function, whose job is to generate
   the X86 instruction that moves an LLVM operand into a designated
   destination (usually a register).
*)
let compile_operand (ctxt:ctxt) (dest:X86.operand) : Ll.operand -> ins = function
  | Null -> Movq, [Imm(Lit 0L); dest]
  | Const x -> Movq, [Imm(Lit x); dest]
  | Gid gid -> Leaq, [Ind3(Lbl (Platform.mangle gid), Rip); dest]
  | Id uid -> Movq, [lookup ctxt.layout uid; dest]

  let move_args ctxt (length: int)(i: int) (arg: Ll.operand) : ins list =
    let offset = 8 * ((List.length ctxt.layout) + 1) in
    begin match i with
      |0 -> [(compile_operand ctxt (Reg Rdi)) arg]
      |1 -> [(compile_operand ctxt (Reg Rsi)) arg]
      |2 -> [(compile_operand ctxt (Reg Rdx)) arg]
      |3 -> [(compile_operand ctxt (Reg Rcx)) arg]
      |4 -> [(compile_operand ctxt (Reg R08)) arg]
      |5 -> [(compile_operand ctxt (Reg R09)) arg]
      |n -> [(compile_operand ctxt (Reg R15)) arg] @
            [(Movq, [Reg R15; Ind3 (Lit (Int64.of_int ((i - 6) * 8)), Rsp)])]
    end
          


(*type ins = opcode * operand list

type opcode = Movq | Pushq | Popq
            | Leaq

type operand = Imm of imm           (* immediate *)
            | Reg of reg            (* register *)
            | Ind1 of imm           (* indirect: displacement *)
            | Ind2 of reg           (* indirect: (%reg) *)
            | Ind3 of (imm * reg)   (* indirect: displacement(%reg) *)
*)


(* compiling call  ---------------------------------------------------------- *)

(* You will probably find it helpful to implement a helper function that
   generates code for the LLVM IR call instruction.

   The code you generate should follow the x64 System V AMD64 ABI
   calling conventions, which places the first six 64-bit (or smaller)
   values in registers and pushes the rest onto the stack.  Note that,
   since all LLVM IR operands are 64-bit values, the first six
   operands will always be placed in registers.  (See the notes about
   compiling fdecl below.)

   [ NOTE: It is the caller's responsibility to clean up arguments
   pushed onto the stack, so you must free the stack space after the
   call returns. ]

   [ NOTE: Don't forget to preserve caller-save registers (only if
   needed). ]
*)


let compile_call ctxt fop args: X86.ins list = 
  let op = match fop with typ, op -> op in
  let factor = if(((List.length args) - 6) < 0) then 0L else (Int64.of_int (((List.length args) - 6) * 8)) in
  [(Subq, [Imm (Lit factor); Reg Rsp])] @
  List.concat (List.mapi (move_args ctxt (List.length args)) args) @
  [(compile_operand ctxt (Reg R15)) op] @
  [Callq, [Reg R15]]



  (*  compile_call ctxt (typ, op) (List.map snd args) @  *)

(* compiling getelementptr (gep)  ------------------------------------------- *)

(* The getelementptr instruction computes an address by indexing into
   a datastructure, following a path of offsets.  It computes the
   address based on the size of the data, which is dictated by the
   data's type.

   To compile getelementptr, you must generate x86 code that performs
   the appropriate arithmetic calculations.
*)

(* [size_ty] maps an LLVMlite type to a size in bytes.
    (needed for getelementptr)

   - the size of a struct is the sum of the sizes of each component
   - the size of an array of t's with n elements is n * the size of t
   - all pointers, I1, and I64 are 8 bytes
   - the size of a named type is the size of its definition

   - Void, i8, and functions have undefined sizes according to LLVMlite.
     Your function should simply return 0 in those cases
*)
let rec size_ty (tdecls:(tid * ty) list) (t:Ll.ty) : int =
  match t with
    | Struct tys -> List.fold_left (fun acc x -> acc + (size_ty tdecls x)) 0 tys
    | Array (n,ty) -> n * (size_ty tdecls ty)
    | I1 | I64 | Ptr _ -> 8
    | Namedt tid -> size_ty tdecls (lookup tdecls tid)
    | Void | I8 | Fun _ -> 0



(* Generates code that computes a pointer value.

   1. op must be of pointer type: t*

   2. the value of op is the base address of the calculation

   3. the first index in the path is treated as the index into an array
     of elements of type t located at the base address

   4. subsequent indices are interpreted according to the type t:

     - if t is a struct, the index must be a constant n and it
       picks out the n'th element of the struct. [ NOTE: the offset
       within the struct of the n'th element is determined by the
       sizes of the types of the previous elements ]

     - if t is an array, the index can be any operand, and its
       value determines the offset within the array.

     - if t is any other type, the path is invalid

   5. if the index is valid, the remainder of the path is computed as
      in (4), but relative to the type f the sub-element picked out
      by the path so far
*)

(*
  check op -> pointer type!
*)

let compile_gep (ctxt:ctxt) (op : Ll.ty * Ll.operand) (path: Ll.operand list) : ins list =
  let open Asm in
  let base = compile_operand ctxt (Reg Rcx) (snd op) in
  let offset = compile_operand ctxt (Reg R10) (List.hd path) in
  let path = List.tl path in (*remove first element from path*)

  let gep_array ctxt ty op insn : (Ll.ty * ins list) =
    let ins = compile_operand ctxt (Reg R10) op ::
    [Imulq, [~$(size_ty ctxt.tdecls ty); Reg R10]
    ; Addq, [Reg R10; Reg Rcx]]
    in
    (ty, insn @ ins)
  in

  let rec struct_size ctxt tys offset : int =
    match (tys, offset) with
      | (_, 0) -> 0
      | ([], n) -> failwith "struct_size: invalid offset"
      | (t::ts, n) -> (size_ty ctxt.tdecls t) + (struct_size ctxt ts (n-1))
  in

  let gep_struct ctxt tys op insn : (Ll.ty * ins list) = 
    let offset = match op with
      | Const x -> Int64.to_int x
      | _ -> invalid_arg "gep_struct: operand must be of type const"
    in
    let ty = List.nth tys offset in
    let ins = [Addq, [~$(struct_size ctxt tys offset); Reg Rcx]] in
    (ty, insn @ ins)
  in

  let gep_namedt ctxt tid op insn : (Ll.ty * ins list) = 
    let t = lookup ctxt.tdecls tid in
    match t with 
      | Struct tys -> gep_struct ctxt tys op insn
      | Array (n, ty) -> gep_array ctxt ty op insn
      | _ -> invalid_arg "gep_namedt: must be of type Struct or Array"
  in

  let f = fun (t, insn) op -> match t with
  | Struct tys -> gep_struct ctxt tys op insn
  | Array (n, ty) -> gep_array ctxt ty op insn
  | Namedt tid -> gep_namedt ctxt tid op insn
  | _ -> invalid_arg "compile_gep: must be of type Struct, Array or Namedt"
  in

  let t = match (fst op) with
    | Ptr x -> x
    | _ -> failwith "compile_gep: must have type Ptr _"
  in

  let (_, ins) = List.fold_left f (t, []) path in

  base ::
  offset ::
  [Imulq, [~$(size_ty ctxt.tdecls t); Reg R10]
      ; Addq, [Reg R10; Reg Rcx]] @
  ins


(* compiling instructions  -------------------------------------------------- *)

(* The result of compiling a single LLVM instruction might be many x86
   instructions.  We have not determined the structure of this code
   for you. Some of the instructions require only a couple of assembly
   instructions, while others require more.  We have suggested that
   you need at least compile_operand, compile_call, and compile_gep
   helpers; you may introduce more as you see fit.

   Here are a few notes:

   - Icmp:  the Setb instruction may be of use.  Depending on how you
     compile Cbr, you may want to ensure that the value produced by
     Icmp is exactly 0 or 1.

   - Load & Store: these need to dereference the pointers. Const and
     Null operands aren't valid pointers.  Don't forget to
     Platform.mangle the global identifier.

   - Alloca: needs to return a pointer into the stack

   - Bitcast: does nothing interesting at the assembly level
*)

let check_type (i:insn) : unit =
  match i with
    | Binop (_, ty, _, _) ->
      begin match ty with
        | I64 -> ()
        | _ -> raise TypeError
      end
    | Icmp (_, ty, _, _)
    | Alloca ty
    | Store (ty, _, _) ->
        begin match ty with
          | I1 | I64 | Ptr _ -> ()
          | _ -> raise TypeError
        end
    | Load (ty, op) ->
        begin match ty with
          | Ptr I1 | Ptr I64 | Ptr (Ptr _) -> ()
          | _ -> raise TypeError
        end
    | Call (ty, op, ops) -> ()
    | Bitcast (ty1, op, ty2) -> ()
    | Gep (ty, op, ops) -> ()


   (*
    | Binop of bop * ty * operand * operand
    | Alloca of ty
    | Load of ty * operand
    | Store of ty * operand * operand
    | Icmp of cnd * ty * operand * operand
    | Call of ty * operand * (ty * operand) list
    | Bitcast of ty * operand * ty
    | Gep of ty * operand * operand list 
    *)

let compile_insn_binop ctxt cuid op1 op2 bop = 
  let open Asm in
  (Movq, [Reg Rcx; Reg R14]) ::
  compile_operand ctxt (Reg Rbx) op1 ::
  compile_operand ctxt (Reg Rcx) op2 ::
  begin match bop with
    | Add -> (Addq, [Reg Rcx; Reg Rbx])
    | Sub -> (Subq, [Reg Rcx; Reg Rbx])
    | Mul -> (Imulq, [Reg Rcx; Reg Rbx])
    | Shl -> (Shlq, [Reg Rcx; Reg Rbx])
    | Lshr -> (Shrq, [Reg Rcx; Reg Rbx])
    | Ashr -> (Sarq, [Reg Rcx; Reg Rbx])
    | And -> (Andq, [Reg Rcx; Reg Rbx])
    | Or -> (Orq, [Reg Rcx; Reg Rbx])
    | Xor -> (Xorq, [Reg Rcx; Reg Rbx])
  end
  :: (Movq, [Reg R14; Reg Rcx]) ::
    [Movq, [Reg Rbx; cuid]]

let compile_insn_alloca cuid = 
  let open Asm in
  [Subq, [~$8; Reg Rsp];
  Movq, [Reg Rsp; cuid]]

let compile_insn_load ctxt op1 cuid = 
  let open Asm in
  compile_operand ctxt (Reg Rcx) op1 ::
  [Movq, [Ind2(Rcx); Reg Rbx];
  Movq, [Reg Rbx; cuid]]

let compile_insn_store ctxt op1 op2 = 
  let open Asm in
  compile_operand ctxt (Reg Rbx) op1 ::
  compile_operand ctxt (Reg Rcx) op2 ::
  [Movq, [Reg Rbx; Ind2(Rcx)]]

let compile_insn_icmp ctxt op1 op2 uid cnd = 
  let open Asm in
  compile_operand ctxt (Reg Rbx) op1 ::
  compile_operand ctxt (Reg Rcx) op2 ::
  (Movq, [~$0; Reg Rdx]) ::
  (Cmpq, [Reg Rcx; Reg Rbx]) ::
  (Set (compile_cnd cnd), [Reg Rdx])::
  [Movq, [Reg Rdx; lookup ctxt.layout uid]]

let compile_insn_call ctxt op1 ops cuid ty =
  compile_call ctxt (ty, op1) (List.map snd ops) @
  [Movq, [(Reg Rax); cuid]]

let compile_insn_bitcast ctxt op1 cuid = 
  let open Asm in
  compile_operand ctxt (Reg Rbx) op1 ::
  [Movq, [Reg Rbx; cuid]]

let compile_insn_gep ctxt ty op1 ops cuid =
  let open Asm in 
  compile_gep ctxt (ty,op1) ops @
  [Movq, [Reg Rcx; cuid]]

let compile_insn (ctxt:ctxt) ((uid:uid), (i:Ll.insn)) : X86.ins list =
  check_type i;
  let open Asm in (* if this does not work -> open Asm in *)
  let cuid = lookup ctxt.layout uid in (*cuid = context uid*)
  match i with
  | Binop (bop,ty,op1,op2) -> compile_insn_binop ctxt cuid op1 op2 bop;
  | Alloca ty -> compile_insn_alloca cuid;
  | Load (ty,op1) -> compile_insn_load ctxt op1 cuid;
  | Store (ty,op1,op2) -> compile_insn_store ctxt op1 op2;
  | Icmp (cnd, ty, op1, op2) -> compile_insn_icmp ctxt op1 op2 uid cnd;
  | Call (ty,op1,ops) -> compile_insn_call ctxt op1 ops cuid ty;
  | Bitcast (ty1,op1,ty2) -> compile_insn_bitcast ctxt op1 cuid;
  | Gep (ty,op1,ops) -> compile_insn_gep ctxt ty op1 ops cuid




(* compiling terminators  --------------------------------------------------- *)

(* prefix the function name [fn] to a label to ensure that the X86 labels are 
   globally unique . *)
let mk_lbl (fn:string) (l:string) = fn ^ "." ^ l

(* Compile block terminators is not too difficult:

  - Ret should properly exit the function: freeing stack space,
    restoring the value of %rbp, and putting the return value (if
    any) in %rax.

  - Br should jump

  - Cbr branch should treat its operand as a boolean conditional

  [fn] - the name of the function containing this terminator
*)
let function_exit : ins list = [
  (Movq, [Reg Rbp; Reg Rsp]);
  (Popq, [Reg Rbp]);
  (Retq, [])]


let compile_terminator (fn:string) (ctxt:ctxt) (t:Ll.terminator) : ins list =
  begin match t with
    |Ret (ty, None) -> function_exit
    |Ret (ty, Some x) -> ((compile_operand ctxt (Reg Rax)) x) :: function_exit
    |Br lbl -> [(Jmp, [Imm (Lbl (mk_lbl fn lbl))])]
    |Cbr (op, lbl1, lbl2) -> 
    [((compile_operand ctxt (Reg R11)) op)
    ;(Cmpq, [Imm (Lit 1L); Reg R11])
    ;(J Eq, [Imm (Lbl (mk_lbl fn lbl1))])
    ;(Jmp, [Imm (Lbl (mk_lbl fn lbl2))])
    ]
  end


(* compiling blocks --------------------------------------------------------- *)

(* We have left this helper function here for you to complete. 
  [fn] - the name of the function containing this block
  [ctxt] - the current context
  [blk]  - LLVM IR code for the block
*)
let rec compile_instruction_list (ctxt:ctxt) (instr: (uid * insn) list) (result:ins list) : ins list =
  begin match instr with
    |[] -> result
    |r::rs -> let u_id (u, _) = u in
    let instr (_, i) = i in
    compile_instruction_list (ctxt:ctxt) rs (result @ (compile_insn ctxt (u_id r, instr r)))
  end

let compile_block (fn:string) (ctxt:ctxt) (blk:Ll.block) : ins list =
  let terminator (_, t) = t in
  (compile_instruction_list ctxt blk.insns []) @ (compile_terminator fn ctxt (terminator blk.term))

let compile_lbl_block fn lbl ctxt blk : elem =
  Asm.text (mk_lbl fn lbl) (compile_block fn ctxt blk)



(* compile_fdecl ------------------------------------------------------------ *)


(* This helper function computes the location of the nth incoming
  function argument: either in a register or relative to %rbp,
  according to the calling conventions.  You might find it useful for
  compile_fdecl.

  [ NOTE: the first six arguments are numbered 0 .. 5 ]
*)

let arg_loc (n : int) : operand =
  begin match n with
    |0 -> Reg Rdi
    |1 -> Reg Rsi
    |2 -> Reg Rdx
    |3 -> Reg Rcx
    |4 -> Reg R08
    |5 -> Reg R09
    |_ -> Ind3 (Lit (Int64.of_int ((n - 5) * 8)), Rbp)
  end

(* We suggest that you create a helper function that computes the
  stack layout for a given function declaration.

  - each function argument should be copied into a stack slot
  - in this (inefficient) compilation strategy, each local id
    is also stored as a stack slot.
  - see the discussion about locals

*)

let rec block_to_uid (bl : (uid * insn) list) : uid list =
  begin match bl with
    |[] -> []
    |(id, _) :: instr -> id :: (block_to_uid instr)
  end

let rec lbled_blocks_to_uid (lbled_blocks : (lbl * block) list) : uid list = 
    begin match lbled_blocks with
      |[] -> []
      |(_, b):: bs -> (block_to_uid b.insns) @ (lbled_blocks_to_uid bs)
    end

let rec uid_to_layout (args : uid list) (index : int) : layout = 
  begin match args with
    |[] -> []
    |arg :: args -> (arg, (Ind3 (Lit (Int64.of_int (index * (-8))), Rbp))) :: (uid_to_layout args (index + 1))
  end

let cfg_to_uid ((block, lbled_blocks) : cfg) : uid list = (block_to_uid block.insns) @ (lbled_blocks_to_uid lbled_blocks)

let stack_layout (args : uid list) ((block, lbled_blocks) : cfg) : layout = 
  uid_to_layout (args @ (block_to_uid block.insns) @ (lbled_blocks_to_uid lbled_blocks)) 1
  

(* The code for the entry-point of a function must do several things:

  - since our simple compiler maps local %uids to stack slots,
    compiling the control-flow-graph body of an fdecl requires us to
    compute the layout (see the discussion of locals and layout)

  - the function code should also comply with the calling
    conventions, typically by moving arguments out of the parameter
    registers (or stack slots) into local storage space.  For our
    simple compilation strategy, that local storage space should be
    in the stack. (So the function parameters can also be accounted
    for in the layout.)

  - the function entry code should allocate the stack storage needed
    to hold all of the local stack slots.
*)
(* place the arguments on their stack slot *)
let rec arg_init (n:int) (param:uid list) (l:layout) (result:ins list) : ins list=
  begin match param with
    |[] -> List.rev result
    |p::ps -> arg_init (n+1) ps l ((Movq, [arg_loc n; (lookup l p)]) :: result)
  end

let rec compile_block_list (name:string) (blocks:(lbl * block) list) (ctxt:ctxt) (result:prog): prog = 
  begin match blocks with
    |[] -> result
    |b::bs ->
    let label (lbl, _) = lbl in
    let block (_, bl) = bl in
    compile_block_list name bs ctxt ((compile_lbl_block name (label b) ctxt (block b)) :: result)
  end

let compile_fdecl (tdecls:(tid * ty) list) (name:string) ({ f_ty; f_param; f_cfg }:fdecl) : prog =
  (* get number of uid's to determine the size of the stack frame *)
  (* compute new stack pointer (Subq Stackframesize Rsp)*)
  (* create a layout *)
  (* move arguments to the right place of the stack *)
  (* create a context *)
  let function_stack_layout = (stack_layout f_param f_cfg) in
  let function_context = {tdecls = tdecls; layout = function_stack_layout} in
  let init_code = [(Pushq, [Reg Rbp]); 
  (Movq, [Reg Rsp; Reg Rbp]); 
  (Subq, [Imm (Lit (Int64.of_int ((List.length function_stack_layout) * 8))); Reg Rsp])
  ] in
  let arg_init_code = arg_init 0 f_param function_stack_layout [] in
  let entry_b (b, _) = b in
  let blocks (_, b) = b in
  let global_elem = Asm.gtext (Platform.mangle name) in
  let entry_elem = (init_code @ arg_init_code @ (compile_block name function_context (entry_b f_cfg))) in
  let block_elem = compile_block_list name (blocks f_cfg) function_context [] in
   (global_elem @@ entry_elem) :: block_elem


  


  (* Idea make local ocaml variables for prog-fields and compute in the end *)
  (* each element is a block *)




(* compile_gdecl ------------------------------------------------------------ *)
(* Compile a global value into an X86 global data declaration and map
  a global uid to its associated X86 label.
*)
let rec compile_ginit : ginit -> X86.data list = function
  | GNull     -> [Quad (Lit 0L)]
  | GGid gid  -> [Quad (Lbl (Platform.mangle gid))]
  | GInt c    -> [Quad (Lit c)]
  | GString s -> [Asciz s]
  | GArray gs | GStruct gs -> List.map compile_gdecl gs |> List.flatten
  | GBitcast (t1,g,t2) -> compile_ginit g

and compile_gdecl (_, g) = compile_ginit g


(* compile_prog ------------------------------------------------------------- *)
let compile_prog {tdecls; gdecls; fdecls} : X86.prog =
  let g = fun (lbl, gdecl) -> Asm.data (Platform.mangle lbl) (compile_gdecl gdecl) in
  let f = fun (name, fdecl) -> compile_fdecl tdecls name fdecl in
  (List.map g gdecls) @ (List.map f fdecls |> List.flatten)