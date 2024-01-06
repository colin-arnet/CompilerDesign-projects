; generated from: oatprograms/run38.oat
target triple = "x86_64-unknown-linux"
define i64 @f1() {
  %_598 = call i64 @f2()
  ret i64 %_598
}

define i64 @f2() {
  %_597 = call i64 @f3()
  ret i64 %_597
}

define i64 @f3() {
  %_596 = call i64 @f4()
  ret i64 %_596
}

define i64 @f4() {
  %_595 = call i64 @f5()
  ret i64 %_595
}

define i64 @f5() {
  %_594 = call i64 @f6()
  ret i64 %_594
}

define i64 @f6() {
  %_593 = call i64 @f7()
  ret i64 %_593
}

define i64 @f7() {
  %_592 = call i64 @f8()
  ret i64 %_592
}

define i64 @f8() {
  %_591 = call i64 @f9()
  ret i64 %_591
}

define i64 @f9() {
  ret i64 31
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argv589 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv589
  %_argc588 = alloca i64
  store i64 %argc, i64* %_argc588
  %_590 = call i64 @f1()
  ret i64 %_590
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
