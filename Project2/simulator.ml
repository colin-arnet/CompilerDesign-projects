(* X86lite Simulator *)

(* See the documentation in the X86lite specification, available on the 
   course web pages, for a detailed explanation of the instruction
   semantics.
*)

open X86

(* COLIN AREA TEST *)
(* simulator machine state -------------------------------------------------- *)

let mem_bot = 0x400000L          (* lowest valid address *)
let mem_top = 0x410000L          (* one past the last byte in memory *)
let mem_size = Int64.to_int (Int64.sub mem_top mem_bot)
let nregs = 17                   (* including Rip *)
let ins_size = 8L                (* assume we have a 8-byte encoding *)
let exit_addr = 0xfdeadL         (* halt when m.regs(%rip) = exit_addr *)

(* Your simulator should raise this exception if it tries to read from or
   store to an address not within the valid address space. *)
exception X86lite_segfault

(* The simulator memory maps addresses to symbolic bytes.  Symbolic
   bytes are either actual data indicated by the Byte constructor or
   'symbolic instructions' that take up eight bytes for the purposes of
   layout.

   The symbolic bytes abstract away from the details of how
   instructions are represented in memory.  Each instruction takes
   exactly eight consecutive bytes, where the first byte InsB0 stores
   the actual instruction, and the next sevent bytes are InsFrag
   elements, which aren't valid data.

   For example, the two-instruction sequence:
        at&t syntax             ocaml syntax
      movq %rdi, (%rsp)       Movq,  [~%Rdi; Ind2 Rsp]
      decq %rdi               Decq,  [~%Rdi]

   is represented by the following elements of the mem array (starting
   at address 0x400000):

       0x400000 :  InsB0 (Movq,  [~%Rdi; Ind2 Rsp])
       0x400001 :  InsFrag
       0x400002 :  InsFrag
       0x400003 :  InsFrag
       0x400004 :  InsFrag
       0x400005 :  InsFrag
       0x400006 :  InsFrag
       0x400007 :  InsFrag
       0x400008 :  InsB0 (Decq,  [~%Rdi])
       0x40000A :  InsFrag
       0x40000B :  InsFrag
       0x40000C :  InsFrag
       0x40000D :  InsFrag
       0x40000E :  InsFrag
       0x40000F :  InsFrag
       0x400010 :  InsFrag
*)

type sbyte = InsB0 of ins       (* 1st byte of an instruction *)
           | InsFrag            (* 2nd - 8th bytes of an instruction *)
           | Byte of char       (* non-instruction byte *)

(* memory maps addresses to symbolic bytes *)
type mem = sbyte array

(* Flags for condition codes *)
type flags = { mutable fo : bool
             ; mutable fs : bool
             ; mutable fz : bool
             }

(* Register files *)
type regs = int64 array

(* Complete machine state *)
type mach = { flags : flags
            ; regs : regs
            ; mem : mem
            }

(* simulator helper functions ----------------------------------------------- *)

(* The index of a register in the regs array *)
let rind : reg -> int = function
  | Rip -> 16
  | Rax -> 0  | Rbx -> 1  | Rcx -> 2  | Rdx -> 3
  | Rsi -> 4  | Rdi -> 5  | Rbp -> 6  | Rsp -> 7
  | R08 -> 8  | R09 -> 9  | R10 -> 10 | R11 -> 11
  | R12 -> 12 | R13 -> 13 | R14 -> 14 | R15 -> 15

(* Helper functions for reading/writing sbytes *)

(* Convert an int64 to its sbyte representation *)
let sbytes_of_int64 (i:int64) : sbyte list =
  let open Char in 
  let open Int64 in
  List.map (fun n -> Byte (shift_right i n |> logand 0xffL |> to_int |> chr))
           [0; 8; 16; 24; 32; 40; 48; 56]

(* Convert an sbyte representation to an int64 *)
let int64_of_sbytes (bs:sbyte list) : int64 =
  let open Char in
  let open Int64 in
  let f b i = match b with
    | Byte c -> logor (shift_left i 8) (c |> code |> of_int)
    | _ -> 0L
  in
  List.fold_right f bs 0L

(* Convert a string to its sbyte representation *)
let sbytes_of_string (s:string) : sbyte list =
  let rec loop acc = function
    | i when i < 0 -> acc
    | i -> loop (Byte s.[i]::acc) (pred i)
  in
  loop [Byte '\x00'] @@ String.length s - 1

