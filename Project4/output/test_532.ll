; generated from: oatprograms/run53.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2230 = alloca i8*
  %_argv2223 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2223
  %_argc2222 = alloca i64
  store i64 %argc, i64* %_argc2222
  %_raw_array2224 = call i64* @oat_alloc_array(i64 3)
  %_array2225 = bitcast i64* %_raw_array2224 to { i64, [0 x i64] }*
  %_2228 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2225, i32 0, i32 1, i32 2
  store i64 110, i64* %_2228
  %_2227 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2225, i32 0, i32 1, i32 1
  store i64 110, i64* %_2227
  %_2226 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2225, i32 0, i32 1, i32 0
  store i64 110, i64* %_2226
  %_2229 = call i8* @string_of_array({ i64, [0 x i64] }* %_array2225)
  store i8* %_2229, i8** %_2230
  %_2231 = load i8*, i8** %_2230
  call void @print_string(i8* %_2231)
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
