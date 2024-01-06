; generated from: oatprograms/run23.oat
target triple = "x86_64-unknown-linux"
@_1483 = global [4 x i8] c"123\00"
@_1481 = global [4 x i8] c"789\00"
@_1475 = global [4 x i8] c"def\00"
@_1473 = global [4 x i8] c"abc\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1489 = alloca { i64, [0 x { i64, [0 x i8*] }*] }*
  %_argv1468 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1468
  %_argc1467 = alloca i64
  store i64 %argc, i64* %_argc1467
  %_raw_array1469 = call i64* @oat_alloc_array(i64 2)
  %_array1470 = bitcast i64* %_raw_array1469 to { i64, [0 x { i64, [0 x i8*] }*] }*
  %_raw_array1479 = call i64* @oat_alloc_array(i64 2)
  %_array1480 = bitcast i64* %_raw_array1479 to { i64, [0 x i8*] }*
  %_1484 = bitcast [4 x i8]* @_1483 to i8*
  %_1482 = bitcast [4 x i8]* @_1481 to i8*
  %_1486 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1480, i32 0, i32 1, i32 1
  store i8* %_1484, i8** %_1486
  %_1485 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1480, i32 0, i32 1, i32 0
  store i8* %_1482, i8** %_1485
  %_raw_array1471 = call i64* @oat_alloc_array(i64 2)
  %_array1472 = bitcast i64* %_raw_array1471 to { i64, [0 x i8*] }*
  %_1476 = bitcast [4 x i8]* @_1475 to i8*
  %_1474 = bitcast [4 x i8]* @_1473 to i8*
  %_1478 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1472, i32 0, i32 1, i32 1
  store i8* %_1476, i8** %_1478
  %_1477 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1472, i32 0, i32 1, i32 0
  store i8* %_1474, i8** %_1477
  %_1488 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array1470, i32 0, i32 1, i32 1
  store { i64, [0 x i8*] }* %_array1480, { i64, [0 x i8*] }** %_1488
  %_1487 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array1470, i32 0, i32 1, i32 0
  store { i64, [0 x i8*] }* %_array1472, { i64, [0 x i8*] }** %_1487
  store { i64, [0 x { i64, [0 x i8*] }*] }* %_array1470, { i64, [0 x { i64, [0 x i8*] }*] }** %_1489
  %_1490 = load { i64, [0 x { i64, [0 x i8*] }*] }*, { i64, [0 x { i64, [0 x i8*] }*] }** %_1489
  %_1493 = bitcast { i64, [0 x { i64, [0 x i8*] }*] }* %_1490 to i64*
  %_1491 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_1490, i32 0, i32 1, i32 1
  %_1492 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_1491
  %_1496 = bitcast { i64, [0 x i8*] }* %_1492 to i64*
  %_1494 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_1492, i32 0, i32 1, i32 1
  %_1495 = load i8*, i8** %_1494
  call void @print_string(i8* %_1495)
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
