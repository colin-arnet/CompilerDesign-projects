open Assert
open Hellocaml
open Int64
(* These tests are provided by you -- they will NOT be graded *)

(* You should also add additional test cases here to help you   *)
(* debug your program.                                          *)
let provided_tests : suite = [
  Test ("Student-Provided Tests For Problem 1-3", [
    ("case1", assert_eqf (fun () -> 42) prob3_ans );
    ("case2", assert_eqf (fun () -> 25) (prob3_case2 17));
    ("case3", assert_eqf (fun () -> prob3_case3) 64);

  ]);
  Test ("Extended Optimizer and Interpreter Test for Problem 4-5", [
    ("test1", assert_eqf(fun () -> (interpret ctxt2 (optimize (Mult (Add (Neg (Const 5L), Var "x"), Mult (Const 5L, Neg (Var "y"))))))) 105L);
    ("test2", assert_eqf(fun () -> (optimize (Mult (Add (Neg (Const 5L), Var "x"), Mult (Const 5L, Neg (Var "y")))))) (Mult (Add ((Const (neg 5L)), Var "x"), Mult (Const 5L, Neg (Var "y")))));
    ("test3", assert_eqf(fun () -> (optimize (Mult (Add (Neg (Const 5L), Const 6L), Mult (Const 5L, Neg (Var "y")))))) (Mult (Const 5L, Neg (Var "y"))));
    ("test4", assert_eqf(fun () -> (optimize (Mult (Add (Neg (Const 5L), Const 0L), Mult (Const 5L, Neg (Var "y")))))) (Mult (Const (neg 5L), Mult (Const 5L, Neg (Var "y")))));
    ("test5", assert_eqf(fun () -> (interpret ctxt2 (optimize (Mult (Add (Neg (Const 5L), Const 0L), Mult (Const 5L, Neg (Const 6L))))))) 150L);
  ]);
  Test ("Compile-Function Test for Problem 5", [
    ("test1", assert_eqf (fun () -> (interpret ctxt1 (Const 10L))) (run ctxt1 (compile (Const 10L))));
    ("test2", assert_eqf (fun () -> (interpret ctxt1 (Var "x"))) (run ctxt1 (compile (Var "x"))));
    ("test3", assert_eqf (fun () -> (interpret ctxt1 (Add (Const 5L, Const 2L)))) (run ctxt1 (compile (Add (Const 5L, Const 2L)))));
    ("test4", assert_eqf (fun () -> (interpret ctxt1 (Mult (Const 5L, Var "x")))) (run ctxt1 (compile (Mult (Const 5L, Var "x")))));
    ("test5", assert_eqf (fun () -> (interpret ctxt1 (Neg (Const 5L)))) (run ctxt1 (compile (Neg (Const 5L)))));
    ("test6", assert_eqf (fun () -> (interpret ctxt1 (Add (Neg (Const 5L), Var "x")))) (run ctxt1 (compile (Add (Neg (Const 5L), Var "x")))));
    ("test7", assert_eqf (fun () -> (interpret ctxt1 (Mult (Const 5L, Neg (Var "x"))))) (run ctxt1 (compile (Mult (Const 5L, Neg (Var "x"))))));
    ("test8", assert_eqf (fun () -> (interpret ctxt1 (Mult (Add (Neg (Const 5L), Var "x"), Var "x")))) (run ctxt1 (compile (Mult (Add (Neg (Const 5L), Var "x"), Var "x")))));
    ("test9", assert_eqf (fun () -> (interpret ctxt1 (Add (Const 5L, Mult (Const 5L, Neg (Var "x")))))) (run ctxt1 (compile (Add (Const 5L, Mult (Const 5L, Neg (Var "x")))))));
    ("test10", assert_eqf (fun () -> (interpret ctxt2 (Mult (Add (Neg (Const 5L), Var "x"), Mult (Const 5L, Neg (Var "y")))))) (run ctxt2 (compile (Mult (Add (Neg (Const 5L), Var "x"), Mult (Const 5L, Neg (Var "y")))))));
  ]);
  
] 
