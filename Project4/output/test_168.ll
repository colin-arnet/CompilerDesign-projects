; generated from: oatprograms/fac.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %i) {
  %_1654 = alloca i64
  %_i1653 = alloca i64
  store i64 %i, i64* %_i1653
  store i64 0, i64* %_1654
  %_1655 = load i64, i64* %_i1653
  %_1656 = icmp eq i64 %_1655, 0
  br i1 %_1656, label %_if1657, label %_else1658
_if1657:
  store i64 1, i64* %_1654
  br label %_end1659
_else1658:
  %_1660 = load i64, i64* %_i1653
  %_1661 = load i64, i64* %_i1653
  %_1662 = sub i64 %_1661, 1
  %_1663 = call i64 @f(i64 %_1662)
  %_1664 = mul i64 %_1660, %_1663
  store i64 %_1664, i64* %_1654
  br label %_end1659
_end1659:
  %_1665 = load i64, i64* %_1654
  ret i64 %_1665
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argv1651 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1651
  %_argc1650 = alloca i64
  store i64 %argc, i64* %_argc1650
  %_1652 = call i64 @f(i64 5)
  ret i64 %_1652
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
