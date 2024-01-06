; generated from: oatprograms/run20.oat
target triple = "x86_64-unknown-linux"
define i64 @f() {
  ret i64 19
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1446 = alloca { i64, [0 x i64] }*
  %_argv1440 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1440
  %_argc1439 = alloca i64
  store i64 %argc, i64* %_argc1439
  %_raw_array1441 = call i64* @oat_alloc_array(i64 3)
  %_array1442 = bitcast i64* %_raw_array1441 to { i64, [0 x i64] }*
  %_1445 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1442, i32 0, i32 1, i32 2
  store i64 19, i64* %_1445
  %_1444 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1442, i32 0, i32 1, i32 1
  store i64 100, i64* %_1444
  %_1443 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1442, i32 0, i32 1, i32 0
  store i64 1, i64* %_1443
  store { i64, [0 x i64] }* %_array1442, { i64, [0 x i64] }** %_1446
  %_1447 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1446
  %_1450 = bitcast { i64, [0 x i64] }* %_1447 to i64*
  %_1448 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1447, i32 0, i32 1, i32 2
  %_1449 = load i64, i64* %_1448
  ret i64 %_1449
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
