; generated from: oatprograms/easyrun8.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argv46 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv46
  %_argc45 = alloca i64
  store i64 %argc, i64* %_argc45
  %_47 = icmp ne i64 6, 5
  br i1 %_47, label %_if48, label %_else49
_if48:
  %_51 = mul i64 6, -1
  %_52 = lshr i64 5, %_51
  %_53 = shl i64 %_52, 9
  %_54 = ashr i64 %_53, 10
  %_55 = xor i64 %_54, -1
  %_56 = mul i64 %_55, 2
  %_57 = sub i64 %_56, 100
  %_58 = add i64 %_57, 6
  ret i64 %_58
_else49:
  ret i64 2
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
