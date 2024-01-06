; generated from: oatprograms/run38.oat
target triple = "x86_64-unknown-linux"
define i64 @f1() {
  %_448 = call i64 @f2()
  ret i64 %_448
}

define i64 @f2() {
  %_447 = call i64 @f3()
  ret i64 %_447
}

define i64 @f3() {
  %_446 = call i64 @f4()
  ret i64 %_446
}

define i64 @f4() {
  %_445 = call i64 @f5()
  ret i64 %_445
}

define i64 @f5() {
  %_444 = call i64 @f6()
  ret i64 %_444
}

define i64 @f6() {
  %_443 = call i64 @f7()
  ret i64 %_443
}

define i64 @f7() {
  %_442 = call i64 @f8()
  ret i64 %_442
}

define i64 @f8() {
  %_441 = call i64 @f9()
  ret i64 %_441
}

define i64 @f9() {
  ret i64 31
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argv439 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv439
  %_argc438 = alloca i64
  store i64 %argc, i64* %_argc438
  %_440 = call i64 @f1()
  ret i64 %_440
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
