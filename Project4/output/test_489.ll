; generated from: oatprograms/run32.oat
target triple = "x86_64-unknown-linux"
@i = global i64 11

define i64 @f() {
  %_428 = alloca i64
  store i64 12, i64* %_428
  %_429 = load i64, i64* %_428
  ret i64 %_429
}

define i64 @g() {
  %_426 = alloca i64
  store i64 10, i64* %_426
  %_427 = load i64, i64* %_426
  ret i64 %_427
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argv420 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv420
  %_argc419 = alloca i64
  store i64 %argc, i64* %_argc419
  %_421 = call i64 @f()
  %_422 = call i64 @g()
  %_423 = add i64 %_421, %_422
  %_424 = load i64, i64* @i
  %_425 = add i64 %_423, %_424
  ret i64 %_425
}


declare i64* @oat_alloc_array(i64)
declare { i64, [0 x i64] }* @array_of_string(i8*)
declare i8* @string_of_array({ i64, [0 x i64] }*)
declare i64 @length_of_string(i8*)
declare i8* @string_of_int(i64)
declare i8* @string_cat(i8*, i8*)
declare void @print_string(i8*)
declare void @print_int(i64)
declare void @print_bool(i1)
