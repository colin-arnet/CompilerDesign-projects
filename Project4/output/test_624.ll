; generated from: oatprograms/run22.oat
target triple = "x86_64-unknown-linux"
@_1457 = global [4 x i8] c"def\00"
@_1455 = global [4 x i8] c"abc\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1461 = alloca { i64, [0 x i8*] }*
  %_argv1452 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1452
  %_argc1451 = alloca i64
  store i64 %argc, i64* %_argc1451
  %_raw_array1453 = call i64* @oat_alloc_array(i64 2)
  %_array1454 = bitcast i64* %_raw_array1453 to { i64, [0 x i8*] }*
  %_1458 = bitcast [4 x i8]* @_1457 to i8*
  %_1456 = bitcast [4 x i8]* @_1455 to i8*
  %_1460 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1454, i32 0, i32 1, i32 1
  store i8* %_1458, i8** %_1460
  %_1459 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1454, i32 0, i32 1, i32 0
  store i8* %_1456, i8** %_1459
  store { i64, [0 x i8*] }* %_array1454, { i64, [0 x i8*] }** %_1461
  %_1462 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_1461
  %_1465 = bitcast { i64, [0 x i8*] }* %_1462 to i64*
  %_1463 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_1462, i32 0, i32 1, i32 0
  %_1464 = load i8*, i8** %_1463
  call void @print_string(i8* %_1464)
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
