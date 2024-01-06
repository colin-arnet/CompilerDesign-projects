; generated from: oatprograms/easyrun4.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_25 = alloca i64
  %_26 = alloca i64
  %_argv24 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv24
  %_argc23 = alloca i64
  store i64 %argc, i64* %_argc23
  store i64 0, i64* %_25
  store i64 0, i64* %_26
  br label %_cnd29
_cnd29:
  %_27 = load i64, i64* %_26
  %_28 = icmp slt i64 %_27, 3
  br i1 %_28, label %_loop31, label %_end30
_loop31:
  %_32 = load i64, i64* %_25
  %_33 = add i64 %_32, 2
  store i64 %_33, i64* %_25
  %_34 = load i64, i64* %_26
  %_35 = add i64 %_34, 1
  store i64 %_35, i64* %_26
  br label %_cnd29
_end30:
  %_36 = load i64, i64* %_25
  ret i64 %_36
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
