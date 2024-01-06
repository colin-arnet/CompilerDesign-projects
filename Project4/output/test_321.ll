; generated from: oatprograms/easyrun7.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argv71 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv71
  %_argc70 = alloca i64
  store i64 %argc, i64* %_argc70
  %_72 = xor i64 5, -1
  %_73 = and i64 %_72, 6
  %_74 = or i64 2, 0
  %_75 = icmp sge i64 %_73, %_74
  br i1 %_75, label %_if76, label %_else77
_if76:
  ret i64 23
_else77:
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
