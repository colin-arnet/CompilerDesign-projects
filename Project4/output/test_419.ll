; generated from: oatprograms/run23.oat
target triple = "x86_64-unknown-linux"
@_1517 = global [4 x i8] c"123\00"
@_1515 = global [4 x i8] c"789\00"
@_1509 = global [4 x i8] c"def\00"
@_1507 = global [4 x i8] c"abc\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1523 = alloca { i64, [0 x { i64, [0 x i8*] }*] }*
  %_argv1502 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1502
  %_argc1501 = alloca i64
  store i64 %argc, i64* %_argc1501
  %_raw_array1503 = call i64* @oat_alloc_array(i64 2)
  %_array1504 = bitcast i64* %_raw_array1503 to { i64, [0 x { i64, [0 x i8*] }*] }*
  %_raw_array1513 = call i64* @oat_alloc_array(i64 2)
  %_array1514 = bitcast i64* %_raw_array1513 to { i64, [0 x i8*] }*
  %_1518 = bitcast [4 x i8]* @_1517 to i8*
  %_1516 = bitcast [4 x i8]* @_1515 to i8*
  %_1520 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1514, i32 0, i32 1, i32 1
  store i8* %_1518, i8** %_1520
  %_1519 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1514, i32 0, i32 1, i32 0
  store i8* %_1516, i8** %_1519
  %_raw_array1505 = call i64* @oat_alloc_array(i64 2)
  %_array1506 = bitcast i64* %_raw_array1505 to { i64, [0 x i8*] }*
  %_1510 = bitcast [4 x i8]* @_1509 to i8*
  %_1508 = bitcast [4 x i8]* @_1507 to i8*
  %_1512 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1506, i32 0, i32 1, i32 1
  store i8* %_1510, i8** %_1512
  %_1511 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1506, i32 0, i32 1, i32 0
  store i8* %_1508, i8** %_1511
  %_1522 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array1504, i32 0, i32 1, i32 1
  store { i64, [0 x i8*] }* %_array1514, { i64, [0 x i8*] }** %_1522
  %_1521 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array1504, i32 0, i32 1, i32 0
  store { i64, [0 x i8*] }* %_array1506, { i64, [0 x i8*] }** %_1521
  store { i64, [0 x { i64, [0 x i8*] }*] }* %_array1504, { i64, [0 x { i64, [0 x i8*] }*] }** %_1523
  %_1524 = load { i64, [0 x { i64, [0 x i8*] }*] }*, { i64, [0 x { i64, [0 x i8*] }*] }** %_1523
  %_1527 = bitcast { i64, [0 x { i64, [0 x i8*] }*] }* %_1524 to i64*
  %_1525 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_1524, i32 0, i32 1, i32 1
  %_1526 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_1525
  %_1530 = bitcast { i64, [0 x i8*] }* %_1526 to i64*
  %_1528 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_1526, i32 0, i32 1, i32 1
  %_1529 = load i8*, i8** %_1528
  call void @print_string(i8* %_1529)
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
