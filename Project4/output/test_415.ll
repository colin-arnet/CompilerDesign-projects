; generated from: oatprograms/run18.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1455 = alloca { i64, [0 x i64] }*
  %_argv1449 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1449
  %_argc1448 = alloca i64
  store i64 %argc, i64* %_argc1448
  %_raw_array1450 = call i64* @oat_alloc_array(i64 3)
  %_array1451 = bitcast i64* %_raw_array1450 to { i64, [0 x i64] }*
  %_1454 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1451, i32 0, i32 1, i32 2
  store i64 999, i64* %_1454
  %_1453 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1451, i32 0, i32 1, i32 1
  store i64 100, i64* %_1453
  %_1452 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1451, i32 0, i32 1, i32 0
  store i64 1, i64* %_1452
  store { i64, [0 x i64] }* %_array1451, { i64, [0 x i64] }** %_1455
  %_1456 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1455
  %_1459 = bitcast { i64, [0 x i64] }* %_1456 to i64*
  %_1457 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1456, i32 0, i32 1, i32 2
  %_1458 = load i64, i64* %_1457
  ret i64 %_1458
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
