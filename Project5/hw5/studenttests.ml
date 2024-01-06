open Assert

(* These tests are provided by you -- they will be graded manually *)

(* You should also add additional test cases here to help you   *)
(* debug your program.                                          *)

let pos = (fun () -> 
    let stmt = Ast.no_loc (Ast.While (Ast.no_loc (Ast.CBool true), [])); in
    try 
      begin match (Typechecker.typecheck_stmt Tctxt.empty (stmt) RetVoid) with
        |(c, b) -> ()
      end
    with Typechecker.TypeError s -> failwith "Should not have had a type error"
  )

let neg = (fun () -> 
    let stmt = Ast.no_loc (Ast.While (Ast.no_loc (Ast.CInt 2L), [])); in
    try 
      begin match (Typechecker.typecheck_stmt Tctxt.empty (stmt) RetVoid) with
        |(c, b) -> failwith "Should have a type error"
      end
    with Typechecker.TypeError s -> ()
  )

let provided_tests : suite = [
  GradedTest ("the three test cases (positive/negative/new oat feature)", 10,
              [("positive case", pos)
              ;("negative case", neg)]
    )
  
]

(*README:
Feature Program "newfeature.oat" expects no arguments and output should be 26
*)