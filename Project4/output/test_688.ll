; generated from: oatprograms/run21.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_375 = alloca { i64, [0 x i64] }*
  %_argv370 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv370
  %_argc369 = alloca i64
  store i64 %argc, i64* %_argc369
  %_raw_array371 = call i64* @oat_alloc_array(i64 2)
  %_array372 = bitcast i64* %_raw_array371 to { i64, [0 x i64] }*
  %_374 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array372, i32 0, i32 1, i32 1
  store i64 0, i64* %_374
  %_373 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array372, i32 0, i32 1, i32 0
  store i64 99, i64* %_373
  store { i64, [0 x i64] }* %_array372, { i64, [0 x i64] }** %_375
  %_376 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_375
  %_379 = bitcast { i64, [0 x i64] }* %_376 to i64*
  %_377 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_376, i32 0, i32 1, i32 0
  %_378 = load i64, i64* %_377
  ret i64 %_378
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
