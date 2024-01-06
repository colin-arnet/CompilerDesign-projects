; generated from: oatprograms/run18.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1421 = alloca { i64, [0 x i64] }*
  %_argv1415 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1415
  %_argc1414 = alloca i64
  store i64 %argc, i64* %_argc1414
  %_raw_array1416 = call i64* @oat_alloc_array(i64 3)
  %_array1417 = bitcast i64* %_raw_array1416 to { i64, [0 x i64] }*
  %_1420 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1417, i32 0, i32 1, i32 2
  store i64 999, i64* %_1420
  %_1419 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1417, i32 0, i32 1, i32 1
  store i64 100, i64* %_1419
  %_1418 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1417, i32 0, i32 1, i32 0
  store i64 1, i64* %_1418
  store { i64, [0 x i64] }* %_array1417, { i64, [0 x i64] }** %_1421
  %_1422 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1421
  %_1425 = bitcast { i64, [0 x i64] }* %_1422 to i64*
  %_1423 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1422, i32 0, i32 1, i32 2
  %_1424 = load i64, i64* %_1423
  ret i64 %_1424
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
