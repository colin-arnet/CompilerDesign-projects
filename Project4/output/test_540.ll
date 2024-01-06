; generated from: oatprograms/lib14.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2424 = alloca { i64, [0 x i64] }*
  %_argv2411 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2411
  %_argc2410 = alloca i64
  store i64 %argc, i64* %_argc2410
  %_raw_array2412 = call i64* @oat_alloc_array(i64 10)
  %_array2413 = bitcast i64* %_raw_array2412 to { i64, [0 x i64] }*
  %_2423 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2413, i32 0, i32 1, i32 9
  store i64 117, i64* %_2423
  %_2422 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2413, i32 0, i32 1, i32 8
  store i64 118, i64* %_2422
  %_2421 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2413, i32 0, i32 1, i32 7
  store i64 119, i64* %_2421
  %_2420 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2413, i32 0, i32 1, i32 6
  store i64 120, i64* %_2420
  %_2419 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2413, i32 0, i32 1, i32 5
  store i64 121, i64* %_2419
  %_2418 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2413, i32 0, i32 1, i32 4
  store i64 122, i64* %_2418
  %_2417 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2413, i32 0, i32 1, i32 3
  store i64 123, i64* %_2417
  %_2416 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2413, i32 0, i32 1, i32 2
  store i64 124, i64* %_2416
  %_2415 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2413, i32 0, i32 1, i32 1
  store i64 125, i64* %_2415
  %_2414 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2413, i32 0, i32 1, i32 0
  store i64 126, i64* %_2414
  store { i64, [0 x i64] }* %_array2413, { i64, [0 x i64] }** %_2424
  %_2425 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2424
  %_2426 = call i8* @string_of_array({ i64, [0 x i64] }* %_2425)
  call void @print_string(i8* %_2426)
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
