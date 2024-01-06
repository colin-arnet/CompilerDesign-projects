open Ll
open Datastructures

(* The lattice of symbolic constants ---------------------------------------- *)
module SymConst =
  struct
    type t = NonConst           (* Uid may take on multiple values at runtime *)
           | Const of int64     (* Uid will always evaluate to const i64 or i1 *)
           | UndefConst         (* Uid is not defined at the point *)

    let compare s t =
      match (s, t) with
      | (Const i, Const j) -> Int64.compare i j
      | (NonConst, NonConst) | (UndefConst, UndefConst) -> 0
      | (NonConst, _) | (_, UndefConst) -> 1
      | (UndefConst, _) | (_, NonConst) -> -1

    let to_string : t -> string = function
      | NonConst -> "NonConst"
      | Const i -> Printf.sprintf "Const (%LdL)" i
      | UndefConst -> "UndefConst"

    
  end

(* The analysis computes, at each program point, which UIDs in scope will evaluate 
   to integer constants *)
type fact = SymConst.t UidM.t



(* flow function across Ll instructions ------------------------------------- *)
(* - Uid of a binop or icmp with const arguments is constant-out
   - Uid of a binop or icmp with an UndefConst argument is UndefConst-out
   - Uid of a binop or icmp with an NonConst argument is NonConst-out
   - Uid of stores and void calls are UndefConst-out
   - Uid of all other instructions are NonConst-out
 *)

let interp_bop (op:Ll.bop) (a:int64) (b:int64) : int64 = 
  begin match op with
    |Add -> Int64.add a b
    |Sub -> Int64.sub a b
    |Mul -> Int64.mul a b
    |Shl -> Int64.shift_left a (Int64.to_int b)
    |Lshr -> Int64.shift_right_logical a (Int64.to_int b)
    |Ashr -> Int64.shift_right a (Int64.to_int b)
    |And -> Int64.logand a b
    |Or -> Int64.logor a b
    |Xor -> Int64.logxor a b
  end

let interp_cnd (cnd:Ll.cnd) (a:int64) (b:int64) : int64 =
  begin match cnd with
    |Eq -> if (Int64.equal a b) then 1L else 0L
    |Ne -> if (Int64.equal a b) then 0L else 1L
    |Slt -> if ((Int64.compare a b) < 0) then 1L else 0L
    |Sgt -> if ((Int64.compare a b) > 0) then 1L else 0L
    |Sle -> if ((Int64.compare a b) <= 0) then 1L else 0L
    |Sge -> if ((Int64.compare a b) >= 0) then 1L else 0L
  end


let insn_flow (u,i:uid * insn) (d:fact) : fact =
  let f = fun op d ->
    begin match op with
      |Null -> SymConst.UndefConst
      |Const x -> SymConst.Const x
      |Id id |Gid id ->
        begin match UidM.mem id d with
          |true -> UidM.find id d
          |false -> SymConst.UndefConst
        end
    end in
  begin match i with
    |Binop (operation, _, op1, op2) ->
      let c1 = f op1 d in
      let c2 = f op2 d in
      let c = begin match (c1, c2) with
        |SymConst.Const x, SymConst.Const y -> SymConst.Const (interp_bop operation x y)
        |SymConst.Const a, SymConst.NonConst ->
          begin match operation, a with
            |Mul, 0L -> SymConst.Const 0L(* multiplication by 0 *)
            |Shl, 0L -> SymConst.Const 0L (* left_shift 0 *)
            |Lshr, 0L -> SymConst.Const 0L (* logical_right_shift 0 *)
            |And, 0L -> SymConst.Const 0L(* and with 0 *)
            |Or, -1L -> SymConst.Const (-1L)(* or with all ones *)
            |_ -> SymConst.NonConst
          end
        |SymConst.NonConst, SymConst.Const a -> 
          begin match operation, a with
            |Mul, 0L -> SymConst.Const 0L(* multiplication by 0 *)
            |And, 0L -> SymConst.Const 0L (* and with 0 *)
            |Or, -1L -> SymConst.Const (-1L) (* or with all ones *)
            |_ -> SymConst.NonConst
          end
        |SymConst.NonConst, SymConst.NonConst ->
          begin match operation with
            |Sub |Xor -> if (op1 = op2) then SymConst.Const 0L else SymConst.NonConst (*sub and xor with same argumentes *)
            |_ -> SymConst.NonConst
          end
        |SymConst.NonConst, _
        |_, SymConst.NonConst -> SymConst.NonConst
        |SymConst.UndefConst, _
        |_, SymConst.UndefConst -> SymConst.UndefConst
      end in
      UidM.add u c d
    |Icmp (cnd, _, x, y) ->
      let x_sym = f x d in
      let y_sym = f y d in
      begin match x_sym, y_sym with
        |SymConst.Const a, SymConst.Const b -> UidM.add u (SymConst.Const (interp_cnd cnd a b)) d
        (*|Some SymConst.Const a, Some SymConst.NonConst ->
          begin match cnd, a with
            |Slt, Int64.max_int -> UidM.add u (SymConst.Const 0L) d
            |Sgt, Int64.min_int -> UidM.add u (SymConst.Const 0L) d
            |Sle, Int64.min_int -> UidM.add u (SymConst.Const 1L) d
            |Sge, Int64.max_int -> UidM.add u (SymConst.Const 1L) d
            |_, _ -> UidM.add u (SymConst.NonConst) d 
          end
        |Some SymConst.NonConst, Some SymConst.Const a ->
          begin match cnd, a with
            |Slt, Int64.min_int -> UidM.add u (SymConst.Const 0L) d
            |Sgt, Int64.max_int -> UidM.add u (SymConst.Const 0L) d
            |Sle, Int64.max_int -> UidM.add u (SymConst.Const 1L) d
            |Sge, Int64.min_int -> UidM.add u (SymConst.Const 1L) d
            |_, _ -> UidM.add u (SymConst.NonConst) d
          end*)
        |SymConst.UndefConst, _ | _, SymConst.UndefConst -> UidM.add u (SymConst.UndefConst) d
        |SymConst.NonConst, _ | _, SymConst.NonConst -> UidM.add u (SymConst.NonConst) d
      end
    |Store _ | Call (Void, _, _) -> UidM.add u (SymConst.UndefConst) d
    |_ -> UidM.add u (SymConst.NonConst) d
  end

