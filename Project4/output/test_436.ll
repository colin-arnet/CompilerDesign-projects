; generated from: oatprograms/qsort.oat
target triple = "x86_64-unknown-linux"
define void @quick_sort({ i64, [0 x i64] }* %a, i64 %l, i64 %r) {
  %_2607 = alloca i64
  %_r2606 = alloca i64
  store i64 %r, i64* %_r2606
  %_l2605 = alloca i64
  store i64 %l, i64* %_l2605
  %_a2604 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a2604
  store i64 0, i64* %_2607
  %_2608 = load i64, i64* %_l2605
  %_2609 = load i64, i64* %_r2606
  %_2610 = icmp slt i64 %_2608, %_2609
  br i1 %_2610, label %_if2611, label %_else2612
_if2611:
  %_2616 = load i64, i64* %_r2606
  %_2615 = load i64, i64* %_l2605
  %_2614 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2604
  %_2617 = call i64 @partition({ i64, [0 x i64] }* %_2614, i64 %_2615, i64 %_2616)
  store i64 %_2617, i64* %_2607
  %_2620 = load i64, i64* %_2607
  %_2621 = sub i64 %_2620, 1
  %_2619 = load i64, i64* %_l2605
  %_2618 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2604
  call void @quick_sort({ i64, [0 x i64] }* %_2618, i64 %_2619, i64 %_2621)
  %_2626 = load i64, i64* %_r2606
  %_2624 = load i64, i64* %_2607
  %_2625 = add i64 %_2624, 1
  %_2623 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2604
  call void @quick_sort({ i64, [0 x i64] }* %_2623, i64 %_2625, i64 %_2626)
  br label %_else2612
_else2612:
  ret void
}

