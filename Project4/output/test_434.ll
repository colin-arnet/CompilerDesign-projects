; generated from: oatprograms/lib15.oat
target triple = "x86_64-unknown-linux"
define i8* @sub(i8* %str, i64 %start, i64 %len) {
  %_2441 = alloca { i64, [0 x i64] }*
  %_2445 = alloca { i64, [0 x i64] }*
  %_2446 = alloca i64
  %_len2438 = alloca i64
  store i64 %len, i64* %_len2438
  %_start2437 = alloca i64
  store i64 %start, i64* %_start2437
  %_str2436 = alloca i8*
  store i8* %str, i8** %_str2436
  %_2439 = load i8*, i8** %_str2436
  %_2440 = call { i64, [0 x i64] }* @array_of_string(i8* %_2439)
  store { i64, [0 x i64] }* %_2440, { i64, [0 x i64] }** %_2441
  %_2442 = load i64, i64* %_len2438
  %_raw_array2443 = call i64* @oat_alloc_array(i64 %_2442)
  %_array2444 = bitcast i64* %_raw_array2443 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2444, { i64, [0 x i64] }** %_2445
  store i64 0, i64* %_2446
  br label %_cnd2450
_cnd2450:
  %_2447 = load i64, i64* %_2446
  %_2448 = load i64, i64* %_len2438
  %_2449 = icmp slt i64 %_2447, %_2448
  br i1 %_2449, label %_loop2452, label %_end2451
_loop2452:
  %_2453 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2441
  %_2454 = load i64, i64* %_2446
  %_2455 = load i64, i64* %_start2437
  %_2456 = add i64 %_2454, %_2455
  %_2459 = bitcast { i64, [0 x i64] }* %_2453 to i64*
  %_2457 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2453, i32 0, i32 1, i64 %_2456
  %_2458 = load i64, i64* %_2457
  %_2460 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2445
  %_2461 = load i64, i64* %_2446
  %_2462 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2460, i32 0, i32 1, i64 %_2461
  store i64 %_2458, i64* %_2462
  %_2463 = load i64, i64* %_2446
  %_2464 = add i64 %_2463, 1
  store i64 %_2464, i64* %_2446
  br label %_cnd2450
_end2451:
  %_2465 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2445
  %_2466 = call i8* @string_of_array({ i64, [0 x i64] }* %_2465)
  ret i8* %_2466
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argv2429 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2429
  %_argc2428 = alloca i64
  store i64 %argc, i64* %_argc2428
  %_2430 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_argv2429
  %_2433 = bitcast { i64, [0 x i8*] }* %_2430 to i64*
  %_2431 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_2430, i32 0, i32 1, i32 1
  %_2432 = load i8*, i8** %_2431
  %_2434 = call i8* @sub(i8* %_2432, i64 3, i64 5)
  call void @print_string(i8* %_2434)
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
