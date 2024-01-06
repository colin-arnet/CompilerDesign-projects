; generated from: oatprograms/easyrun5.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_40 = alloca i64
  %_42 = alloca i64
  %_argv38 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv38
  %_argc37 = alloca i64
  store i64 %argc, i64* %_argc37
  %_39 = lshr i64 100, 3
  store i64 %_39, i64* %_40
  %_41 = shl i64 100, 3
  store i64 %_41, i64* %_42
  %_43 = load i64, i64* %_40
  %_44 = load i64, i64* %_42
  %_45 = sub i64 %_40, %_42
  %_46 = icmp sle i64 %_45, 0
  br i1 %_46, label %_if47, label %_else48
_if47:
  %_50 = load i64, i64* %_40
  %_51 = mul i64 %_40, -1
  %_52 = load i64, i64* %_42
  %_53 = sub i64 %_51, %_42
  ret i64 %_53
_else48:
  %_54 = load i64, i64* %_40
  %_55 = load i64, i64* %_42
  %_56 = sub i64 %_40, %_42
  ret i64 %_56
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
