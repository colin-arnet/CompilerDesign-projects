; generated from: oatprograms/easyrun6.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argv24 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv24
  %_argc23 = alloca i64
  store i64 %argc, i64* %_argc23
  %_25 = xor i1 1, 1
  %_26 = mul i64 4, -1
  %_27 = add i64 %_26, 5
  %_28 = icmp sgt i64 %_27, 0
  %_29 = mul i64 6, 4
  %_30 = icmp slt i64 %_29, 25
  %_31 = and i1 %_28, %_30
  %_32 = or i1 %_25, %_31
  br i1 %_32, label %_if33, label %_else34
_if33:
  ret i64 9
_else34:
  ret i64 4
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
