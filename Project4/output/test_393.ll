; generated from: oatprograms/run36.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_561 = alloca { i64, [0 x i64] }*
  %_argv556 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv556
  %_argc555 = alloca i64
  store i64 %argc, i64* %_argc555
  %_raw_array557 = call i64* @oat_alloc_array(i64 2)
  %_array558 = bitcast i64* %_raw_array557 to { i64, [0 x i64] }*
  %_560 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array558, i32 0, i32 1, i32 1
  store i64 0, i64* %_560
  %_559 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array558, i32 0, i32 1, i32 0
  store i64 0, i64* %_559
  store { i64, [0 x i64] }* %_array558, { i64, [0 x i64] }** %_561
  %_562 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_561
  %_565 = bitcast { i64, [0 x i64] }* %_562 to i64*
  %_563 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_562, i32 0, i32 1, i32 1
  %_564 = load i64, i64* %_563
  ret i64 %_564
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
