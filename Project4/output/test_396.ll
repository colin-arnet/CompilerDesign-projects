; generated from: oatprograms/run39.oat
target triple = "x86_64-unknown-linux"
define i64 @f1(i64 %i) {
  %_i626 = alloca i64
  store i64 %i, i64* %_i626
  %_627 = load i64, i64* %_i626
  %_628 = call i64 @f2(i64 %_627)
  ret i64 %_628
}

define i64 @f2(i64 %i) {
  %_i623 = alloca i64
  store i64 %i, i64* %_i623
  %_624 = load i64, i64* %_i623
  %_625 = call i64 @f3(i64 %_624)
  ret i64 %_625
}

define i64 @f3(i64 %i) {
  %_i620 = alloca i64
  store i64 %i, i64* %_i620
  %_621 = load i64, i64* %_i620
  %_622 = call i64 @f4(i64 %_621)
  ret i64 %_622
}

define i64 @f4(i64 %i) {
  %_i617 = alloca i64
  store i64 %i, i64* %_i617
  %_618 = load i64, i64* %_i617
  %_619 = call i64 @f5(i64 %_618)
  ret i64 %_619
}

define i64 @f5(i64 %i) {
  %_i614 = alloca i64
  store i64 %i, i64* %_i614
  %_615 = load i64, i64* %_i614
  %_616 = call i64 @f6(i64 %_615)
  ret i64 %_616
}

define i64 @f6(i64 %i) {
  %_i611 = alloca i64
  store i64 %i, i64* %_i611
  %_612 = load i64, i64* %_i611
  %_613 = call i64 @f7(i64 %_612)
  ret i64 %_613
}

define i64 @f7(i64 %i) {
  %_i608 = alloca i64
  store i64 %i, i64* %_i608
  %_609 = load i64, i64* %_i608
  %_610 = call i64 @f8(i64 %_609)
  ret i64 %_610
}

define i64 @f8(i64 %i) {
  %_i605 = alloca i64
  store i64 %i, i64* %_i605
  %_606 = load i64, i64* %_i605
  %_607 = call i64 @f9(i64 %_606)
  ret i64 %_607
}

define i64 @f9(i64 %i) {
  %_i603 = alloca i64
  store i64 %i, i64* %_i603
  %_604 = load i64, i64* %_i603
  ret i64 %_604
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argv600 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv600
  %_argc599 = alloca i64
  store i64 %argc, i64* %_argc599
  %_601 = load i64, i64* %_argc599
  %_602 = call i64 @f1(i64 %_601)
  ret i64 %_602
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
