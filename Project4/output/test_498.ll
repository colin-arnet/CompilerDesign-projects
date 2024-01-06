; generated from: oatprograms/run41.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %x1, i64 %x2, i64 %x3, i64 %x4, i64 %x5, i64 %x6, i64 %x7, i64 %x8) {
  %_x8649 = alloca i64
  store i64 %x8, i64* %_x8649
  %_x7648 = alloca i64
  store i64 %x7, i64* %_x7648
  %_x6647 = alloca i64
  store i64 %x6, i64* %_x6647
  %_x5646 = alloca i64
  store i64 %x5, i64* %_x5646
  %_x4645 = alloca i64
  store i64 %x4, i64* %_x4645
  %_x3644 = alloca i64
  store i64 %x3, i64* %_x3644
  %_x2643 = alloca i64
  store i64 %x2, i64* %_x2643
  %_x1642 = alloca i64
  store i64 %x1, i64* %_x1642
  %_650 = load i64, i64* %_x1642
  %_651 = load i64, i64* %_x2643
  %_652 = add i64 %_650, %_651
  %_653 = load i64, i64* %_x3644
  %_654 = add i64 %_652, %_653
  %_655 = load i64, i64* %_x4645
  %_656 = add i64 %_654, %_655
  %_657 = load i64, i64* %_x5646
  %_658 = add i64 %_656, %_657
  %_659 = load i64, i64* %_x6647
  %_660 = add i64 %_658, %_659
  %_661 = load i64, i64* %_x7648
  %_662 = add i64 %_660, %_661
  %_663 = load i64, i64* %_x8649
  %_664 = add i64 %_662, %_663
  ret i64 %_664
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argv637 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv637
  %_argc636 = alloca i64
  store i64 %argc, i64* %_argc636
  %_640 = mul i64 3, -1
  %_639 = mul i64 4, -1
  %_638 = mul i64 5, -1
  %_641 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_638, i64 %_639, i64 %_640)
  ret i64 %_641
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