(* Serialize an instruction to sbytes *)
let sbytes_of_ins (op, args:ins) : sbyte list =
  let check = function
    | Imm (Lbl _) | Ind1 (Lbl _) | Ind3 (Lbl _, _) -> 
      invalid_arg "sbytes_of_ins: tried to serialize a label!"
    | o -> ()
  in
  List.iter check args;
  [InsB0 (op, args); InsFrag; InsFrag; InsFrag;
   InsFrag; InsFrag; InsFrag; InsFrag]

(* Serialize a data element to sbytes *)
let sbytes_of_data : data -> sbyte list = function
  | Quad (Lit i) -> sbytes_of_int64 i
  | Asciz s -> sbytes_of_string s
  | Quad (Lbl _) -> invalid_arg "sbytes_of_data: tried to serialize a label!"


(* It might be useful to toggle printing of intermediate states of your 
   simulator. Our implementation uses this mutable flag to turn on/off
   printing.  For instance, you might write something like:

     [if !debug_simulator then print_endline @@ string_of_ins u; ...]

*)
let debug_simulator = ref true

(* Interpret a condition code with respect to the given flags. *)
let interp_cnd {fo; fs; fz} : cnd -> bool = fun x -> 
  begin match x with
    |Eq -> (fz = true)
    |Neq -> (fz = false)
    |Gt -> ((fz = false) && fs = fo)
    |Lt -> (fs <> fo)
    |Ge -> (fs = fo)
    |Le -> ((fs <> fo)|| fz) 
  end

(* Maps an X86lite address into Some OCaml array index,
   or None if the address is not within the legal address space. *)
let map_addr (addr:quad) : int option =
  if((addr >= mem_bot) && (addr <= mem_top)) then
    Some (Int64.to_int(Int64.sub addr mem_bot))
  else
     None


(* Simulates one step of the machine:
    - fetch the instruction at %rip
    - compute the source and/or destination information from the operands
    - simulate the instruction semantics
    - update the registers and/or memory appropriately
    - set the condition flags
*)

(* BEGIN OF OUR WORK FOR THE STEP FUNCTION *)

