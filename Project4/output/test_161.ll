; generated from: oatprograms/fact.oat
target triple = "x86_64-unknown-linux"
define i64 @fact(i64 %x) {
  %_599 = alloca i64
  %_x598 = alloca i64
  store i64 %x, i64* %_x598
  store i64 1, i64* %_599
  br label %_cnd602
_cnd602:
  %_600 = load i64, i64* %_x598
  %_601 = icmp sgt i64 %_600, 0
  br i1 %_601, label %_loop604, label %_end603
_loop604:
  %_605 = load i64, i64* %_599
  %_606 = load i64, i64* %_x598
  %_607 = mul i64 %_605, %_606
  store i64 %_607, i64* %_599
  %_608 = load i64, i64* %_x598
  %_609 = sub i64 %_608, 1
  store i64 %_609, i64* %_x598
  br label %_cnd602
_end603:
  %_610 = load i64, i64* %_599
  ret i64 %_610
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argv594 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv594
  %_argc593 = alloca i64
  store i64 %argc, i64* %_argc593
  %_595 = call i64 @fact(i64 5)
  %_596 = call i8* @string_of_int(i64 %_595)
  call void @print_string(i8* %_596)
  ret i64 0
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