(* The flow function across terminators is trivial: they never change const info *)
let terminator_flow (t:terminator) (d:fact) : fact = d
(* module for instantiating the generic framework --------------------------- *)
module Fact =
  struct
    type t = fact
    let forwards = true

    let insn_flow = insn_flow
    let terminator_flow = terminator_flow
    
    let normalize : fact -> fact = 
      UidM.filter (fun _ v -> v != SymConst.UndefConst)

    let compare (d:fact) (e:fact) : int  = 
      UidM.compare SymConst.compare (normalize d) (normalize e)

    let to_string : fact -> string =
      UidM.to_string (fun _ v -> SymConst.to_string v)

    (* The constprop analysis should take the meet over predecessors to compute the
       flow into a node. You may find the UidM.merge function useful *)
    let combine_aux (key:string) (a:SymConst.t) (b:SymConst.t) : SymConst.t option =
      begin match a, b with
        |SymConst.Const x, SymConst.Const y -> if(Int64.equal x y) then (Some (SymConst.Const x)) else (Some (SymConst.UndefConst))
        |SymConst.NonConst, SymConst.NonConst
        |SymConst.NonConst, SymConst.Const _ 
        |SymConst.Const _, SymConst.NonConst -> Some SymConst.NonConst
        |SymConst.UndefConst, SymConst.UndefConst
        |SymConst.UndefConst, SymConst.Const _ 
        |SymConst.Const _, SymConst.UndefConst -> Some SymConst.UndefConst
        |_ -> Some SymConst.UndefConst
      end
    
    let combine_2 (a:fact) (b:fact) : fact =
      UidM.union combine_aux a b 

    let combine (ds:fact list) : fact =
      let result = List.fold_left (
        fun r e ->
          combine_2 r e
      ) UidM.empty ds in
    result
  end

(* instantiate the general framework ---------------------------------------- *)
module Graph = Cfg.AsGraph (Fact)
module Solver = Solver.Make (Fact) (Graph)

