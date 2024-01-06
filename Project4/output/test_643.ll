; generated from: oatprograms/bsort.oat
target triple = "x86_64-unknown-linux"
@_2406 = global [2 x i8] c" \00"

define void @bubble_sort({ i64, [0 x i64] }* %numbers, i64 %array_size) {
  %_2417 = alloca i64
  %_2420 = alloca i64
  %_2426 = alloca i64
  %_array_size2416 = alloca i64
  store i64 %array_size, i64* %_array_size2416
  %_numbers2415 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %numbers, { i64, [0 x i64] }** %_numbers2415
  store i64 0, i64* %_2417
  %_2418 = load i64, i64* %_array_size2416
  %_2419 = sub i64 %_2418, 1
  store i64 %_2419, i64* %_2420
  br label %_cnd2423
_cnd2423:
  %_2421 = load i64, i64* %_2420
  %_2422 = icmp sgt i64 %_2421, 0
  br i1 %_2422, label %_loop2425, label %_end2424
_loop2425:
  store i64 1, i64* %_2426
  br label %_cnd2430
_cnd2430:
  %_2427 = load i64, i64* %_2426
  %_2428 = load i64, i64* %_2420
  %_2429 = icmp sle i64 %_2427, %_2428
  br i1 %_2429, label %_loop2432, label %_end2431
_loop2432:
  %_2433 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2415
  %_2434 = load i64, i64* %_2426
  %_2435 = sub i64 %_2434, 1
  %_2438 = bitcast { i64, [0 x i64] }* %_2433 to i64*
  %_2436 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2433, i32 0, i32 1, i64 %_2435
  %_2437 = load i64, i64* %_2436
  %_2439 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2415
  %_2440 = load i64, i64* %_2420
  %_2443 = bitcast { i64, [0 x i64] }* %_2439 to i64*
  %_2441 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2439, i32 0, i32 1, i64 %_2440
  %_2442 = load i64, i64* %_2441
  %_2444 = icmp sgt i64 %_2437, %_2442
  br i1 %_2444, label %_if2445, label %_else2446
_if2445:
  %_2448 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2415
  %_2449 = load i64, i64* %_2426
  %_2450 = sub i64 %_2449, 1
  %_2453 = bitcast { i64, [0 x i64] }* %_2448 to i64*
  %_2451 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2448, i32 0, i32 1, i64 %_2450
  %_2452 = load i64, i64* %_2451
  store i64 %_2452, i64* %_2417
  %_2454 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2415
  %_2455 = load i64, i64* %_2420
  %_2458 = bitcast { i64, [0 x i64] }* %_2454 to i64*
  %_2456 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2454, i32 0, i32 1, i64 %_2455
  %_2457 = load i64, i64* %_2456
  %_2459 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2415
  %_2460 = load i64, i64* %_2426
  %_2461 = sub i64 %_2460, 1
  %_2462 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2459, i32 0, i32 1, i64 %_2461
  store i64 %_2457, i64* %_2462
  %_2463 = load i64, i64* %_2417
  %_2464 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2415
  %_2465 = load i64, i64* %_2420
  %_2466 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2464, i32 0, i32 1, i64 %_2465
  store i64 %_2463, i64* %_2466
  br label %_else2446
_else2446:
  %_2467 = load i64, i64* %_2426
  %_2468 = add i64 %_2467, 1
  store i64 %_2468, i64* %_2426
  br label %_cnd2430
_end2431:
  %_2469 = load i64, i64* %_2420
  %_2470 = sub i64 %_2469, 1
  store i64 %_2470, i64* %_2420
  br label %_cnd2423
_end2424:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2386 = alloca { i64, [0 x i64] }*
  %_argv2383 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2383
  %_argc2382 = alloca i64
  store i64 %argc, i64* %_argc2382
  %_raw_array2384 = call i64* @oat_alloc_array(i64 8)
  %_array2385 = bitcast i64* %_raw_array2384 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2385, { i64, [0 x i64] }** %_2386
  %_2387 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2386
  %_2388 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2387, i32 0, i32 1, i32 0
  store i64 121, i64* %_2388
  %_2389 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2386
  %_2390 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2389, i32 0, i32 1, i32 1
  store i64 125, i64* %_2390
  %_2391 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2386
  %_2392 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2391, i32 0, i32 1, i32 2
  store i64 120, i64* %_2392
  %_2393 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2386
  %_2394 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2393, i32 0, i32 1, i32 3
  store i64 111, i64* %_2394
  %_2395 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2386
  %_2396 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2395, i32 0, i32 1, i32 4
  store i64 116, i64* %_2396
  %_2397 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2386
  %_2398 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2397, i32 0, i32 1, i32 5
  store i64 110, i64* %_2398
  %_2399 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2386
  %_2400 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2399, i32 0, i32 1, i32 6
  store i64 117, i64* %_2400
  %_2401 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2386
  %_2402 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2401, i32 0, i32 1, i32 7
  store i64 119, i64* %_2402
  %_2403 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2386
  %_2404 = call i8* @string_of_array({ i64, [0 x i64] }* %_2403)
  call void @print_string(i8* %_2404)
  %_2407 = bitcast [2 x i8]* @_2406 to i8*
  call void @print_string(i8* %_2407)
  %_2409 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2386
  call void @bubble_sort({ i64, [0 x i64] }* %_2409, i64 8)
  %_2411 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2386
  %_2412 = call i8* @string_of_array({ i64, [0 x i64] }* %_2411)
  call void @print_string(i8* %_2412)
  %_2414 = mul i64 1, -1
  ret i64 %_2414
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
