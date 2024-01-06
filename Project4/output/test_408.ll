; generated from: oatprograms/run8.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_982 = alloca { i64, [0 x i64] }*
  %_argv977 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv977
  %_argc976 = alloca i64
  store i64 %argc, i64* %_argc976
  %_raw_array978 = call i64* @oat_alloc_array(i64 2)
  %_array979 = bitcast i64* %_raw_array978 to { i64, [0 x i64] }*
  %_981 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array979, i32 0, i32 1, i32 1
  store i64 2, i64* %_981
  %_980 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array979, i32 0, i32 1, i32 0
  store i64 1, i64* %_980
  store { i64, [0 x i64] }* %_array979, { i64, [0 x i64] }** %_982
  %_983 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_982
  %_986 = bitcast { i64, [0 x i64] }* %_983 to i64*
  %_984 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_983, i32 0, i32 1, i32 1
  %_985 = load i64, i64* %_984
  ret i64 %_985
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
