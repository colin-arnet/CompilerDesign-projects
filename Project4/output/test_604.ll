; generated from: oatprograms/run41.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %x1, i64 %x2, i64 %x3, i64 %x4, i64 %x5, i64 %x6, i64 %x7, i64 %x8) {
  %_x8636 = alloca i64
  store i64 %x8, i64* %_x8636
  %_x7635 = alloca i64
  store i64 %x7, i64* %_x7635
  %_x6634 = alloca i64
  store i64 %x6, i64* %_x6634
  %_x5633 = alloca i64
  store i64 %x5, i64* %_x5633
  %_x4632 = alloca i64
  store i64 %x4, i64* %_x4632
  %_x3631 = alloca i64
  store i64 %x3, i64* %_x3631
  %_x2630 = alloca i64
  store i64 %x2, i64* %_x2630
  %_x1629 = alloca i64
  store i64 %x1, i64* %_x1629
  %_637 = load i64, i64* %_x1629
  %_638 = load i64, i64* %_x2630
  %_639 = add i64 %_637, %_638
  %_640 = load i64, i64* %_x3631
  %_641 = add i64 %_639, %_640
  %_642 = load i64, i64* %_x4632
  %_643 = add i64 %_641, %_642
  %_644 = load i64, i64* %_x5633
  %_645 = add i64 %_643, %_644
  %_646 = load i64, i64* %_x6634
  %_647 = add i64 %_645, %_646
  %_648 = load i64, i64* %_x7635
  %_649 = add i64 %_647, %_648
  %_650 = load i64, i64* %_x8636
  %_651 = add i64 %_649, %_650
  ret i64 %_651
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argv624 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv624
  %_argc623 = alloca i64
  store i64 %argc, i64* %_argc623
  %_627 = mul i64 3, -1
  %_626 = mul i64 4, -1
  %_625 = mul i64 5, -1
  %_628 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_625, i64 %_626, i64 %_627)
  ret i64 %_628
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
