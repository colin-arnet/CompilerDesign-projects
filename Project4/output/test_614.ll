; generated from: oatprograms/run8.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_948 = alloca { i64, [0 x i64] }*
  %_argv943 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv943
  %_argc942 = alloca i64
  store i64 %argc, i64* %_argc942
  %_raw_array944 = call i64* @oat_alloc_array(i64 2)
  %_array945 = bitcast i64* %_raw_array944 to { i64, [0 x i64] }*
  %_947 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array945, i32 0, i32 1, i32 1
  store i64 2, i64* %_947
  %_946 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array945, i32 0, i32 1, i32 0
  store i64 1, i64* %_946
  store { i64, [0 x i64] }* %_array945, { i64, [0 x i64] }** %_948
  %_949 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_948
  %_952 = bitcast { i64, [0 x i64] }* %_949 to i64*
  %_950 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_949, i32 0, i32 1, i32 1
  %_951 = load i64, i64* %_950
  ret i64 %_951
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
