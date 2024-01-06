; generated from: oatprograms/run50.oat
target triple = "x86_64-unknown-linux"
@_582 = global [6 x i8] c"abcde\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argv581 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv581
  %_argc580 = alloca i64
  store i64 %argc, i64* %_argc580
  %_583 = bitcast [6 x i8]* @_582 to i8*
  call void @print_string(i8* %_583)
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