(* get value from option variable *)
let get_o (input:'a option) : 'a =
  begin match input with
    |None -> raise(Invalid_argument "Option_Get")
    |Some x -> x
  end

(* take sbyte and give out only a pure instruction *)
let sbyte_to_ins (input:sbyte) : ins = 
  begin match input with
    |InsB0 x -> x
    |_ -> raise(Invalid_argument "sbyte_to_ins: input is no instruction")
  end

(* converts an sbyte to instruction *)
let ins_of_sbyte (input:sbyte) : ins =
  begin match input with
    |InsB0 (op, arg) -> (op, arg)
    |_ -> raise(Invalid_argument "not an instruction")
  end


(* put a list of sbyte into memory at a certain index *)
let rec set_in_mem (m:mach) (index:int) (li : sbyte list) : unit = 
  begin match li with
    |[] -> ()
    |l::ls -> (m.mem.(index) <- l); (set_in_mem m (index + 1) ls)
  end

(* get 8 bytes from a certain index *)
let get_in_mem (m:mach) (index:int) : sbyte list =
  let result = Array.sub (m.mem) index 8 in
    Array.to_list result

(* take operand and transform to sbyte list *)
let interp_operand (m:mach) (op:operand) : sbyte list =
  begin match op with
    |Imm (Lit x) -> sbytes_of_int64 x
    |Reg r -> sbytes_of_int64 (m.regs.(rind r))
    |Ind1 (Lit x) -> get_in_mem m (get_o (map_addr x))
    |Ind2 r -> get_in_mem m (get_o (map_addr (m.regs.(rind r))))
    |Ind3 (Lit x, r) -> get_in_mem m (get_o (map_addr (Int64.add x  m.regs.(rind r))))
    |_ -> raise(Invalid_argument "Literal expected but got Label")
  end

(* transform operand to int64 *)
let op_to_int64 (m:mach) (x:operand) : int64 = int64_of_sbytes (interp_operand m x)
 
open Int64_overflow
(* Helper Functions for flag setting *)
let same_sign (x:int64) (y:int64) : bool = 
  if (((x < 0L) && (y < 0L)) || ((x >= 0L) && (y >= 0L))) then true else false

(* Flag setting functions *)
let flag_negq (m:mach) (res:int64) (dest:int64) : unit = 
  (if(dest = Int64.min_int) then m.flags.fo <- true else m.flags.fo <- false);
  (if(res = 0L) then m.flags.fz <- true else m.flags.fz <- false);
  (if(res < 0L) then m.flags.fs <- true else m.flags.fs <- false)

let flag_addq (m:mach) (res:int64) (src:int64) (dest:int64) : unit = 
  (if((same_sign src dest) && (not (same_sign res src))) then m.flags.fo <- true else m.flags.fo <- false);
  (if(res = 0L) then m.flags.fz <- true else m.flags.fz <- false);
  (if(res < 0L) then m.flags.fs <- true else m.flags.fs <- false)

let flag_subq (m:mach) (res:int64) (src:int64) (dest:int64) :unit = 
  (if(((same_sign (Int64.neg src) dest) && ((not (same_sign (Int64.neg src) res)))) || (src = Int64.min_int)) then m.flags.fo <- true else m.flags.fo <- false);
  (if(res = 0L) then m.flags.fz <- true else m.flags.fz <- false);
  (if(res < 0L) then m.flags.fs <- true else m.flags.fs <- false)

let flag_imulq (m:mach) (res:t) : unit = (if (res.overflow) then m.flags.fo <- true else m.flags.fo <- false)

let flag_logic (m:mach) (res:int64) : unit =
  (m.flags.fo <- false);
  (if (res = 0L) then m.flags.fz <- true else m.flags.fz <- false);
  (if (res < 0L) then m.flags.fs <- true else m.flags.fs <- false)

let flag_sarq (m:mach) (res:int64) (amt:int64) : unit = 
  (if(amt <> 0L) then 
    ((if(res = 0L) then m.flags.fz <- true else m.flags.fz <- false); 
    (if(res < 0L) then m.flags.fs <- true else m.flags.fs <- false);
    (if(amt = 1L) then m.flags.fo <- false)))
  
let flag_shlq (m:mach) (res:int64) (amt:int64) (dest:int64) : unit = 
  (if(amt<>0L) then 
    ((if(res = 0L) then m.flags.fz <- true else m.flags.fz <- false);
    (if(res < 0L) then m.flags.fs <-true else m.flags.fs <- false));
    (if(amt = 1L) then (if (((dest >= -9223372036854775808L) && (dest <= -4611686018427387905L)) || ((dest >= 4611686018427387904L) && (dest <= 9223372036854775807L))) then m.flags.fo <- true else m.flags.fo <- false)))

let flag_shrq (m:mach) (res:int64) (amt:int64) (dest:int64) : unit =
  (if(res = 0L) then m.flags.fz <- true else m.flags.fz <- false);
  (if(res < 0L) then m.flags.fs <- true else m.flags.fs <- false);
  (if(amt = 1L) then (if (dest < 0L) then m.flags.fo <- true else m.flags.fo <- false))

(* summarize steps for movq instruction *)
let step_movq (m:mach) (instr:ins) : unit = 
  begin match instr with
    |(Movq, [src; Reg dst]) -> (m.regs.(rind dst) <- (int64_of_sbytes (interp_operand m src)))
    |(Movq, [src; Ind1 (Lit dst)]) -> (set_in_mem m (get_o (map_addr (dst))) (interp_operand m src))
    |(Movq, [src; Ind2 dst]) -> (set_in_mem m (get_o (map_addr (m.regs.(rind dst)))) (interp_operand m src))
    |(Movq, [src; Ind3 (Lit x, dst)]) -> (set_in_mem m (get_o (map_addr (Int64.add x m.regs.(rind dst)))) (interp_operand m src)) 
    |_ -> raise(Invalid_argument "False operand in Movq")
  end

(* summarize steps for pushq instruction *)
let step_pushq (m:mach) (instr:ins) : unit =
  begin match instr with
    |(Pushq, [src]) -> (m.regs.(rind Rsp) <- (Int64.sub m.regs.(rind Rsp) 8L));
    set_in_mem m (get_o (map_addr m.regs.(rind Rsp))) (interp_operand m src)
    |_ -> raise(Invalid_argument "False operand in Pushq")
  end
  

(* summarize steps for popq instruction *)
let step_popq (m:mach) (instr:ins) : unit = 
  begin match instr with
    |(Popq, [Reg dst]) -> (m.regs.(rind dst) <- (int64_of_sbytes (get_in_mem m (get_o (map_addr m.regs.(rind Rsp))))));
    (m.regs.(rind Rsp) <- (Int64.add m.regs.(rind Rsp) 8L))
    |(Popq, [dst]) -> set_in_mem m (get_o (map_addr (int64_of_sbytes (interp_operand m dst)))) (get_in_mem m (get_o (map_addr m.regs.(rind Rsp))));
    (m.regs.(rind Rsp) <- (Int64.add m.regs.(rind Rsp) 8L))
    |_ -> raise(Invalid_argument "False operand in Popq")
  end

(* summarize steps for leaq instruction *)
let step_leaq (m:mach) (instr:ins) : unit = 
  begin match instr with
    |(Leaq, [Ind1 src; dst]) -> step_movq m (Movq, [Ind1 src; dst])
    |(Leaq, [Ind2 src; dst]) -> step_movq m (Movq, [Ind2 src; dst])
    |(Leaq, [Ind3 (x, r); dst]) -> step_movq m (Movq, [Ind3 (x, r); dst])
    |_ -> raise(Invalid_argument "False operand in Leaq")
  end

(* summarize steps for incq instruction *)
let step_incq (m:mach) (instr:ins) : unit =
  begin match instr with
    |(Incq, [Imm dest]) -> raise(Invalid_argument "False operand in Incq (immediate)")
    |(Incq, [dest]) -> (flag_addq m (Int64.add (op_to_int64 m dest) 1L) (op_to_int64 m dest) 1L);
    step_movq m (Movq, [Imm (Lit (Int64.add (int64_of_sbytes (interp_operand m dest)) 1L)); dest])
    |_ -> raise(Invalid_argument "False operand in Incq")
  end

(* summarize steps for decq instruction *)
let step_decq (m:mach) (instr:ins) : unit =
  begin match instr with
    |(Decq, [Imm dest]) -> raise(Invalid_argument "False operand in Decq (immediate)")
    |(Decq, [dest]) -> (flag_subq m (Int64.sub (op_to_int64 m dest) 1L) (op_to_int64 m dest) 1L);
    step_movq m (Movq, [Imm (Lit (Int64.sub (int64_of_sbytes (interp_operand m dest)) 1L)); dest])
    |_ -> raise(Invalid_argument "False operand in Decq")
  end

(* summarize steps for negq instruction *)
let step_negq (m:mach) (instr:ins) : unit =
  begin match instr with
    |(Negq, [Imm dest]) -> raise(Invalid_argument "False operand in Negq (immediate)")
    |(Negq, [dest]) -> (flag_negq m (Int64.neg (op_to_int64 m dest)) (op_to_int64 m dest));
                      step_movq m (Movq, [Imm (Lit (Int64.neg (int64_of_sbytes (interp_operand m dest)))); dest])
    |_ -> raise(Invalid_argument "False operand in Negq")
  end

(* summarize steps for notq instruction *)
let step_notq (m:mach) (instr:ins) : unit =
  begin match instr with
    |(Notq, [Imm dest]) -> raise(Invalid_argument "False operand in Decq (immediate)")
    |(Notq, [dest]) -> step_movq m (Movq, [Imm (Lit (Int64.lognot (int64_of_sbytes (interp_operand m dest)))); dest])
    |_ -> raise(Invalid_argument "False operand in Decq")
  end

(* summarize steps for addq instruction *)
let step_addq (m:mach) (instr:ins) : unit = 
  begin match instr with
    |(Addq, [_; Imm dest]) -> raise(Invalid_argument "False operand in Addq (immediate)")
    |(Addq, [src; dest]) -> (flag_addq m (Int64.add (op_to_int64 m src) (op_to_int64 m dest)) (op_to_int64 m src) (op_to_int64 m dest));
    step_movq m (Movq, [Imm (Lit (Int64.add (int64_of_sbytes (interp_operand m src)) (int64_of_sbytes (interp_operand m dest)))); dest])
    |_ -> raise(Invalid_argument "False operand in Addq")
  end

(* summarize steps for subq instruction *)
let step_subq (m:mach) (instr:ins) : unit = 
  begin match instr with
    |(Subq, [_; Imm dest]) -> raise(Invalid_argument "False operand in Subq (immediate)")
    |(Subq, [src; dest]) -> (flag_subq m (Int64.sub (op_to_int64 m dest) (op_to_int64 m src)) (op_to_int64 m src) (op_to_int64 m dest));
    step_movq m (Movq, [Imm (Lit (Int64.sub (int64_of_sbytes (interp_operand m dest)) (int64_of_sbytes (interp_operand m src)))); dest])
    |_ -> raise(Invalid_argument "False operand in Subq")
  end

(* summarize steps for imulq instruction *)
let step_imulq (m:mach) (instr:ins) : unit = 
  begin match instr with
    |(Imulq, [_; Imm dest]) -> raise(Invalid_argument "False operand in Imulq (immediate)")
    |(Imulq, [src; Reg dest]) -> (flag_imulq m (mul (op_to_int64 m src) (op_to_int64 m (Reg dest))));
    step_movq m (Movq, [Imm (Lit (Int64.mul (int64_of_sbytes (interp_operand m src)) (int64_of_sbytes (interp_operand m (Reg dest))))); Reg dest])
    |(Imulq, [src; dest]) -> raise(Invalid_argument "False operand in Imul (dest must be a register)")
    |_ -> raise(Invalid_argument "False operand in Imulq")
  end

(* summarize steps for xorq instruction *)
let step_xorq (m:mach) (instr:ins) : unit = 
  begin match instr with
    |(Xorq, [_; Imm dest]) -> raise(Invalid_argument "False operand in Xorq (immediate)")
    |(Xorq, [src; dest]) -> (flag_logic m (Int64.logxor (op_to_int64 m src) (op_to_int64 m dest)));
    step_movq m (Movq, [Imm (Lit (Int64.logxor (int64_of_sbytes (interp_operand m src)) (int64_of_sbytes (interp_operand m dest)))); dest])
    |_ -> raise(Invalid_argument "False operand in Xorq")
  end

(* summarize steps for orq instruction *)
let step_orq (m:mach) (instr:ins) : unit = 
  begin match instr with
    |(Orq, [_; Imm dest]) -> raise(Invalid_argument "False operand in Orq (immediate)")
    |(Orq, [src; dest]) -> (flag_logic m (Int64.logor (op_to_int64 m src) (op_to_int64 m dest)));
    step_movq m (Movq, [Imm (Lit (Int64.logor (int64_of_sbytes (interp_operand m src)) (int64_of_sbytes (interp_operand m dest)))); dest])
    |_ -> raise(Invalid_argument "False operand in Orq")
  end

(* summarize steps for andq instruction *)
let step_andq (m:mach) (instr:ins) : unit = 
  begin match instr with
    |(Andq, [_; Imm dest]) -> raise(Invalid_argument "False operand in Andq (immediate)")
    |(Andq, [src; dest]) -> (flag_logic m (Int64.logand (op_to_int64 m src) (op_to_int64 m dest)));
    step_movq m (Movq, [Imm (Lit (Int64.logand (int64_of_sbytes (interp_operand m src)) (int64_of_sbytes (interp_operand m dest)))); dest])
    |_ -> raise(Invalid_argument "False operand in Andq")
  end

(* summarize steps for shlq instruction *)
let step_shlq (m:mach) (instr:ins) : unit = 
  begin match instr with
    |(Shlq, [_; Imm dest]) -> raise(Invalid_argument "False operand in Shlq (immediate)")
    |(Shlq, [Imm amt; dest]) -> (flag_shlq m (Int64.shift_left (op_to_int64 m dest) (Int64.to_int (op_to_int64 m (Imm amt)))) (op_to_int64 m (Imm amt)) (op_to_int64 m dest));
    step_movq m (Movq, [Imm (Lit (Int64.shift_left (op_to_int64 m dest) (Int64.to_int (op_to_int64 m (Imm amt))))); dest])
    |(Shlq, [Reg Rcx; dest]) -> (flag_shlq m (Int64.shift_left (op_to_int64 m dest) (Int64.to_int (op_to_int64 m (Reg Rcx)))) (op_to_int64 m (Reg Rcx)) (op_to_int64 m dest));
    step_movq m (Movq, [Imm (Lit (Int64.shift_left (op_to_int64 m dest) (Int64.to_int (op_to_int64 m (Reg Rcx))))); dest])
    |_ -> raise(Invalid_argument "False operand in Shlq")
  end

(* summarize steps for sarq instruction *)
let step_sarq (m:mach) (instr:ins) : unit = 
  begin match instr with
    |(Sarq, [_; Imm dest]) -> raise(Invalid_argument "False operand in Sarq (immediate)")
    |(Sarq, [Imm amt; dest]) -> (flag_sarq m (Int64.shift_right (op_to_int64 m dest) (Int64.to_int (op_to_int64 m (Imm amt)))) (op_to_int64 m (Imm amt)));
    step_movq m (Movq, [Imm (Lit (Int64.shift_right (op_to_int64 m dest) (Int64.to_int (op_to_int64 m (Imm amt))))); dest])
    |(Sarq, [Reg Rcx; dest]) -> (flag_sarq m (Int64.shift_right (op_to_int64 m dest) (Int64.to_int (op_to_int64 m (Reg Rcx)))) (op_to_int64 m (Reg Rcx)));
    step_movq m (Movq, [Imm (Lit (Int64.shift_right (op_to_int64 m dest) (Int64.to_int (op_to_int64 m (Reg Rcx))))); dest])
    |_ -> raise(Invalid_argument "False operand in Sarq")
  end

(* summarize steps for shrq instruction *)
let step_shrq (m:mach) (instr:ins) : unit = 
  begin match instr with
    |(Shrq, [_; Imm dest]) -> raise(Invalid_argument "False operand in Shrq (immediate)")
    |(Shrq, [Imm amt; dest]) -> (flag_shrq m (Int64.shift_right_logical (op_to_int64 m dest) (Int64.to_int (op_to_int64 m (Imm amt)))) (op_to_int64 m (Imm amt)) (op_to_int64 m dest));
    step_movq m (Movq, [Imm (Lit (Int64.shift_right_logical (op_to_int64 m dest) (Int64.to_int (op_to_int64 m (Imm amt))))); dest])
    |(Shrq, [Reg Rcx; dest]) -> (flag_shrq m (Int64.shift_right_logical (op_to_int64 m dest) (Int64.to_int (op_to_int64 m (Reg Rcx)))) (op_to_int64 m (Reg Rcx)) (op_to_int64 m dest));
    step_movq m (Movq, [Imm (Lit (Int64.shift_right_logical (op_to_int64 m dest) (Int64.to_int (op_to_int64 m (Reg Rcx))))); dest])
    |_ -> raise(Invalid_argument "False operand in Shrq")
  end

(* summarize steps for jmp instruction *)
let step_jmp (m:mach) (instr:ins) : unit = 
  begin match instr with
    |(Jmp, [Reg dest]) -> raise(Invalid_argument "False operand Jmp (register)")
    |(Jmp, [dest]) -> m.regs.(rind Rip) <- (int64_of_sbytes (interp_operand m dest))
    |_ -> raise(Invalid_argument "False operand Jmp")
    end

(* next instruction: rip = rip + 8 *)
let to_next_instr (m:mach) : unit = (m.regs.(rind Rip) <- (Int64.add (m.regs.(rind Rip)) 8L))

 (* summarize steps for conditional jmp instruction *) 
 let step_j (m:mach) (instr:ins) : unit = 
  begin match instr with
    |(J cnd, [Reg dest]) -> raise(Invalid_argument "False operand J (register)")
    |(J cnd, [dest]) -> if((interp_cnd m.flags) cnd) then (step_jmp m (Jmp, [dest])) else (to_next_instr m)
    |_ -> raise(Invalid_argument "False operand J")
  end

(* summarize steps for compq instruction *)
let step_cmpq (m:mach) (instr:ins) : unit = 
  begin match instr with
    |(Cmpq, [src1; src2]) -> (flag_subq m (Int64.sub (op_to_int64 m src2) (op_to_int64 m src1)) (op_to_int64 m src1) (op_to_int64 m src2));
    |_ -> raise(Invalid_argument "False operand compq")
  end

(* set last byte of number to a certain value *)
let set_last_byte (dest:int64) (input:int64) : int64 = 
  Int64.add (Int64.sub dest (Int64.rem dest 16L)) input

(* summarize steps for conditional set instruction *)
let step_set (m:mach) (instr:ins) : unit = 
  begin match instr with
    |(Set cnd, [Imm dest]) -> raise(Invalid_argument "False operand set (immediate)")
    |(Set cnd, [dest]) -> if ((interp_cnd m.flags) cnd) then 
    (step_movq m (Movq, [Imm (Lit (set_last_byte (op_to_int64 m dest) 1L)); dest])) else 
    (step_movq m (Movq, [Imm (Lit (set_last_byte (op_to_int64 m dest) 0L)); dest]))
    |_ -> raise(Invalid_argument "False operand set")
  end

(* summarize steps for callq instruction *)
let step_callq (m:mach) (instr:ins) : unit = 
  begin match instr with
    |(Callq, [src]) -> (step_pushq m (Pushq, [Reg Rip]));
                        step_movq m (Movq, [src; Reg Rip])
    |_ -> raise(Invalid_argument "False operand Callq")
  end

(* summarize steps for retq instruction *)
let step_retq (m:mach) (instr:ins) : unit =
  begin match instr with
    |(Retq, []) -> step_popq m (Popq, [Reg Rip])
    |_ -> raise(Invalid_argument "False operand Retq")
  end

let test_print (m:mach) (instr:ins) : unit =
  (Printf.printf "instruction: %s\n" (string_of_ins instr))

(* TODO: cc_jmp tests are strange *)
let step (m:mach) : unit =
  let instr = sbyte_to_ins(m.mem.(get_o (map_addr(m.regs.(rind Rip))))) in
     (*instr = array index in ocaml memory
     type of instr = sbyte*)
    begin match instr with
       |(Movq, _) -> (test_print m instr); (step_movq m instr); (to_next_instr m)
       |(Pushq, _) -> (test_print m instr); (step_pushq m instr); (to_next_instr m)
       |(Popq, _) -> (test_print m instr); (step_popq m instr); (to_next_instr m)
       |(Leaq, _) -> (test_print m instr); (step_leaq m instr); (to_next_instr m)
       |(Incq, _) -> (test_print m instr); (step_incq m instr); (to_next_instr m)
       |(Decq, _) -> (test_print m instr); (step_decq m instr); (to_next_instr m)
       |(Negq, _) -> (test_print m instr); (step_negq m instr); (to_next_instr m);
       |(Notq, _) -> (test_print m instr); (step_notq m instr); (to_next_instr m)
       |(Addq, _) -> (test_print m instr); (step_addq m instr); (to_next_instr m)
       |(Subq, _) -> (test_print m instr); (step_subq m instr); (to_next_instr m)
       |(Imulq, _) -> (test_print m) instr; (step_imulq m instr); (to_next_instr m)
       |(Xorq, _) -> (test_print m instr); (step_xorq m instr); (to_next_instr m)
       |(Orq, _) -> (test_print m instr); (step_orq m instr); (to_next_instr m)
       |(Andq, _) -> (test_print m instr); (step_andq m instr); (to_next_instr m)
       |(Shlq, _) -> (test_print m instr); (step_shlq m instr); (to_next_instr m)
       |(Sarq, _) -> (test_print m instr); (step_sarq m instr); (to_next_instr m)
       |(Shrq, _) -> (test_print m instr); (step_shrq m instr); (to_next_instr m)
       |(Jmp, _) -> (test_print m instr); step_jmp m instr
       |(J cnd, _) -> (test_print m) instr; step_j m instr
       |(Cmpq, _) -> (test_print m instr); (step_cmpq m instr); (to_next_instr m)
       |(Set cnd, _) -> (test_print m instr); (step_set m instr); (to_next_instr m)
       |(Callq, _) -> (test_print m instr); step_callq m instr
       |(Retq, _) -> (test_print m instr); (step_retq m instr); if(m.regs.(rind Rip) <> exit_addr) then (to_next_instr m)
    end

(* Runs the machine until the rip register reaches a designated
   memory address. Returns the contents of %rax when the 
   machine halts. *)


  
let run (m:mach) : int64 = 
  while m.regs.(rind Rip) <> exit_addr do 
    (step m) done;
  (m.regs.(rind Rax))

(* FABIAN AREA :) *)
(* assembling and linking --------------------------------------------------- *)

