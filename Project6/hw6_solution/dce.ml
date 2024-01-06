(** Dead Code Elimination  *)
open Ll
open Datastructures


(* expose a top-level analysis operation ------------------------------------ *)
(* TASK: This function should optimize a block by removing dead instructions
   - lb: a function from uids to the live-OUT set at the
     corresponding program point
   - ab: the alias map flowing IN to each program point in the block
   - b: the current ll block

   Note:
     Call instructions are never considered to be dead (they might produce
     side effects)

     Store instructions are not dead if the pointer written to is live _or_
     if some alias of that pointer is live.

     Other instructions are dead if the value they compute is not live.

   Hint: Consider using List.filter
 *)
 let dce_block (lb:uid -> Liveness.Fact.t) 
 (ab:uid -> Alias.fact)
 (b:Ll.block) : Ll.block =
let instructions = List.filter (fun (u, i) ->
  begin match i with
    |Store (_, _, op) ->
      begin match op with
        |Gid x |Id x -> 
          let live_opt = UidS.find_opt x (lb u) in
          let alias_opt = UidM.find_opt x (ab u) in
          begin match live_opt, alias_opt with
            |Some a, Some b -> 
              begin match b with
                |Alias.SymPtr.Unique -> true
                |Alias.SymPtr.MayAlias -> true
                |_ -> false
              end
            |_, _ -> false
          end
        |_ -> invalid_arg "operand must be uid"
      end
    |Call _ -> true
    |_ -> 
      let live_opt = UidS.find_opt u (lb u) in
      begin match live_opt with
        |None -> false
        |Some _ -> true
      end
  end
  ) b.insns in
{insns = instructions; term = b.term}

let run (lg:Liveness.Graph.t) (ag:Alias.Graph.t) (cfg:Cfg.t) : Cfg.t =

  LblS.fold (fun l cfg ->
    let b = Cfg.block cfg l in

    (* compute liveness at each program point for the block *)
    let lb = Liveness.Graph.uid_out lg l in

    (* compute aliases at each program point for the block *)
    let ab = Alias.Graph.uid_in ag l in

    (* compute optimized block *)
    let b' = dce_block lb ab b in
    Cfg.add_block l b' cfg
  ) (Cfg.nodes cfg) cfg
