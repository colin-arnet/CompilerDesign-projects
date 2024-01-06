; generated from: oatprograms/run53.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1493 = alloca i8*
  %_argv1486 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1486
  %_argc1485 = alloca i64
  store i64 %argc, i64* %_argc1485
  %_raw_array1487 = call i64* @oat_alloc_array(i64 3)
  %_array1488 = bitcast i64* %_raw_array1487 to { i64, [0 x i64] }*
  %_1491 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1488, i32 0, i32 1, i32 2
  store i64 110, i64* %_1491
  %_1490 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1488, i32 0, i32 1, i32 1
  store i64 110, i64* %_1490
  %_1489 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1488, i32 0, i32 1, i32 0
  store i64 110, i64* %_1489
  %_1492 = call i8* @string_of_array({ i64, [0 x i64] }* %_array1488)
  store i8* %_1492, i8** %_1493
  %_1494 = load i8*, i8** %_1493
  call void @print_string(i8* %_1493)
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
