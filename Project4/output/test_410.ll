; generated from: oatprograms/run10.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %arr) {
  %_arr1036 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr1036
  %_1037 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1036
  ret { i64, [0 x i64] }* %_1037
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1025 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_1031 = alloca { i64, [0 x i64] }*
  %_argv1010 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1010
  %_argc1009 = alloca i64
  store i64 %argc, i64* %_argc1009
  %_raw_array1011 = call i64* @oat_alloc_array(i64 2)
  %_array1012 = bitcast i64* %_raw_array1011 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1018 = call i64* @oat_alloc_array(i64 3)
  %_array1019 = bitcast i64* %_raw_array1018 to { i64, [0 x i64] }*
  %_1022 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1019, i32 0, i32 1, i32 2
  store i64 6, i64* %_1022
  %_1021 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1019, i32 0, i32 1, i32 1
  store i64 5, i64* %_1021
  %_1020 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1019, i32 0, i32 1, i32 0
  store i64 4, i64* %_1020
  %_raw_array1013 = call i64* @oat_alloc_array(i64 3)
  %_array1014 = bitcast i64* %_raw_array1013 to { i64, [0 x i64] }*
  %_1017 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1014, i32 0, i32 1, i32 2
  store i64 3, i64* %_1017
  %_1016 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1014, i32 0, i32 1, i32 1
  store i64 2, i64* %_1016
  %_1015 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1014, i32 0, i32 1, i32 0
  store i64 1, i64* %_1015
  %_1024 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1012, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1019, { i64, [0 x i64] }** %_1024
  %_1023 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1012, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1014, { i64, [0 x i64] }** %_1023
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1012, { i64, [0 x { i64, [0 x i64] }*] }** %_1025
  %_1026 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1025
  %_1029 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_1026 to i64*
  %_1027 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_1026, i32 0, i32 1, i32 1
  %_1028 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1027
  %_1030 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_1028)
  store { i64, [0 x i64] }* %_1030, { i64, [0 x i64] }** %_1031
  %_1032 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1031
  %_1035 = bitcast { i64, [0 x i64] }* %_1032 to i64*
  %_1033 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1032, i32 0, i32 1, i32 1
  %_1034 = load i64, i64* %_1033
  ret i64 %_1034
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
