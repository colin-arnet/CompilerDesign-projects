; generated from: oatprograms/run20.oat
target triple = "x86_64-unknown-linux"
define i64 @f() {
  ret i64 19
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1480 = alloca { i64, [0 x i64] }*
  %_argv1474 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1474
  %_argc1473 = alloca i64
  store i64 %argc, i64* %_argc1473
  %_raw_array1475 = call i64* @oat_alloc_array(i64 3)
  %_array1476 = bitcast i64* %_raw_array1475 to { i64, [0 x i64] }*
  %_1479 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1476, i32 0, i32 1, i32 2
  store i64 19, i64* %_1479
  %_1478 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1476, i32 0, i32 1, i32 1
  store i64 100, i64* %_1478
  %_1477 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1476, i32 0, i32 1, i32 0
  store i64 1, i64* %_1477
  store { i64, [0 x i64] }* %_array1476, { i64, [0 x i64] }** %_1480
  %_1481 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1480
  %_1484 = bitcast { i64, [0 x i64] }* %_1481 to i64*
  %_1482 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1481, i32 0, i32 1, i32 2
  %_1483 = load i64, i64* %_1482
  ret i64 %_1483
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
