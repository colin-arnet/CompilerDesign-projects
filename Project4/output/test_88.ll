; generated from: oatprograms/easyrun3.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_8 = alloca i64
  %_9 = alloca i64
  %_argv7 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv7
  %_argc6 = alloca i64
  store i64 %argc, i64* %_argc6
  store i64 0, i64* %_8
  store i64 0, i64* %_9
  br label %_cnd12
_cnd12:
  %_10 = load i64, i64* %_9
  %_11 = icmp slt i64 %_9, 10
  br i1 %_11, label %_loop14, label %_end13
_loop14:
  %_15 = load i64, i64* %_8
  %_16 = load i64, i64* %_9
  %_17 = add i64 %_8, %_9
  %_18 = load i64, i64* %_9
  %_19 = mul i64 %_17, %_9
  store i64 %_19, i64* %_8
  %_20 = load i64, i64* %_9
  %_21 = add i64 %_9, 1
  store i64 %_21, i64* %_9
  br label %_cnd12
_end13:
  %_22 = load i64, i64* %_8
  ret i64 %_8
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
