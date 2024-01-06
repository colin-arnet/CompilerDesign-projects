; generated from: oatprograms/bsort.oat
target triple = "x86_64-unknown-linux"
@_2652 = global [2 x i8] c" \00"

define void @bubble_sort({ i64, [0 x i64] }* %numbers, i64 %array_size) {
  %_2663 = alloca i64
  %_2666 = alloca i64
  %_2672 = alloca i64
  %_array_size2662 = alloca i64
  store i64 %array_size, i64* %_array_size2662
  %_numbers2661 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %numbers, { i64, [0 x i64] }** %_numbers2661
  store i64 0, i64* %_2663
  %_2664 = load i64, i64* %_array_size2662
  %_2665 = sub i64 %_2664, 1
  store i64 %_2665, i64* %_2666
  br label %_cnd2669
_cnd2669:
  %_2667 = load i64, i64* %_2666
  %_2668 = icmp sgt i64 %_2667, 0
  br i1 %_2668, label %_loop2671, label %_end2670
_loop2671:
  store i64 1, i64* %_2672
  br label %_cnd2676
_cnd2676:
  %_2673 = load i64, i64* %_2672
  %_2674 = load i64, i64* %_2666
  %_2675 = icmp sle i64 %_2673, %_2674
  br i1 %_2675, label %_loop2678, label %_end2677
_loop2678:
  %_2679 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2661
  %_2680 = load i64, i64* %_2672
  %_2681 = sub i64 %_2680, 1
  %_2684 = bitcast { i64, [0 x i64] }* %_2679 to i64*
  %_2682 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2679, i32 0, i32 1, i64 %_2681
  %_2683 = load i64, i64* %_2682
  %_2685 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2661
  %_2686 = load i64, i64* %_2666
  %_2689 = bitcast { i64, [0 x i64] }* %_2685 to i64*
  %_2687 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2685, i32 0, i32 1, i64 %_2686
  %_2688 = load i64, i64* %_2687
  %_2690 = icmp sgt i64 %_2683, %_2688
  br i1 %_2690, label %_if2691, label %_else2692
_if2691:
  %_2694 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2661
  %_2695 = load i64, i64* %_2672
  %_2696 = sub i64 %_2695, 1
  %_2699 = bitcast { i64, [0 x i64] }* %_2694 to i64*
  %_2697 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2694, i32 0, i32 1, i64 %_2696
  %_2698 = load i64, i64* %_2697
  store i64 %_2698, i64* %_2663
  %_2700 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2661
  %_2701 = load i64, i64* %_2666
  %_2704 = bitcast { i64, [0 x i64] }* %_2700 to i64*
  %_2702 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2700, i32 0, i32 1, i64 %_2701
  %_2703 = load i64, i64* %_2702
  %_2705 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2661
  %_2706 = load i64, i64* %_2672
  %_2707 = sub i64 %_2706, 1
  %_2708 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2705, i32 0, i32 1, i64 %_2707
  store i64 %_2703, i64* %_2708
  %_2709 = load i64, i64* %_2663
  %_2710 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2661
  %_2711 = load i64, i64* %_2666
  %_2712 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2710, i32 0, i32 1, i64 %_2711
  store i64 %_2709, i64* %_2712
  br label %_else2692
_else2692:
  %_2713 = load i64, i64* %_2672
  %_2714 = add i64 %_2713, 1
  store i64 %_2714, i64* %_2672
  br label %_cnd2676
_end2677:
  %_2715 = load i64, i64* %_2666
  %_2716 = sub i64 %_2715, 1
  store i64 %_2716, i64* %_2666
  br label %_cnd2669
_end2670:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2632 = alloca { i64, [0 x i64] }*
  %_argv2629 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2629
  %_argc2628 = alloca i64
  store i64 %argc, i64* %_argc2628
  %_raw_array2630 = call i64* @oat_alloc_array(i64 8)
  %_array2631 = bitcast i64* %_raw_array2630 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2631, { i64, [0 x i64] }** %_2632
  %_2633 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2632
  %_2634 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2633, i32 0, i32 1, i32 0
  store i64 121, i64* %_2634
  %_2635 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2632
  %_2636 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2635, i32 0, i32 1, i32 1
  store i64 125, i64* %_2636
  %_2637 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2632
  %_2638 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2637, i32 0, i32 1, i32 2
  store i64 120, i64* %_2638
  %_2639 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2632
  %_2640 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2639, i32 0, i32 1, i32 3
  store i64 111, i64* %_2640
  %_2641 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2632
  %_2642 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2641, i32 0, i32 1, i32 4
  store i64 116, i64* %_2642
  %_2643 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2632
  %_2644 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2643, i32 0, i32 1, i32 5
  store i64 110, i64* %_2644
  %_2645 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2632
  %_2646 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2645, i32 0, i32 1, i32 6
  store i64 117, i64* %_2646
  %_2647 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2632
  %_2648 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2647, i32 0, i32 1, i32 7
  store i64 119, i64* %_2648
  %_2649 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2632
  %_2650 = call i8* @string_of_array({ i64, [0 x i64] }* %_2649)
  call void @print_string(i8* %_2650)
  %_2653 = bitcast [2 x i8]* @_2652 to i8*
  call void @print_string(i8* %_2653)
  %_2655 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2632
  call void @bubble_sort({ i64, [0 x i64] }* %_2655, i64 8)
  %_2657 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2632
  %_2658 = call i8* @string_of_array({ i64, [0 x i64] }* %_2657)
  call void @print_string(i8* %_2658)
  %_2660 = mul i64 1, -1
  ret i64 %_2660
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
