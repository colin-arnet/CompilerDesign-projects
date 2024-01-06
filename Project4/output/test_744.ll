; generated from: oatprograms/msort2.oat
target triple = "x86_64-unknown-linux"
@_2809 = global [2 x i8] c" \00"
@_2815 = global [2 x i8] c" \00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2802 = alloca { i64, [0 x i64] }*
  %_2803 = alloca i64
  %_argv2789 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2789
  %_argc2788 = alloca i64
  store i64 %argc, i64* %_argc2788
  %_raw_array2790 = call i64* @oat_alloc_array(i64 10)
  %_array2791 = bitcast i64* %_raw_array2790 to { i64, [0 x i64] }*
  %_2801 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2791, i32 0, i32 1, i32 9
  store i64 117, i64* %_2801
  %_2800 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2791, i32 0, i32 1, i32 8
  store i64 118, i64* %_2800
  %_2799 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2791, i32 0, i32 1, i32 7
  store i64 119, i64* %_2799
  %_2798 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2791, i32 0, i32 1, i32 6
  store i64 120, i64* %_2798
  %_2797 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2791, i32 0, i32 1, i32 5
  store i64 121, i64* %_2797
  %_2796 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2791, i32 0, i32 1, i32 4
  store i64 122, i64* %_2796
  %_2795 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2791, i32 0, i32 1, i32 3
  store i64 123, i64* %_2795
  %_2794 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2791, i32 0, i32 1, i32 2
  store i64 124, i64* %_2794
  %_2793 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2791, i32 0, i32 1, i32 1
  store i64 125, i64* %_2793
  %_2792 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2791, i32 0, i32 1, i32 0
  store i64 126, i64* %_2792
  store { i64, [0 x i64] }* %_array2791, { i64, [0 x i64] }** %_2802
  store i64 0, i64* %_2803
  %_2804 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2802
  %_2805 = call i8* @string_of_array({ i64, [0 x i64] }* %_2804)
  call void @print_string(i8* %_2805)
  %_2807 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2802
  call void @oat_mergesort({ i64, [0 x i64] }* %_2807, i64 0, i64 9)
  %_2810 = bitcast [2 x i8]* @_2809 to i8*
  call void @print_string(i8* %_2810)
  %_2812 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2802
  %_2813 = call i8* @string_of_array({ i64, [0 x i64] }* %_2812)
  call void @print_string(i8* %_2813)
  %_2816 = bitcast [2 x i8]* @_2815 to i8*
  call void @print_string(i8* %_2816)
  %_2818 = load i64, i64* %_2803
  ret i64 %_2818
}

define void @oat_mergesort({ i64, [0 x i64] }* %a, i64 %low, i64 %high) {
  %_2763 = alloca i64
  %_high2762 = alloca i64
  store i64 %high, i64* %_high2762
  %_low2761 = alloca i64
  store i64 %low, i64* %_low2761
  %_a2760 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a2760
  store i64 0, i64* %_2763
  %_2764 = load i64, i64* %_low2761
  %_2765 = load i64, i64* %_high2762
  %_2766 = icmp slt i64 %_2764, %_2765
  br i1 %_2766, label %_if2767, label %_else2768
_if2767:
  %_2770 = load i64, i64* %_low2761
  %_2771 = load i64, i64* %_high2762
  %_2772 = add i64 %_2770, %_2771
  %_2773 = lshr i64 %_2772, 1
  store i64 %_2773, i64* %_2763
  %_2776 = load i64, i64* %_2763
  %_2775 = load i64, i64* %_low2761
  %_2774 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2760
  call void @oat_mergesort({ i64, [0 x i64] }* %_2774, i64 %_2775, i64 %_2776)
  %_2781 = load i64, i64* %_high2762
  %_2779 = load i64, i64* %_2763
  %_2780 = add i64 %_2779, 1
  %_2778 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2760
  call void @oat_mergesort({ i64, [0 x i64] }* %_2778, i64 %_2780, i64 %_2781)
  %_2786 = load i64, i64* %_2763
  %_2785 = load i64, i64* %_high2762
  %_2784 = load i64, i64* %_low2761
  %_2783 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2760
  call void @merge({ i64, [0 x i64] }* %_2783, i64 %_2784, i64 %_2785, i64 %_2786)
  br label %_else2768
_else2768:
  ret void
}

