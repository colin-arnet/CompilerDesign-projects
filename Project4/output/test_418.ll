; generated from: oatprograms/run22.oat
target triple = "x86_64-unknown-linux"
@_1491 = global [4 x i8] c"def\00"
@_1489 = global [4 x i8] c"abc\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1495 = alloca { i64, [0 x i8*] }*
  %_argv1486 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1486
  %_argc1485 = alloca i64
  store i64 %argc, i64* %_argc1485
  %_raw_array1487 = call i64* @oat_alloc_array(i64 2)
  %_array1488 = bitcast i64* %_raw_array1487 to { i64, [0 x i8*] }*
  %_1492 = bitcast [4 x i8]* @_1491 to i8*
  %_1490 = bitcast [4 x i8]* @_1489 to i8*
  %_1494 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1488, i32 0, i32 1, i32 1
  store i8* %_1492, i8** %_1494
  %_1493 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1488, i32 0, i32 1, i32 0
  store i8* %_1490, i8** %_1493
  store { i64, [0 x i8*] }* %_array1488, { i64, [0 x i8*] }** %_1495
  %_1496 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_1495
  %_1499 = bitcast { i64, [0 x i8*] }* %_1496 to i64*
  %_1497 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_1496, i32 0, i32 1, i32 0
  %_1498 = load i8*, i8** %_1497
  call void @print_string(i8* %_1498)
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