(* A representation of the executable *)
type exec = { entry    : quad              (* address of the entry point *)
            ; text_pos : quad              (* starting address of the code *)
            ; data_pos : quad              (* starting address of the data *)
            ; text_seg : sbyte list        (* contents of the text segment *)
            ; data_seg : sbyte list        (* contents of the data segment *)
            }

(* Assemble should raise this when a label is used but not defined *)
exception Undefined_sym of lbl

(* Assemble should raise this when a label is defined more than once *)
exception Redefined_sym of lbl

type symtable = (lbl * quad) list

(* Convert an X86 program into an object file:
   - separate the text and data segments
   - compute the size of each segment
      Note: the size of an Asciz string section is (1 + the string length)
            due to the null terminator

   - resolve the labels to concrete addresses and 'patch' the instructions to 
     replace Lbl values with the corresponding Imm values.

   - the text segment starts at the lowest address
   - the data segment starts after the text segment

  HINT: List.fold_left and List.fold_right are your friends.
 *)

 let find_label (lbl:lbl) (sym:symtable) : quad =
  let entry = List.fold_left (fun acc (l, a) -> if String.equal lbl l then a::acc else acc) [] sym in
  match entry with
    | [] -> raise (Undefined_sym lbl)
    | x::y::xs -> raise (Redefined_sym lbl)
    | x::xs -> x

  let is_text (e:elem) : bool = 
    match e.asm with 
      | Text _ -> true
      |  _ -> false
    (* evt gtext also*)