define void @merge({ i64, [0 x i64] }* %a, i64 %low, i64 %high, i64 %mid) {
  %_2649 = alloca i64
  %_2650 = alloca i64
  %_2651 = alloca i64
  %_2654 = alloca { i64, [0 x i64] }*
  %_mid2648 = alloca i64
  store i64 %mid, i64* %_mid2648
  %_high2647 = alloca i64
  store i64 %high, i64* %_high2647
  %_low2646 = alloca i64
  store i64 %low, i64* %_low2646
  %_a2645 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a2645
  store i64 0, i64* %_2649
  store i64 0, i64* %_2650
  store i64 0, i64* %_2651
  %_raw_array2652 = call i64* @oat_alloc_array(i64 50)
  %_array2653 = bitcast i64* %_raw_array2652 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2653, { i64, [0 x i64] }** %_2654
  %_2655 = load i64, i64* %_low2646
  store i64 %_2655, i64* %_2649
  %_2656 = load i64, i64* %_mid2648
  %_2657 = add i64 %_2656, 1
  store i64 %_2657, i64* %_2650
  %_2658 = load i64, i64* %_low2646
  store i64 %_2658, i64* %_2651
  br label %_cnd2666
_cnd2666:
  %_2659 = load i64, i64* %_2649
  %_2660 = load i64, i64* %_mid2648
  %_2661 = icmp sle i64 %_2659, %_2660
  %_2662 = load i64, i64* %_2650
  %_2663 = load i64, i64* %_high2647
  %_2664 = icmp sle i64 %_2662, %_2663
  %_2665 = and i1 %_2661, %_2664
  br i1 %_2665, label %_loop2668, label %_end2667
_loop2668:
  %_2669 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2645
  %_2670 = load i64, i64* %_2649
  %_2673 = bitcast { i64, [0 x i64] }* %_2669 to i64*
  %_2671 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2669, i32 0, i32 1, i64 %_2670
  %_2672 = load i64, i64* %_2671
  %_2674 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2645
  %_2675 = load i64, i64* %_2650
  %_2678 = bitcast { i64, [0 x i64] }* %_2674 to i64*
  %_2676 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2674, i32 0, i32 1, i64 %_2675
  %_2677 = load i64, i64* %_2676
  %_2679 = icmp slt i64 %_2672, %_2677
  br i1 %_2679, label %_if2680, label %_else2681
_if2680:
  %_2683 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2645
  %_2684 = load i64, i64* %_2649
  %_2687 = bitcast { i64, [0 x i64] }* %_2683 to i64*
  %_2685 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2683, i32 0, i32 1, i64 %_2684
  %_2686 = load i64, i64* %_2685
  %_2688 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2654
  %_2689 = load i64, i64* %_2651
  %_2690 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2688, i32 0, i32 1, i64 %_2689
  store i64 %_2686, i64* %_2690
  %_2691 = load i64, i64* %_2651
  %_2692 = add i64 %_2691, 1
  store i64 %_2692, i64* %_2651
  %_2693 = load i64, i64* %_2649
  %_2694 = add i64 %_2693, 1
  store i64 %_2694, i64* %_2649
  br label %_end2682
_else2681:
  %_2695 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2645
  %_2696 = load i64, i64* %_2650
  %_2699 = bitcast { i64, [0 x i64] }* %_2695 to i64*
  %_2697 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2695, i32 0, i32 1, i64 %_2696
  %_2698 = load i64, i64* %_2697
  %_2700 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2654
  %_2701 = load i64, i64* %_2651
  %_2702 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2700, i32 0, i32 1, i64 %_2701
  store i64 %_2698, i64* %_2702
  %_2703 = load i64, i64* %_2651
  %_2704 = add i64 %_2703, 1
  store i64 %_2704, i64* %_2651
  %_2705 = load i64, i64* %_2650
  %_2706 = add i64 %_2705, 1
  store i64 %_2706, i64* %_2650
  br label %_end2682
_end2682:
  br label %_cnd2666
_end2667:
  br label %_cnd2710
_cnd2710:
  %_2707 = load i64, i64* %_2649
  %_2708 = load i64, i64* %_mid2648
  %_2709 = icmp sle i64 %_2707, %_2708
  br i1 %_2709, label %_loop2712, label %_end2711
_loop2712:
  %_2713 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2645
  %_2714 = load i64, i64* %_2649
  %_2717 = bitcast { i64, [0 x i64] }* %_2713 to i64*
  %_2715 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2713, i32 0, i32 1, i64 %_2714
  %_2716 = load i64, i64* %_2715
  %_2718 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2654
  %_2719 = load i64, i64* %_2651
  %_2720 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2718, i32 0, i32 1, i64 %_2719
  store i64 %_2716, i64* %_2720
  %_2721 = load i64, i64* %_2651
  %_2722 = add i64 %_2721, 1
  store i64 %_2722, i64* %_2651
  %_2723 = load i64, i64* %_2649
  %_2724 = add i64 %_2723, 1
  store i64 %_2724, i64* %_2649
  br label %_cnd2710
_end2711:
  br label %_cnd2728
_cnd2728:
  %_2725 = load i64, i64* %_2650
  %_2726 = load i64, i64* %_high2647
  %_2727 = icmp sle i64 %_2725, %_2726
  br i1 %_2727, label %_loop2730, label %_end2729
_loop2730:
  %_2731 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2645
  %_2732 = load i64, i64* %_2650
  %_2735 = bitcast { i64, [0 x i64] }* %_2731 to i64*
  %_2733 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2731, i32 0, i32 1, i64 %_2732
  %_2734 = load i64, i64* %_2733
  %_2736 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2654
  %_2737 = load i64, i64* %_2651
  %_2738 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2736, i32 0, i32 1, i64 %_2737
  store i64 %_2734, i64* %_2738
  %_2739 = load i64, i64* %_2651
  %_2740 = add i64 %_2739, 1
  store i64 %_2740, i64* %_2651
  %_2741 = load i64, i64* %_2650
  %_2742 = add i64 %_2741, 1
  store i64 %_2742, i64* %_2650
  br label %_cnd2728
_end2729:
  %_2743 = load i64, i64* %_low2646
  store i64 %_2743, i64* %_2649
  br label %_cnd2747
_cnd2747:
  %_2744 = load i64, i64* %_2649
  %_2745 = load i64, i64* %_2651
  %_2746 = icmp slt i64 %_2744, %_2745
  br i1 %_2746, label %_loop2749, label %_end2748
_loop2749:
  %_2750 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2654
  %_2751 = load i64, i64* %_2649
  %_2754 = bitcast { i64, [0 x i64] }* %_2750 to i64*
  %_2752 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2750, i32 0, i32 1, i64 %_2751
  %_2753 = load i64, i64* %_2752
  %_2755 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2645
  %_2756 = load i64, i64* %_2649
  %_2757 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2755, i32 0, i32 1, i64 %_2756
  store i64 %_2753, i64* %_2757
  %_2758 = load i64, i64* %_2649
  %_2759 = add i64 %_2758, 1
  store i64 %_2759, i64* %_2649
  br label %_cnd2747
_end2748:
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
