; generated from: oatprograms/easyrun7.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argv37 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv37
  %_argc36 = alloca i64
  store i64 %argc, i64* %_argc36
  %_38 = xor i64 5, -1
  %_39 = and i64 %_38, 6
  %_40 = or i64 2, 0
  %_41 = icmp sge i64 %_39, %_40
  br i1 %_41, label %_if42, label %_else43
_if42:
  ret i64 23
_else43:
  ret i64 46
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