let get_text (p:prog) : prog = 
  List.filter (is_text) p
  
let is_data (e:elem) : bool = 
  match e.asm with
    | Data _  -> true
    | _ -> false
  (* !!!! evt cannot give p as argument, but rather p.asm *)

let get_data (p:prog) : prog = 
  List.filter is_data p

let data_size (d:data) : int64 =
  let open Int64 in
  match d with
  | Asciz s -> add one (of_int (String.length s))
  | Quad _ -> 8L
  
let elem_size {lbl; global; asm} : int64 = 
  match asm with
  | Text x -> Int64.mul (Int64.of_int (List.length x)) 8L
  | Data x -> List.fold_left (fun acc y -> Int64.add acc (data_size y)) 0L x

(*let text_add (text:elem) (acc:int64) : int64 = 
  Int64.add acc (elem_size text)
  *)

let get_text_size (text:prog) : int64 =
  List.fold_left (fun acc x -> Int64.add acc (elem_size x)) 0L text

let get_symtable (p:prog) (addr:int64) : quad * symtable = 
  let open List in
  let open Int64 in
  let sym_fold = fun (base, ls) x -> (add base (elem_size x), (x.lbl, base)::ls) in
  List.fold_left sym_fold (addr, []) p

let asm_to_sbytes (asm:asm) (sym:symtable) : sbyte list =
  let open List in
  let translate_op op = match op with
    | Imm (Lbl s) -> Imm (Lit (find_label s sym))
    | Ind1 (Lbl s) -> Ind1 (Lit (find_label s sym))
    | Ind3 (Lbl s, offset) -> Ind3 (Lit (find_label s sym), offset)
    | x -> x
  in
  let translate_ins (i, ops) = (i, map translate_op ops) in
  let translate_data = function Quad (Lbl s) -> Quad (Lit (find_label s sym)) | x -> x in
  match asm with
    | Text xs -> fold_right (fun x acc -> append (sbytes_of_ins (translate_ins x)) acc) xs []
    | Data xs -> fold_right (fun x acc -> append (sbytes_of_data (translate_data x)) acc) xs []

