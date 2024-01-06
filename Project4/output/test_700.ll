; generated from: oatprograms/run38.oat
target triple = "x86_64-unknown-linux"
define i64 @f1() {
  %_585 = call i64 @f2()
  ret i64 %_585
}

define i64 @f2() {
  %_584 = call i64 @f3()
  ret i64 %_584
}

define i64 @f3() {
  %_583 = call i64 @f4()
  ret i64 %_583
}

define i64 @f4() {
  %_582 = call i64 @f5()
  ret i64 %_582
}

define i64 @f5() {
  %_581 = call i64 @f6()
  ret i64 %_581
}

define i64 @f6() {
  %_580 = call i64 @f7()
  ret i64 %_580
}

define i64 @f7() {
  %_579 = call i64 @f8()
  ret i64 %_579
}

define i64 @f8() {
  %_578 = call i64 @f9()
  ret i64 %_578
}

define i64 @f9() {
  ret i64 31
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argv576 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv576
  %_argc575 = alloca i64
  store i64 %argc, i64* %_argc575
  %_577 = call i64 @f1()
  ret i64 %_577
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
