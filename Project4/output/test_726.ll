; generated from: oatprograms/run25.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1510 = alloca { i64, [0 x i64] }*
  %_1513 = alloca i8*
  %_argv1504 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1504
  %_argc1503 = alloca i64
  store i64 %argc, i64* %_argc1503
  %_raw_array1505 = call i64* @oat_alloc_array(i64 3)
  %_array1506 = bitcast i64* %_raw_array1505 to { i64, [0 x i64] }*
  %_1509 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1506, i32 0, i32 1, i32 2
  store i64 110, i64* %_1509
  %_1508 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1506, i32 0, i32 1, i32 1
  store i64 110, i64* %_1508
  %_1507 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1506, i32 0, i32 1, i32 0
  store i64 110, i64* %_1507
  store { i64, [0 x i64] }* %_array1506, { i64, [0 x i64] }** %_1510
  %_1511 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1510
  %_1512 = call i8* @string_of_array({ i64, [0 x i64] }* %_1511)
  store i8* %_1512, i8** %_1513
  %_1514 = load i8*, i8** %_1513
  call void @print_string(i8* %_1514)
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
