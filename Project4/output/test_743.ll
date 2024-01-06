; generated from: oatprograms/msort.oat
target triple = "x86_64-unknown-linux"
@_2635 = global [2 x i8] c" \00"
@_2641 = global [2 x i8] c" \00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2616 = alloca i64
  %_2629 = alloca { i64, [0 x i64] }*
  %_argv2615 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2615
  %_argc2614 = alloca i64
  store i64 %argc, i64* %_argc2614
  store i64 0, i64* %_2616
  %_raw_array2617 = call i64* @oat_alloc_array(i64 10)
  %_array2618 = bitcast i64* %_raw_array2617 to { i64, [0 x i64] }*
  %_2628 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2618, i32 0, i32 1, i32 9
  store i64 117, i64* %_2628
  %_2627 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2618, i32 0, i32 1, i32 8
  store i64 118, i64* %_2627
  %_2626 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2618, i32 0, i32 1, i32 7
  store i64 119, i64* %_2626
  %_2625 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2618, i32 0, i32 1, i32 6
  store i64 120, i64* %_2625
  %_2624 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2618, i32 0, i32 1, i32 5
  store i64 121, i64* %_2624
  %_2623 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2618, i32 0, i32 1, i32 4
  store i64 122, i64* %_2623
  %_2622 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2618, i32 0, i32 1, i32 3
  store i64 123, i64* %_2622
  %_2621 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2618, i32 0, i32 1, i32 2
  store i64 124, i64* %_2621
  %_2620 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2618, i32 0, i32 1, i32 1
  store i64 125, i64* %_2620
  %_2619 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2618, i32 0, i32 1, i32 0
  store i64 126, i64* %_2619
  store { i64, [0 x i64] }* %_array2618, { i64, [0 x i64] }** %_2629
  %_2630 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2629
  %_2631 = call i8* @string_of_array({ i64, [0 x i64] }* %_2630)
  call void @print_string(i8* %_2631)
  %_2633 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2629
  call void @oat_mergesort({ i64, [0 x i64] }* %_2633, i64 0, i64 9)
  %_2636 = bitcast [2 x i8]* @_2635 to i8*
  call void @print_string(i8* %_2636)
  %_2638 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2629
  %_2639 = call i8* @string_of_array({ i64, [0 x i64] }* %_2638)
  call void @print_string(i8* %_2639)
  %_2642 = bitcast [2 x i8]* @_2641 to i8*
  call void @print_string(i8* %_2642)
  %_2644 = load i64, i64* %_2616
  ret i64 %_2644
}

define void @oat_mergesort({ i64, [0 x i64] }* %a, i64 %low, i64 %high) {
  %_2589 = alloca i64
  %_high2588 = alloca i64
  store i64 %high, i64* %_high2588
  %_low2587 = alloca i64
  store i64 %low, i64* %_low2587
  %_a2586 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a2586
  store i64 0, i64* %_2589
  %_2590 = load i64, i64* %_low2587
  %_2591 = load i64, i64* %_high2588
  %_2592 = icmp slt i64 %_2590, %_2591
  br i1 %_2592, label %_if2593, label %_else2594
_if2593:
  %_2596 = load i64, i64* %_low2587
  %_2597 = load i64, i64* %_high2588
  %_2598 = add i64 %_2596, %_2597
  %_2599 = lshr i64 %_2598, 1
  store i64 %_2599, i64* %_2589
  %_2602 = load i64, i64* %_2589
  %_2601 = load i64, i64* %_low2587
  %_2600 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2586
  call void @oat_mergesort({ i64, [0 x i64] }* %_2600, i64 %_2601, i64 %_2602)
  %_2607 = load i64, i64* %_high2588
  %_2605 = load i64, i64* %_2589
  %_2606 = add i64 %_2605, 1
  %_2604 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2586
  call void @oat_mergesort({ i64, [0 x i64] }* %_2604, i64 %_2606, i64 %_2607)
  %_2612 = load i64, i64* %_2589
  %_2611 = load i64, i64* %_high2588
  %_2610 = load i64, i64* %_low2587
  %_2609 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2586
  call void @merge({ i64, [0 x i64] }* %_2609, i64 %_2610, i64 %_2611, i64 %_2612)
  br label %_else2594
_else2594:
  ret void
}

