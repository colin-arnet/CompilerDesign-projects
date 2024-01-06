; generated from: oatprograms/run61.oat
target triple = "x86_64-unknown-linux"
@s = global [3 x i8] c"42\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argv589 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv589
  %_argc588 = alloca i64
  store i64 %argc, i64* %_argc588
  %_590 = load [3 x i8], [3 x i8]* @s
  %_591 = bitcast [3 x i8] %_590 to i8*
  call void @print_string(i8* %_591)
  ret i64 0
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
