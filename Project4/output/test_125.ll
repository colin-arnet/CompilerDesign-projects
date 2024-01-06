; generated from: oatprograms/fac.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %i) {
  %_1652 = alloca i64
  %_i1651 = alloca i64
  store i64 %i, i64* %_i1651
  store i64 0, i64* %_1652
  %_1653 = load i64, i64* %_i1651
  %_1654 = icmp eq i64 %_i1651, 0
  br i1 %_1654, label %_if1655, label %_else1656
_if1655:
  store i64 1, i64* %_1652
  br label %_end1657
_else1656:
  %_1658 = load i64, i64* %_i1651
  %_1659 = load i64, i64* %_i1651
  %_1660 = sub i64 %_i1651, 1
  %_1661 = call i64 @f(i64 %_1660)
  %_1662 = mul i64 %_i1651, %_1661
  store i64 %_1662, i64* %_1652
  br label %_end1657
_end1657:
  %_1663 = load i64, i64* %_1652
  ret i64 %_1652
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argv1649 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1649
  %_argc1648 = alloca i64
  store i64 %argc, i64* %_argc1648
  %_1650 = call i64 @f(i64 5)
  ret i64 %_1650
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
