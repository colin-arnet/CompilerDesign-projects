; generated from: oatprograms/run2.oat
target triple = "x86_64-unknown-linux"
@i = global i64 0

define i64 @f(i64 %x, i64 %y) {
  %_661 = alloca i64
  %_y660 = alloca i64
  store i64 %y, i64* %_y660
  %_x659 = alloca i64
  store i64 %x, i64* %_x659
  store i64 0, i64* %_661
  %_662 = load i64, i64* %_x659
  %_663 = icmp sge i64 %_662, 1
  br i1 %_663, label %_if664, label %_else665
_if664:
  %_669 = load i64, i64* %_y660
  %_667 = load i64, i64* %_x659
  %_668 = sub i64 %_667, 1
  %_670 = call i64 @f(i64 %_668, i64 %_669)
  %_671 = add i64 1, %_670
  store i64 %_671, i64* %_661
  br label %_end666
_else665:
  %_672 = load i64, i64* %_x659
  %_673 = load i64, i64* %_y660
  %_674 = add i64 %_672, %_673
  store i64 %_674, i64* %_661
  br label %_end666
_end666:
  %_675 = load i64, i64* %_661
  ret i64 %_675
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_652 = alloca i64
  %_653 = alloca i64
  %_argv651 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv651
  %_argc650 = alloca i64
  store i64 %argc, i64* %_argc650
  store i64 3, i64* %_652
  store i64 3, i64* %_653
  %_655 = load i64, i64* %_653
  %_654 = load i64, i64* %_652
  %_656 = call i64 @f(i64 %_654, i64 %_655)
  %_657 = load i64, i64* @i
  %_658 = add i64 %_656, %_657
  ret i64 %_658
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