define void @merge({ i64, [0 x i64] }* %a, i64 %low, i64 %high, i64 %mid) {
  %_2475 = alloca i64
  %_2476 = alloca i64
  %_2477 = alloca i64
  %_2480 = alloca { i64, [0 x i64] }*
  %_mid2474 = alloca i64
  store i64 %mid, i64* %_mid2474
  %_high2473 = alloca i64
  store i64 %high, i64* %_high2473
  %_low2472 = alloca i64
  store i64 %low, i64* %_low2472
  %_a2471 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a2471
  store i64 0, i64* %_2475
  store i64 0, i64* %_2476
  store i64 0, i64* %_2477
  %_raw_array2478 = call i64* @oat_alloc_array(i64 50)
  %_array2479 = bitcast i64* %_raw_array2478 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2479, { i64, [0 x i64] }** %_2480
  %_2481 = load i64, i64* %_low2472
  store i64 %_2481, i64* %_2475
  %_2482 = load i64, i64* %_mid2474
  %_2483 = add i64 %_2482, 1
  store i64 %_2483, i64* %_2476
  %_2484 = load i64, i64* %_low2472
  store i64 %_2484, i64* %_2477
  br label %_cnd2492
_cnd2492:
  %_2485 = load i64, i64* %_2475
  %_2486 = load i64, i64* %_mid2474
  %_2487 = icmp sle i64 %_2485, %_2486
  %_2488 = load i64, i64* %_2476
  %_2489 = load i64, i64* %_high2473
  %_2490 = icmp sle i64 %_2488, %_2489
  %_2491 = and i1 %_2487, %_2490
  br i1 %_2491, label %_loop2494, label %_end2493
_loop2494:
  %_2495 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2471
  %_2496 = load i64, i64* %_2475
  %_2499 = bitcast { i64, [0 x i64] }* %_2495 to i64*
  %_2497 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2495, i32 0, i32 1, i64 %_2496
  %_2498 = load i64, i64* %_2497
  %_2500 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2471
  %_2501 = load i64, i64* %_2476
  %_2504 = bitcast { i64, [0 x i64] }* %_2500 to i64*
  %_2502 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2500, i32 0, i32 1, i64 %_2501
  %_2503 = load i64, i64* %_2502
  %_2505 = icmp slt i64 %_2498, %_2503
  br i1 %_2505, label %_if2506, label %_else2507
_if2506:
  %_2509 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2471
  %_2510 = load i64, i64* %_2475
  %_2513 = bitcast { i64, [0 x i64] }* %_2509 to i64*
  %_2511 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2509, i32 0, i32 1, i64 %_2510
  %_2512 = load i64, i64* %_2511
  %_2514 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2480
  %_2515 = load i64, i64* %_2477
  %_2516 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2514, i32 0, i32 1, i64 %_2515
  store i64 %_2512, i64* %_2516
  %_2517 = load i64, i64* %_2477
  %_2518 = add i64 %_2517, 1
  store i64 %_2518, i64* %_2477
  %_2519 = load i64, i64* %_2475
  %_2520 = add i64 %_2519, 1
  store i64 %_2520, i64* %_2475
  br label %_end2508
_else2507:
  %_2521 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2471
  %_2522 = load i64, i64* %_2476
  %_2525 = bitcast { i64, [0 x i64] }* %_2521 to i64*
  %_2523 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2521, i32 0, i32 1, i64 %_2522
  %_2524 = load i64, i64* %_2523
  %_2526 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2480
  %_2527 = load i64, i64* %_2477
  %_2528 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2526, i32 0, i32 1, i64 %_2527
  store i64 %_2524, i64* %_2528
  %_2529 = load i64, i64* %_2477
  %_2530 = add i64 %_2529, 1
  store i64 %_2530, i64* %_2477
  %_2531 = load i64, i64* %_2476
  %_2532 = add i64 %_2531, 1
  store i64 %_2532, i64* %_2476
  br label %_end2508
_end2508:
  br label %_cnd2492
_end2493:
  br label %_cnd2536
_cnd2536:
  %_2533 = load i64, i64* %_2475
  %_2534 = load i64, i64* %_mid2474
  %_2535 = icmp sle i64 %_2533, %_2534
  br i1 %_2535, label %_loop2538, label %_end2537
_loop2538:
  %_2539 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2471
  %_2540 = load i64, i64* %_2475
  %_2543 = bitcast { i64, [0 x i64] }* %_2539 to i64*
  %_2541 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2539, i32 0, i32 1, i64 %_2540
  %_2542 = load i64, i64* %_2541
  %_2544 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2480
  %_2545 = load i64, i64* %_2477
  %_2546 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2544, i32 0, i32 1, i64 %_2545
  store i64 %_2542, i64* %_2546
  %_2547 = load i64, i64* %_2477
  %_2548 = add i64 %_2547, 1
  store i64 %_2548, i64* %_2477
  %_2549 = load i64, i64* %_2475
  %_2550 = add i64 %_2549, 1
  store i64 %_2550, i64* %_2475
  br label %_cnd2536
_end2537:
  br label %_cnd2554
_cnd2554:
  %_2551 = load i64, i64* %_2476
  %_2552 = load i64, i64* %_high2473
  %_2553 = icmp sle i64 %_2551, %_2552
  br i1 %_2553, label %_loop2556, label %_end2555
_loop2556:
  %_2557 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2471
  %_2558 = load i64, i64* %_2476
  %_2561 = bitcast { i64, [0 x i64] }* %_2557 to i64*
  %_2559 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2557, i32 0, i32 1, i64 %_2558
  %_2560 = load i64, i64* %_2559
  %_2562 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2480
  %_2563 = load i64, i64* %_2477
  %_2564 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2562, i32 0, i32 1, i64 %_2563
  store i64 %_2560, i64* %_2564
  %_2565 = load i64, i64* %_2477
  %_2566 = add i64 %_2565, 1
  store i64 %_2566, i64* %_2477
  %_2567 = load i64, i64* %_2476
  %_2568 = add i64 %_2567, 1
  store i64 %_2568, i64* %_2476
  br label %_cnd2554
_end2555:
  %_2569 = load i64, i64* %_low2472
  store i64 %_2569, i64* %_2475
  br label %_cnd2573
_cnd2573:
  %_2570 = load i64, i64* %_2475
  %_2571 = load i64, i64* %_2477
  %_2572 = icmp slt i64 %_2570, %_2571
  br i1 %_2572, label %_loop2575, label %_end2574
_loop2575:
  %_2576 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2480
  %_2577 = load i64, i64* %_2475
  %_2580 = bitcast { i64, [0 x i64] }* %_2576 to i64*
  %_2578 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2576, i32 0, i32 1, i64 %_2577
  %_2579 = load i64, i64* %_2578
  %_2581 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2471
  %_2582 = load i64, i64* %_2475
  %_2583 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2581, i32 0, i32 1, i64 %_2582
  store i64 %_2579, i64* %_2583
  %_2584 = load i64, i64* %_2475
  %_2585 = add i64 %_2584, 1
  store i64 %_2585, i64* %_2475
  br label %_cnd2573
_end2574:
  ret void
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