let translate (p:prog) (sym:symtable) : sbyte list = 
  List.concat (List.map (fun {lbl;global;asm} -> asm_to_sbytes asm sym) p)

let assemble (p:prog) : exec =
    let text                       = get_text p in
    let data                       = get_data p in
    let text_size                  = get_text_size text in
    let (text_addr, text_symtable) = get_symtable text 0x400000L in
    let (data_addr, data_symtable) = get_symtable data text_addr in
    let sym                        = text_symtable @ data_symtable in
    let sbyte_text                 = translate text sym in
    let sbyte_data                 = translate data sym in

      (* type exec = { entry    : quad
      ; text_pos : quad
      ; data_pos : quad
      ; text_seg : sbyte list
      ; data_seg : sbyte list
      } *)

      { entry = find_label "main" sym              (* address of the entry point *)
      ; text_pos = 0x400000L                       (* starting address of the code *)
      ; data_pos = Int64.add 0x400000L text_size              (* starting address of the data *)
      ; text_seg = sbyte_text        (* contents of the text segment *)
      ; data_seg = sbyte_data        (* contents of the data segment *)
      }

(*
The text_pos field must be exactly 0x400000, the lowest addressable byte in the simulator. 
The data_pos field must contain the address immediately following the end of the text segment in memory. 
The entry field must contain the address of the first instruction after the label "main" in the assembly program.
The assemble function should raise an Undefined_symbol exception if it encounters a label 
that is not declared in the source program, or if "main" is not declared.

1) First, calculate the address where text and data should be loaded according to 
the memory layout described above. 

