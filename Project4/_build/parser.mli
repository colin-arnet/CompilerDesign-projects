
(* The type of tokens. *)

type token = 
  | WHILE
  | VAR
  | TVOID
  | TSTRING
  | TRUE
  | TINT
  | TILDE
  | TBOOL
  | STRING of (string)
  | STAR
  | SHRIGHT
  | SHLEFT
  | SEMI
  | SARIGHT
  | RPAREN
  | RETURN
  | RBRACKET
  | RBRACE
  | PLUS
  | OR
  | NULL
  | NEW
  | NEQ
  | LPAREN
  | LESS
  | LEQ
  | LBRACKET
  | LBRACE
  | INT of (int64)
  | IF
  | IDENT of (string)
  | GREATER
  | GLOBAL
  | GEQ
  | FOR
  | FALSE
  | EQEQ
  | EQ
  | EOF
  | ELSE
  | DASH
  | COMMA
  | BOR
  | BANG
  | BAND
  | AND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val stmt_top: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.stmt Ast.node)

val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.prog)

val exp_top: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.exp Ast.node)
