; generated from: oatprograms/run39.oat
target triple = "x86_64-unknown-linux"
define i64 @f1(i64 %i) {
  %_i613 = alloca i64
  store i64 %i, i64* %_i613
  %_614 = load i64, i64* %_i613
  %_615 = call i64 @f2(i64 %_614)
  ret i64 %_615
}

define i64 @f2(i64 %i) {
  %_i610 = alloca i64
  store i64 %i, i64* %_i610
  %_611 = load i64, i64* %_i610
  %_612 = call i64 @f3(i64 %_611)
  ret i64 %_612
}

define i64 @f3(i64 %i) {
  %_i607 = alloca i64
  store i64 %i, i64* %_i607
  %_608 = load i64, i64* %_i607
  %_609 = call i64 @f4(i64 %_608)
  ret i64 %_609
}

define i64 @f4(i64 %i) {
  %_i604 = alloca i64
  store i64 %i, i64* %_i604
  %_605 = load i64, i64* %_i604
  %_606 = call i64 @f5(i64 %_605)
  ret i64 %_606
}

define i64 @f5(i64 %i) {
  %_i601 = alloca i64
  store i64 %i, i64* %_i601
  %_602 = load i64, i64* %_i601
  %_603 = call i64 @f6(i64 %_602)
  ret i64 %_603
}

define i64 @f6(i64 %i) {
  %_i598 = alloca i64
  store i64 %i, i64* %_i598
  %_599 = load i64, i64* %_i598
  %_600 = call i64 @f7(i64 %_599)
  ret i64 %_600
}

define i64 @f7(i64 %i) {
  %_i595 = alloca i64
  store i64 %i, i64* %_i595
  %_596 = load i64, i64* %_i595
  %_597 = call i64 @f8(i64 %_596)
  ret i64 %_597
}

define i64 @f8(i64 %i) {
  %_i592 = alloca i64
  store i64 %i, i64* %_i592
  %_593 = load i64, i64* %_i592
  %_594 = call i64 @f9(i64 %_593)
  ret i64 %_594
}

define i64 @f9(i64 %i) {
  %_i590 = alloca i64
  store i64 %i, i64* %_i590
  %_591 = load i64, i64* %_i590
  ret i64 %_591
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argv587 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv587
  %_argc586 = alloca i64
  store i64 %argc, i64* %_argc586
  %_588 = load i64, i64* %_argc586
  %_589 = call i64 @f1(i64 %_588)
  ret i64 %_589
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
