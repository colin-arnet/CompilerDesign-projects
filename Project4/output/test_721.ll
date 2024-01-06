; generated from: oatprograms/run19.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1428 = alloca i64
  %_1434 = alloca { i64, [0 x i64] }*
  %_argv1427 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1427
  %_argc1426 = alloca i64
  store i64 %argc, i64* %_argc1426
  store i64 999, i64* %_1428
  %_raw_array1429 = call i64* @oat_alloc_array(i64 3)
  %_array1430 = bitcast i64* %_raw_array1429 to { i64, [0 x i64] }*
  %_1433 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1430, i32 0, i32 1, i32 2
  store i64 999, i64* %_1433
  %_1432 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1430, i32 0, i32 1, i32 1
  store i64 100, i64* %_1432
  %_1431 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1430, i32 0, i32 1, i32 0
  store i64 1, i64* %_1431
  store { i64, [0 x i64] }* %_array1430, { i64, [0 x i64] }** %_1434
  %_1435 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1434
  %_1438 = bitcast { i64, [0 x i64] }* %_1435 to i64*
  %_1436 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1435, i32 0, i32 1, i32 2
  %_1437 = load i64, i64* %_1436
  ret i64 %_1437
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
