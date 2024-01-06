; generated from: oatprograms/run2.oat
target triple = "x86_64-unknown-linux"
@i = global i64 0

define i64 @f(i64 %x, i64 %y) {
  %_660 = alloca i64
  %_y659 = alloca i64
  store i64 %y, i64* %_y659
  %_x658 = alloca i64
  store i64 %x, i64* %_x658
  store i64 0, i64* %_660
  %_661 = load i64, i64* %_x658
  %_662 = icmp sge i64 %_x658, 1
  br i1 %_662, label %_if663, label %_else664
_if663:
  %_668 = load i64, i64* %_y659
  %_666 = load i64, i64* %_x658
  %_667 = sub i64 %_x658, 1
  %_669 = call i64 @f(i64 %_667, i64 %_y659)
  %_670 = add i64 1, %_669
  store i64 %_670, i64* %_660
  br label %_end665
_else664:
  %_671 = load i64, i64* %_x658
  %_672 = load i64, i64* %_y659
  %_673 = add i64 %_x658, %_y659
  store i64 %_673, i64* %_660
  br label %_end665
_end665:
  %_674 = load i64, i64* %_660
  ret i64 %_660
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_651 = alloca i64
  %_652 = alloca i64
  %_argv650 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv650
  %_argc649 = alloca i64
  store i64 %argc, i64* %_argc649
  store i64 3, i64* %_651
  store i64 3, i64* %_652
  %_654 = load i64, i64* %_652
  %_653 = load i64, i64* %_651
  %_655 = call i64 @f(i64 %_651, i64 %_652)
  %_656 = load i64, i64* @i
  %_657 = add i64 %_655, @i
  ret i64 %_657
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
