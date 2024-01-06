; generated from: oatprograms/msort.oat
target triple = "x86_64-unknown-linux"
@_2881 = global [2 x i8] c" \00"
@_2887 = global [2 x i8] c" \00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2862 = alloca i64
  %_2875 = alloca { i64, [0 x i64] }*
  %_argv2861 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2861
  %_argc2860 = alloca i64
  store i64 %argc, i64* %_argc2860
  store i64 0, i64* %_2862
  %_raw_array2863 = call i64* @oat_alloc_array(i64 10)
  %_array2864 = bitcast i64* %_raw_array2863 to { i64, [0 x i64] }*
  %_2874 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2864, i32 0, i32 1, i32 9
  store i64 117, i64* %_2874
  %_2873 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2864, i32 0, i32 1, i32 8
  store i64 118, i64* %_2873
  %_2872 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2864, i32 0, i32 1, i32 7
  store i64 119, i64* %_2872
  %_2871 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2864, i32 0, i32 1, i32 6
  store i64 120, i64* %_2871
  %_2870 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2864, i32 0, i32 1, i32 5
  store i64 121, i64* %_2870
  %_2869 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2864, i32 0, i32 1, i32 4
  store i64 122, i64* %_2869
  %_2868 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2864, i32 0, i32 1, i32 3
  store i64 123, i64* %_2868
  %_2867 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2864, i32 0, i32 1, i32 2
  store i64 124, i64* %_2867
  %_2866 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2864, i32 0, i32 1, i32 1
  store i64 125, i64* %_2866
  %_2865 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2864, i32 0, i32 1, i32 0
  store i64 126, i64* %_2865
  store { i64, [0 x i64] }* %_array2864, { i64, [0 x i64] }** %_2875
  %_2876 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2875
  %_2877 = call i8* @string_of_array({ i64, [0 x i64] }* %_2876)
  call void @print_string(i8* %_2877)
  %_2879 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2875
  call void @oat_mergesort({ i64, [0 x i64] }* %_2879, i64 0, i64 9)
  %_2882 = bitcast [2 x i8]* @_2881 to i8*
  call void @print_string(i8* %_2882)
  %_2884 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2875
  %_2885 = call i8* @string_of_array({ i64, [0 x i64] }* %_2884)
  call void @print_string(i8* %_2885)
  %_2888 = bitcast [2 x i8]* @_2887 to i8*
  call void @print_string(i8* %_2888)
  %_2890 = load i64, i64* %_2862
  ret i64 %_2890
}

define void @oat_mergesort({ i64, [0 x i64] }* %a, i64 %low, i64 %high) {
  %_2835 = alloca i64
  %_high2834 = alloca i64
  store i64 %high, i64* %_high2834
  %_low2833 = alloca i64
  store i64 %low, i64* %_low2833
  %_a2832 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a2832
  store i64 0, i64* %_2835
  %_2836 = load i64, i64* %_low2833
  %_2837 = load i64, i64* %_high2834
  %_2838 = icmp slt i64 %_2836, %_2837
  br i1 %_2838, label %_if2839, label %_else2840
_if2839:
  %_2842 = load i64, i64* %_low2833
  %_2843 = load i64, i64* %_high2834
  %_2844 = add i64 %_2842, %_2843
  %_2845 = lshr i64 %_2844, 1
  store i64 %_2845, i64* %_2835
  %_2848 = load i64, i64* %_2835
  %_2847 = load i64, i64* %_low2833
  %_2846 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2832
  call void @oat_mergesort({ i64, [0 x i64] }* %_2846, i64 %_2847, i64 %_2848)
  %_2853 = load i64, i64* %_high2834
  %_2851 = load i64, i64* %_2835
  %_2852 = add i64 %_2851, 1
  %_2850 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2832
  call void @oat_mergesort({ i64, [0 x i64] }* %_2850, i64 %_2852, i64 %_2853)
  %_2858 = load i64, i64* %_2835
  %_2857 = load i64, i64* %_high2834
  %_2856 = load i64, i64* %_low2833
  %_2855 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2832
  call void @merge({ i64, [0 x i64] }* %_2855, i64 %_2856, i64 %_2857, i64 %_2858)
  br label %_else2840
_else2840:
  ret void
}