(* expose a top-level analysis operation ------------------------------------ *)
let analyze (g:Cfg.t) : Graph.t =
  (* the analysis starts with every node set to bottom (the map of every uid 
     in the function to UndefConst *)
  let init l = UidM.empty in

  (* the flow into the entry node should indicate that any parameter to the
     function is not a constant *)
  let cp_in = List.fold_right 
    (fun (u,_) -> UidM.add u SymConst.NonConst)
    g.Cfg.args UidM.empty 
  in
  let fg = Graph.of_cfg init cp_in g in
  Solver.solve fg


(* run constant propagation on a cfg given analysis results ----------------- *)
(* HINT: your cp_block implementation will probably rely on several helper 
   functions.*)

let binop_identities (bop:Ll.bop) (u:Ll.uid) (i:Ll.insn) (cb:Ll.uid -> Fact.t) (a:Ll.uid) (b:Ll.uid) : (uid * insn) =
  let a_const = UidM.find u (cb a) in
    let b_const = UidM.find u (cb b) in
    begin match bop, a_const, b_const with
      |Add, SymConst.Const 0L, SymConst.NonConst -> (u, Store (I64, Id b, Id u)) (* addition with 0 *)
      |Add, SymConst.NonConst, SymConst.Const 0L -> (u, Store (I64, Id a, Id u)) (* addition with 0 *)
      |Sub, SymConst.Const 0L, SymConst.NonConst -> (u, Store (I64, Id b, Id u)) (* subtraction with 0 *)
      |Sub, SymConst.NonConst, SymConst.Const 0L -> (u, Store (I64, Id a, Id u)) (* subtraction with 0 *)
      |Mul, SymConst.Const 1L, SymConst.NonConst -> (u, Store (I64, Id b, Id u)) (* multiplication with 0 *)
      |Mul, SymConst.NonConst, SymConst.Const 1L -> (u, Store (I64, Id a, Id u)) (* multiplication with 0 *)
      |Shl, SymConst.NonConst, SymConst.Const 0L -> (u, Store (I64, Id a, Id u)) (* left_shift by 0 *)
      |Lshr, SymConst.NonConst, SymConst.Const 0L -> (u, Store (I64, Id a, Id u)) (* logical_right_shift by 0 *)
      |Ashr, SymConst.NonConst, SymConst.Const 0L -> (u, Store (I64, Id a, Id u)) (* arithmetic_right_shift by 0 *)
      |And, SymConst.Const -1L, SymConst.NonConst -> (u, Store (I64, Id b, Id u)) (* and with all ones *)
      |And, SymConst.NonConst, SymConst.Const -1L -> (u, Store (I64, Id a, Id u)) (* and with all ones *)
      |And, SymConst.NonConst, SymConst.NonConst -> if (a = b) then (u, Store (I64, Id a, Id u)) else (u, i) (*and with same arguments *)
      |Or, SymConst.Const 0L, SymConst.NonConst -> (u, Store (I64, Id b, Id u)) (* or with all zeros *)
      |Or, SymConst.NonConst, SymConst.Const 0L -> (u, Store (I64, Id a, Id u)) (* or with all zeros *)
      |Or, SymConst.NonConst, SymConst.NonConst -> if (a = b) then (u, Store (I64, Id a, Id u)) else (u, i) (*or with same arguments *)
      |_ -> u,i
    end
    
let make_new_block (cb: uid->fact) (b:Ll.block) : Ll.block =
  let f = fun op d ->
    begin match op with
      |Null -> SymConst.UndefConst
      |Const x -> SymConst.Const x
      |Id id |Gid id ->
        begin match UidM.mem id d with
          |true -> UidM.find id d
          |false -> SymConst.UndefConst
        end
    end in
  let get_const = fun op fact ->
    let sym = f op fact in
      begin match sym with
        |SymConst.Const x -> Ll.Const x
        |_ -> op
      end in
  let get_insn = fun (uid, insn) ->
    let fact = cb uid in
      begin match insn with
        |Binop (bop, ty, op1, op2) -> uid, Binop (bop, ty, get_const op1 fact, get_const op2 fact)
        |Load (ty, op) -> uid, Load (ty, get_const op fact)
        |Store  (ty, src, dest) -> uid, Store (ty, get_const src fact, get_const dest fact)
        |Icmp (cnd, ty, op1, op2) -> uid, Icmp (cnd, ty, get_const op1 fact, get_const op2 fact)
        |Call (ty, op, args) -> uid, Call (ty, get_const op fact, List.map (fun (ty, op) -> ty, (get_const op fact)) args)
        |Bitcast (ty, op, ty1) -> uid, Bitcast (ty, get_const op fact, ty1)
        |Gep (ty, op, opl) -> uid, Gep (ty, get_const op fact, List.map (fun op1 -> get_const op1 fact) opl)
        |_ -> uid, insn
      end in
  let new_insns = List.map get_insn b.insns in
  let new_term = fun (id, term) ->
    let term_fact = cb id in
      begin match term with
        |Ret (ty, Some op) -> id, Ret (ty, Some (get_const op term_fact))
        |Cbr (op, lbl1, lbl2) -> id, Cbr (get_const op term_fact, lbl1, lbl2)
        |_ -> id, term
      end
    in
  {insns = new_insns; term = (new_term b.term)}

let run (cg:Graph.t) (cfg:Cfg.t) : Cfg.t =
  let open SymConst in
  let cp_block (l:Ll.lbl) (cfg:Cfg.t) : Cfg.t =
  let b = Cfg.block cfg l in
  let cb = Graph.uid_out cg l in
  let new_block = make_new_block cb b in
  Cfg.add_block l new_block cfg
  in


  LblS.fold cp_block (Cfg.nodes cfg) cfg