2) Then, to resolve forward references to labels, 
you will need to traverse the assembly program and construct a symbol table to record the absolute address
of each label definition you encounter. 

3) The last step is to traverse the assembly program a second time, 
outputting sbytes for each instruction and data element you encounter. You will need to use your 
symbol table to replace labels, which can occur in instruction operands or Quad data, with their addresses.
*)

(* Convert an object file into an executable machine state. 
    - allocate the mem array
    - set up the memory state by writing the symbolic bytes to the 
      appropriate locations 
    - create the inital register state
      - initialize rip to the entry point address
      - initializes rsp to the last word in memory 
      - the other registers are initialized to 0
    - the condition code flags start as 'false'

  Hint: The Array.make, Array.blit, and Array.of_list library functions 
  may be of use.
*)
  
(*
Serialize an instruction to sbytes => let sbytes_of_ins (op, args:ins) : sbyte list
Serialize a data element to sbytes => let sbytes_of_data : data -> sbyte list = function
*)

let load {entry; text_pos; data_pos; text_seg; data_seg} : mach = 
  let program = Array.of_list (text_seg @ data_seg) in
  let mem = Array.make mem_size (Byte '\x00') in
  Array.blit program 0 mem 0 (Array.length program);
  let exit_addr_sbytes = sbytes_of_int64 exit_addr in
  Array.blit (Array.of_list exit_addr_sbytes) 0 mem (Array.length mem - 8) 8;
  let regs = Array.make nregs 0L in
  regs.(rind Rip) <- entry;
  regs.(rind Rsp) <- Int64.sub mem_top 8L;
    {
      flags = {
        fo = false;
        fs = false;
        fz = false;
      };
      regs = regs;
      mem = mem;
    }

(*
Fill out the load function, which creates an initial machine state given an object file. 
You will need to create an initial memory and copy the segments of the object file to their 
specified load addresses. You will also have to initialize the machine registers, setting %rip and %rsp 
appropriately. Lastly, you will need to initialize the stack to contain the sentinel exit_addr described 
in the previous section.
*)