define void @merge({ i64, [0 x i64] }* %a, i64 %low, i64 %high, i64 %mid) {
  %_2721 = alloca i64
  %_2722 = alloca i64
  %_2723 = alloca i64
  %_2726 = alloca { i64, [0 x i64] }*
  %_mid2720 = alloca i64
  store i64 %mid, i64* %_mid2720
  %_high2719 = alloca i64
  store i64 %high, i64* %_high2719
  %_low2718 = alloca i64
  store i64 %low, i64* %_low2718
  %_a2717 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a2717
  store i64 0, i64* %_2721
  store i64 0, i64* %_2722
  store i64 0, i64* %_2723
  %_raw_array2724 = call i64* @oat_alloc_array(i64 50)
  %_array2725 = bitcast i64* %_raw_array2724 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2725, { i64, [0 x i64] }** %_2726
  %_2727 = load i64, i64* %_low2718
  store i64 %_2727, i64* %_2721
  %_2728 = load i64, i64* %_mid2720
  %_2729 = add i64 %_2728, 1
  store i64 %_2729, i64* %_2722
  %_2730 = load i64, i64* %_low2718
  store i64 %_2730, i64* %_2723
  br label %_cnd2738
_cnd2738:
  %_2731 = load i64, i64* %_2721
  %_2732 = load i64, i64* %_mid2720
  %_2733 = icmp sle i64 %_2731, %_2732
  %_2734 = load i64, i64* %_2722
  %_2735 = load i64, i64* %_high2719
  %_2736 = icmp sle i64 %_2734, %_2735
  %_2737 = and i1 %_2733, %_2736
  br i1 %_2737, label %_loop2740, label %_end2739
_loop2740:
  %_2741 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2717
  %_2742 = load i64, i64* %_2721
  %_2745 = bitcast { i64, [0 x i64] }* %_2741 to i64*
  %_2743 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2741, i32 0, i32 1, i64 %_2742
  %_2744 = load i64, i64* %_2743
  %_2746 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2717
  %_2747 = load i64, i64* %_2722
  %_2750 = bitcast { i64, [0 x i64] }* %_2746 to i64*
  %_2748 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2746, i32 0, i32 1, i64 %_2747
  %_2749 = load i64, i64* %_2748
  %_2751 = icmp slt i64 %_2744, %_2749
  br i1 %_2751, label %_if2752, label %_else2753
_if2752:
  %_2755 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2717
  %_2756 = load i64, i64* %_2721
  %_2759 = bitcast { i64, [0 x i64] }* %_2755 to i64*
  %_2757 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2755, i32 0, i32 1, i64 %_2756
  %_2758 = load i64, i64* %_2757
  %_2760 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2726
  %_2761 = load i64, i64* %_2723
  %_2762 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2760, i32 0, i32 1, i64 %_2761
  store i64 %_2758, i64* %_2762
  %_2763 = load i64, i64* %_2723
  %_2764 = add i64 %_2763, 1
  store i64 %_2764, i64* %_2723
  %_2765 = load i64, i64* %_2721
  %_2766 = add i64 %_2765, 1
  store i64 %_2766, i64* %_2721
  br label %_end2754
_else2753:
  %_2767 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2717
  %_2768 = load i64, i64* %_2722
  %_2771 = bitcast { i64, [0 x i64] }* %_2767 to i64*
  %_2769 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2767, i32 0, i32 1, i64 %_2768
  %_2770 = load i64, i64* %_2769
  %_2772 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2726
  %_2773 = load i64, i64* %_2723
  %_2774 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2772, i32 0, i32 1, i64 %_2773
  store i64 %_2770, i64* %_2774
  %_2775 = load i64, i64* %_2723
  %_2776 = add i64 %_2775, 1
  store i64 %_2776, i64* %_2723
  %_2777 = load i64, i64* %_2722
  %_2778 = add i64 %_2777, 1
  store i64 %_2778, i64* %_2722
  br label %_end2754
_end2754:
  br label %_cnd2738
_end2739:
  br label %_cnd2782
_cnd2782:
  %_2779 = load i64, i64* %_2721
  %_2780 = load i64, i64* %_mid2720
  %_2781 = icmp sle i64 %_2779, %_2780
  br i1 %_2781, label %_loop2784, label %_end2783
_loop2784:
  %_2785 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2717
  %_2786 = load i64, i64* %_2721
  %_2789 = bitcast { i64, [0 x i64] }* %_2785 to i64*
  %_2787 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2785, i32 0, i32 1, i64 %_2786
  %_2788 = load i64, i64* %_2787
  %_2790 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2726
  %_2791 = load i64, i64* %_2723
  %_2792 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2790, i32 0, i32 1, i64 %_2791
  store i64 %_2788, i64* %_2792
  %_2793 = load i64, i64* %_2723
  %_2794 = add i64 %_2793, 1
  store i64 %_2794, i64* %_2723
  %_2795 = load i64, i64* %_2721
  %_2796 = add i64 %_2795, 1
  store i64 %_2796, i64* %_2721
  br label %_cnd2782
_end2783:
  br label %_cnd2800
_cnd2800:
  %_2797 = load i64, i64* %_2722
  %_2798 = load i64, i64* %_high2719
  %_2799 = icmp sle i64 %_2797, %_2798
  br i1 %_2799, label %_loop2802, label %_end2801
_loop2802:
  %_2803 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2717
  %_2804 = load i64, i64* %_2722
  %_2807 = bitcast { i64, [0 x i64] }* %_2803 to i64*
  %_2805 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2803, i32 0, i32 1, i64 %_2804
  %_2806 = load i64, i64* %_2805
  %_2808 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2726
  %_2809 = load i64, i64* %_2723
  %_2810 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2808, i32 0, i32 1, i64 %_2809
  store i64 %_2806, i64* %_2810
  %_2811 = load i64, i64* %_2723
  %_2812 = add i64 %_2811, 1
  store i64 %_2812, i64* %_2723
  %_2813 = load i64, i64* %_2722
  %_2814 = add i64 %_2813, 1
  store i64 %_2814, i64* %_2722
  br label %_cnd2800
_end2801:
  %_2815 = load i64, i64* %_low2718
  store i64 %_2815, i64* %_2721
  br label %_cnd2819
_cnd2819:
  %_2816 = load i64, i64* %_2721
  %_2817 = load i64, i64* %_2723
  %_2818 = icmp slt i64 %_2816, %_2817
  br i1 %_2818, label %_loop2821, label %_end2820
_loop2821:
  %_2822 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2726
  %_2823 = load i64, i64* %_2721
  %_2826 = bitcast { i64, [0 x i64] }* %_2822 to i64*
  %_2824 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2822, i32 0, i32 1, i64 %_2823
  %_2825 = load i64, i64* %_2824
  %_2827 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2717
  %_2828 = load i64, i64* %_2721
  %_2829 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2827, i32 0, i32 1, i64 %_2828
  store i64 %_2825, i64* %_2829
  %_2830 = load i64, i64* %_2721
  %_2831 = add i64 %_2830, 1
  store i64 %_2831, i64* %_2721
  br label %_cnd2819
_end2820:
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