define i64 @partition({ i64, [0 x i64] }* %a, i64 %l, i64 %r) {
  %_2513 = alloca i64
  %_2515 = alloca i64
  %_2518 = alloca i64
  %_2519 = alloca i64
  %_2520 = alloca i64
  %_r2507 = alloca i64
  store i64 %r, i64* %_r2507
  %_l2506 = alloca i64
  store i64 %l, i64* %_l2506
  %_a2505 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a2505
  %_2508 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2505
  %_2509 = load i64, i64* %_l2506
  %_2512 = bitcast { i64, [0 x i64] }* %_2508 to i64*
  %_2510 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2508, i32 0, i32 1, i64 %_2509
  %_2511 = load i64, i64* %_2510
  store i64 %_2511, i64* %_2513
  %_2514 = load i64, i64* %_l2506
  store i64 %_2514, i64* %_2515
  %_2516 = load i64, i64* %_r2507
  %_2517 = add i64 %_2516, 1
  store i64 %_2517, i64* %_2518
  store i64 0, i64* %_2519
  store i64 0, i64* %_2520
  br label %_cnd2523
_cnd2523:
  %_2521 = load i64, i64* %_2520
  %_2522 = icmp eq i64 %_2521, 0
  br i1 %_2522, label %_loop2525, label %_end2524
_loop2525:
  %_2526 = load i64, i64* %_2515
  %_2527 = add i64 %_2526, 1
  store i64 %_2527, i64* %_2515
  br label %_cnd2539
_cnd2539:
  %_2528 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2505
  %_2529 = load i64, i64* %_2515
  %_2532 = bitcast { i64, [0 x i64] }* %_2528 to i64*
  %_2530 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2528, i32 0, i32 1, i64 %_2529
  %_2531 = load i64, i64* %_2530
  %_2533 = load i64, i64* %_2513
  %_2534 = icmp sle i64 %_2531, %_2533
  %_2535 = load i64, i64* %_2515
  %_2536 = load i64, i64* %_r2507
  %_2537 = icmp sle i64 %_2535, %_2536
  %_2538 = and i1 %_2534, %_2537
  br i1 %_2538, label %_loop2541, label %_end2540
_loop2541:
  %_2542 = load i64, i64* %_2515
  %_2543 = add i64 %_2542, 1
  store i64 %_2543, i64* %_2515
  br label %_cnd2539
_end2540:
  %_2544 = load i64, i64* %_2518
  %_2545 = sub i64 %_2544, 1
  store i64 %_2545, i64* %_2518
  br label %_cnd2553
_cnd2553:
  %_2546 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2505
  %_2547 = load i64, i64* %_2518
  %_2550 = bitcast { i64, [0 x i64] }* %_2546 to i64*
  %_2548 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2546, i32 0, i32 1, i64 %_2547
  %_2549 = load i64, i64* %_2548
  %_2551 = load i64, i64* %_2513
  %_2552 = icmp sgt i64 %_2549, %_2551
  br i1 %_2552, label %_loop2555, label %_end2554
_loop2555:
  %_2556 = load i64, i64* %_2518
  %_2557 = sub i64 %_2556, 1
  store i64 %_2557, i64* %_2518
  br label %_cnd2553
_end2554:
  %_2558 = load i64, i64* %_2515
  %_2559 = load i64, i64* %_2518
  %_2560 = icmp sge i64 %_2558, %_2559
  br i1 %_2560, label %_if2561, label %_else2562
_if2561:
  store i64 1, i64* %_2520
  br label %_else2562
_else2562:
  %_2564 = load i64, i64* %_2520
  %_2565 = icmp eq i64 %_2564, 0
  br i1 %_2565, label %_if2566, label %_else2567
_if2566:
  %_2569 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2505
  %_2570 = load i64, i64* %_2515
  %_2573 = bitcast { i64, [0 x i64] }* %_2569 to i64*
  %_2571 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2569, i32 0, i32 1, i64 %_2570
  %_2572 = load i64, i64* %_2571
  store i64 %_2572, i64* %_2519
  %_2574 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2505
  %_2575 = load i64, i64* %_2518
  %_2578 = bitcast { i64, [0 x i64] }* %_2574 to i64*
  %_2576 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2574, i32 0, i32 1, i64 %_2575
  %_2577 = load i64, i64* %_2576
  %_2579 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2505
  %_2580 = load i64, i64* %_2515
  %_2581 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2579, i32 0, i32 1, i64 %_2580
  store i64 %_2577, i64* %_2581
  %_2582 = load i64, i64* %_2519
  %_2583 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2505
  %_2584 = load i64, i64* %_2518
  %_2585 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2583, i32 0, i32 1, i64 %_2584
  store i64 %_2582, i64* %_2585
  br label %_else2567
_else2567:
  br label %_cnd2523
_end2524:
  %_2586 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2505
  %_2587 = load i64, i64* %_l2506
  %_2590 = bitcast { i64, [0 x i64] }* %_2586 to i64*
  %_2588 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2586, i32 0, i32 1, i64 %_2587
  %_2589 = load i64, i64* %_2588
  store i64 %_2589, i64* %_2519
  %_2591 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2505
  %_2592 = load i64, i64* %_2518
  %_2595 = bitcast { i64, [0 x i64] }* %_2591 to i64*
  %_2593 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2591, i32 0, i32 1, i64 %_2592
  %_2594 = load i64, i64* %_2593
  %_2596 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2505
  %_2597 = load i64, i64* %_l2506
  %_2598 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2596, i32 0, i32 1, i64 %_2597
  store i64 %_2594, i64* %_2598
  %_2599 = load i64, i64* %_2519
  %_2600 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2505
  %_2601 = load i64, i64* %_2518
  %_2602 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2600, i32 0, i32 1, i64 %_2601
  store i64 %_2599, i64* %_2602
  %_2603 = load i64, i64* %_2518
  ret i64 %_2603
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2496 = alloca { i64, [0 x i64] }*
  %_argv2484 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2484
  %_argc2483 = alloca i64
  store i64 %argc, i64* %_argc2483
  %_raw_array2485 = call i64* @oat_alloc_array(i64 9)
  %_array2486 = bitcast i64* %_raw_array2485 to { i64, [0 x i64] }*
  %_2495 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2486, i32 0, i32 1, i32 8
  store i64 109, i64* %_2495
  %_2494 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2486, i32 0, i32 1, i32 7
  store i64 111, i64* %_2494
  %_2493 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2486, i32 0, i32 1, i32 6
  store i64 104, i64* %_2493
  %_2492 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2486, i32 0, i32 1, i32 5
  store i64 115, i64* %_2492
  %_2491 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2486, i32 0, i32 1, i32 4
  store i64 123, i64* %_2491
  %_2490 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2486, i32 0, i32 1, i32 3
  store i64 102, i64* %_2490
  %_2489 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2486, i32 0, i32 1, i32 2
  store i64 121, i64* %_2489
  %_2488 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2486, i32 0, i32 1, i32 1
  store i64 112, i64* %_2488
  %_2487 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2486, i32 0, i32 1, i32 0
  store i64 107, i64* %_2487
  store { i64, [0 x i64] }* %_array2486, { i64, [0 x i64] }** %_2496
  %_2497 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2496
  %_2498 = call i8* @string_of_array({ i64, [0 x i64] }* %_2497)
  call void @print_string(i8* %_2498)
  %_2500 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2496
  call void @quick_sort({ i64, [0 x i64] }* %_2500, i64 0, i64 8)
  %_2502 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2496
  %_2503 = call i8* @string_of_array({ i64, [0 x i64] }* %_2502)
  call void @print_string(i8* %_2503)
  ret i64 255
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
