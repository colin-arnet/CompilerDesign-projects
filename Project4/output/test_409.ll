; generated from: oatprograms/run9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1001 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_argv988 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv988
  %_argc987 = alloca i64
  store i64 %argc, i64* %_argc987
  %_raw_array989 = call i64* @oat_alloc_array(i64 2)
  %_array990 = bitcast i64* %_raw_array989 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array995 = call i64* @oat_alloc_array(i64 2)
  %_array996 = bitcast i64* %_raw_array995 to { i64, [0 x i64] }*
  %_998 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array996, i32 0, i32 1, i32 1
  store i64 4, i64* %_998
  %_997 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array996, i32 0, i32 1, i32 0
  store i64 3, i64* %_997
  %_raw_array991 = call i64* @oat_alloc_array(i64 2)
  %_array992 = bitcast i64* %_raw_array991 to { i64, [0 x i64] }*
  %_994 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array992, i32 0, i32 1, i32 1
  store i64 2, i64* %_994
  %_993 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array992, i32 0, i32 1, i32 0
  store i64 1, i64* %_993
  %_1000 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array990, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array996, { i64, [0 x i64] }** %_1000
  %_999 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array990, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array992, { i64, [0 x i64] }** %_999
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array990, { i64, [0 x { i64, [0 x i64] }*] }** %_1001
  %_1002 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1001
  %_1005 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_1002 to i64*
  %_1003 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_1002, i32 0, i32 1, i32 1
  %_1004 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1003
  %_1008 = bitcast { i64, [0 x i64] }* %_1004 to i64*
  %_1006 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1004, i32 0, i32 1, i32 1
  %_1007 = load i64, i64* %_1006
  ret i64 %_1007
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
