; generated from: oatprograms/run53.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1984 = alloca i8*
  %_argv1977 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1977
  %_argc1976 = alloca i64
  store i64 %argc, i64* %_argc1976
  %_raw_array1978 = call i64* @oat_alloc_array(i64 3)
  %_array1979 = bitcast i64* %_raw_array1978 to { i64, [0 x i64] }*
  %_1982 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1979, i32 0, i32 1, i32 2
  store i64 110, i64* %_1982
  %_1981 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1979, i32 0, i32 1, i32 1
  store i64 110, i64* %_1981
  %_1980 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1979, i32 0, i32 1, i32 0
  store i64 110, i64* %_1980
  %_1983 = call i8* @string_of_array({ i64, [0 x i64] }* %_array1979)
  store i8* %_1983, i8** %_1984
  %_1985 = load i8*, i8** %_1984
  call void @print_string(i8* %_1985)
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
