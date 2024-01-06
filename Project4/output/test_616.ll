; generated from: oatprograms/run10.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %arr) {
  %_arr1002 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr1002
  %_1003 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1002
  ret { i64, [0 x i64] }* %_1003
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_991 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_997 = alloca { i64, [0 x i64] }*
  %_argv976 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv976
  %_argc975 = alloca i64
  store i64 %argc, i64* %_argc975
  %_raw_array977 = call i64* @oat_alloc_array(i64 2)
  %_array978 = bitcast i64* %_raw_array977 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array984 = call i64* @oat_alloc_array(i64 3)
  %_array985 = bitcast i64* %_raw_array984 to { i64, [0 x i64] }*
  %_988 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array985, i32 0, i32 1, i32 2
  store i64 6, i64* %_988
  %_987 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array985, i32 0, i32 1, i32 1
  store i64 5, i64* %_987
  %_986 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array985, i32 0, i32 1, i32 0
  store i64 4, i64* %_986
  %_raw_array979 = call i64* @oat_alloc_array(i64 3)
  %_array980 = bitcast i64* %_raw_array979 to { i64, [0 x i64] }*
  %_983 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array980, i32 0, i32 1, i32 2
  store i64 3, i64* %_983
  %_982 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array980, i32 0, i32 1, i32 1
  store i64 2, i64* %_982
  %_981 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array980, i32 0, i32 1, i32 0
  store i64 1, i64* %_981
  %_990 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array978, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array985, { i64, [0 x i64] }** %_990
  %_989 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array978, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array980, { i64, [0 x i64] }** %_989
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array978, { i64, [0 x { i64, [0 x i64] }*] }** %_991
  %_992 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_991
  %_995 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_992 to i64*
  %_993 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_992, i32 0, i32 1, i32 1
  %_994 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_993
  %_996 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_994)
  store { i64, [0 x i64] }* %_996, { i64, [0 x i64] }** %_997
  %_998 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_997
  %_1001 = bitcast { i64, [0 x i64] }* %_998 to i64*
  %_999 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_998, i32 0, i32 1, i32 1
  %_1000 = load i64, i64* %_999
  ret i64 %_1000
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
