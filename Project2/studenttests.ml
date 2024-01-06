open Assert
open X86
open Simulator
open Gradedtests

(* You can use this file for additional test cases to help your *)
(* implementation.                                              *)

let addq = test_machine
  [InsB0 (Movq, [Imm (Lit 8L); Reg Rbx]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag
  ;InsB0 (Movq, [Imm (Lit 8L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag
  ;InsB0 (Addq, [Reg Rbx; Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag
  ;InsB0 (Retq, []); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag]

let subq = test_machine
  [InsB0 (Movq, [Imm (Lit 8L); Reg Rbx]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag
  ;InsB0 (Movq, [Imm (Lit 8L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag
  ;InsB0 (Subq, [Reg Rbx; Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag
  ;InsB0 (Retq, []); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag]

let incq = test_machine
  [InsB0 (Movq, [Imm (Lit 8L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag
  ;InsB0 (Incq, [Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag
  ;InsB0 (Retq, []); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag]

let decq = test_machine
  [InsB0 (Movq, [Imm (Lit 8L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag
  ;InsB0 (Decq, [Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag
  ;InsB0 (Retq, []); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag]

let notq = test_machine
  [InsB0 (Pushq, [Imm (Lit 127L)]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag
  ;InsB0 (Notq, [Ind2 Rsp]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag
  ;InsB0 (Popq, [Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag]

let sarq = test_machine
  [InsB0 (Movq, [Imm (Lit Int64.min_int); Reg Rbx]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag
  ;InsB0 (Negq, [Reg Rbx]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag
  ;InsB0 (Pushq, [Imm (Lit (Int64.neg 8L))]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag
  ;InsB0 (Sarq, [Imm (Lit 2L); Ind2 Rsp]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag
  ;InsB0 (Popq, [Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag]


let shrq = test_machine
  [InsB0 (Movq, [Imm (Lit 1L); Reg Rcx]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag
  ;InsB0 (Pushq, [Imm (Lit (Int64.neg 8L))]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag
  ;InsB0 (Shrq, [Reg Rcx; Ind2 Rsp]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag
  ;InsB0 (Popq, [Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag]

let shlq = test_machine
  [InsB0 (Movq, [Imm (Lit Int64.min_int); Reg Rbx]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag
  ;InsB0 (Negq, [Reg Rbx]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag
  ;InsB0 (Movq, [Imm (Lit 1L); Reg Rcx]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag
  ;InsB0 (Pushq, [Imm (Lit Int64.min_int)]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag
  ;InsB0 (Shlq, [Reg Rcx; Ind2 Rsp]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag
  ;InsB0 (Popq, [Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag]


let provided_tests : suite = [
  Test ("Debug", [
    ("addq_test", machine_test "Rax = 16, Rbx = 8" 4 addq
      (fun m -> m.regs.(rind Rax) = 16L && m.regs.(rind Rbx) = 8L
      )
    );
    ("subq_test", machine_test "Rax = 16, Rbx = 8" 4 subq
      (fun m -> m.regs.(rind Rax) = 0L && m.regs.(rind Rbx) = 8L
      )
    );
    ("incq_test", machine_test "Rax = 9" 3 incq
      (fun m -> m.regs.(rind Rax) = 9L
      )
    );
    ("decq_test", machine_test "Rax = 7" 3 decq
      (fun m -> m.regs.(rind Rax) = 7L
      )
    );
    ("notq_stack_test", machine_test "Rax = 0xFF FF FF FF FF FF FF 80" 3 notq
      (fun m -> m.regs.(rind Rax) = 0xFFFFFFFFFFFFFF80L
      )
    );
    ("sarq_stack_test", machine_test "Rax = 0xC0 00 00 00 00 00 00 04; OF = true; SF = true; ZF false" 5 sarq
      (fun m -> m.regs.(rind Rax) = 0xfffffffffffffffeL && m.flags.fs = true && m.flags.fz = false && m.flags.fo = true
      )
    );
    ("shrq_stack_test", machine_test "Rax = 0x3FFFFFFFFFFFFFFE; " 4 shrq
      (fun m ->  m.regs.(rind Rax) = 0x7FFFFFFFFFFFFFFCL && m.flags.fs = false && m.flags.fz = false && m.flags.fo = true
      )
    );
    ("shlq_stack_test", machine_test "Rax = 32;" 6 shlq
      (fun m -> m.regs.(rind Rax) = 0L && m.flags.fs = false && m.flags.fz = true && m.flags.fo = true
      )
      );
  ]);

] 
