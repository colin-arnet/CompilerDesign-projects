; generated from: oatprograms/selectionsort.oat
target triple = "x86_64-unknown-linux"
define i64 @getminindex({ i64, [0 x i64] }* %a, i64 %s, i64 %b) {
  %_2886 = alloca i64
  %_2892 = alloca i64
  %_2894 = alloca i64
  %_b2884 = alloca i64
  store i64 %b, i64* %_b2884
  %_s2883 = alloca i64
  store i64 %s, i64* %_s2883
  %_a2882 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a2882
  %_2885 = load i64, i64* %_s2883
  store i64 %_2885, i64* %_2886
  %_2887 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2882
  %_2888 = load i64, i64* %_s2883
  %_2891 = bitcast { i64, [0 x i64] }* %_2887 to i64*
  %_2889 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2887, i32 0, i32 1, i64 %_2888
  %_2890 = load i64, i64* %_2889
  store i64 %_2890, i64* %_2892
  %_2893 = load i64, i64* %_s2883
  store i64 %_2893, i64* %_2894
  br label %_cnd2898
_cnd2898:
  %_2895 = load i64, i64* %_2886
  %_2896 = load i64, i64* %_b2884
  %_2897 = icmp slt i64 %_2895, %_2896
  br i1 %_2897, label %_loop2900, label %_end2899
_loop2900:
  %_2901 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2882
  %_2902 = load i64, i64* %_2886
  %_2905 = bitcast { i64, [0 x i64] }* %_2901 to i64*
  %_2903 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2901, i32 0, i32 1, i64 %_2902
  %_2904 = load i64, i64* %_2903
  %_2906 = load i64, i64* %_2892
  %_2907 = icmp slt i64 %_2904, %_2906
  br i1 %_2907, label %_if2908, label %_else2909
_if2908:
  %_2911 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2882
  %_2912 = load i64, i64* %_2886
  %_2915 = bitcast { i64, [0 x i64] }* %_2911 to i64*
  %_2913 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2911, i32 0, i32 1, i64 %_2912
  %_2914 = load i64, i64* %_2913
  store i64 %_2914, i64* %_2892
  %_2916 = load i64, i64* %_2886
  store i64 %_2916, i64* %_2894
  br label %_else2909
_else2909:
  %_2917 = load i64, i64* %_2886
  %_2918 = add i64 %_2917, 1
  store i64 %_2918, i64* %_2886
  br label %_cnd2898
_end2899:
  %_2919 = load i64, i64* %_2894
  ret i64 %_2919
}

define void @selectionsort({ i64, [0 x i64] }* %a, i64 %s) {
  %_2850 = alloca i64
  %_2851 = alloca i64
  %_2852 = alloca i64
  %_s2849 = alloca i64
  store i64 %s, i64* %_s2849
  %_a2848 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a2848
  store i64 0, i64* %_2850
  store i64 0, i64* %_2851
  store i64 0, i64* %_2852
  br label %_cnd2856
_cnd2856:
  %_2853 = load i64, i64* %_2852
  %_2854 = load i64, i64* %_s2849
  %_2855 = icmp slt i64 %_2853, %_2854
  br i1 %_2855, label %_loop2858, label %_end2857
_loop2858:
  %_2861 = load i64, i64* %_s2849
  %_2860 = load i64, i64* %_2852
  %_2859 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2848
  %_2862 = call i64 @getminindex({ i64, [0 x i64] }* %_2859, i64 %_2860, i64 %_2861)
  store i64 %_2862, i64* %_2851
  %_2863 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2848
  %_2864 = load i64, i64* %_2852
  %_2867 = bitcast { i64, [0 x i64] }* %_2863 to i64*
  %_2865 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2863, i32 0, i32 1, i64 %_2864
  %_2866 = load i64, i64* %_2865
  store i64 %_2866, i64* %_2850
  %_2868 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2848
  %_2869 = load i64, i64* %_2851
  %_2872 = bitcast { i64, [0 x i64] }* %_2868 to i64*
  %_2870 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2868, i32 0, i32 1, i64 %_2869
  %_2871 = load i64, i64* %_2870
  %_2873 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2848
  %_2874 = load i64, i64* %_2852
  %_2875 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2873, i32 0, i32 1, i64 %_2874
  store i64 %_2871, i64* %_2875
  %_2876 = load i64, i64* %_2850
  %_2877 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2848
  %_2878 = load i64, i64* %_2851
  %_2879 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2877, i32 0, i32 1, i64 %_2878
  store i64 %_2876, i64* %_2879
  %_2880 = load i64, i64* %_2852
  %_2881 = add i64 %_2880, 1
  store i64 %_2881, i64* %_2852
  br label %_cnd2856
_end2857:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2831 = alloca { i64, [0 x i64] }*
  %_2834 = alloca i64
  %_argv2820 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2820
  %_argc2819 = alloca i64
  store i64 %argc, i64* %_argc2819
  %_raw_array2821 = call i64* @oat_alloc_array(i64 8)
  %_array2822 = bitcast i64* %_raw_array2821 to { i64, [0 x i64] }*
  %_2830 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2822, i32 0, i32 1, i32 7
  store i64 0, i64* %_2830
  %_2829 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2822, i32 0, i32 1, i32 6
  store i64 2, i64* %_2829
  %_2828 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2822, i32 0, i32 1, i32 5
  store i64 99, i64* %_2828
  %_2827 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2822, i32 0, i32 1, i32 4
  store i64 30, i64* %_2827
  %_2826 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2822, i32 0, i32 1, i32 3
  store i64 65, i64* %_2826
  %_2825 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2822, i32 0, i32 1, i32 2
  store i64 1, i64* %_2825
  %_2824 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2822, i32 0, i32 1, i32 1
  store i64 200, i64* %_2824
  %_2823 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2822, i32 0, i32 1, i32 0
  store i64 5, i64* %_2823
  store { i64, [0 x i64] }* %_array2822, { i64, [0 x i64] }** %_2831
  %_2832 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2831
  call void @selectionsort({ i64, [0 x i64] }* %_2832, i64 8)
  store i64 0, i64* %_2834
  br label %_cnd2837
_cnd2837:
  %_2835 = load i64, i64* %_2834
  %_2836 = icmp slt i64 %_2835, 8
  br i1 %_2836, label %_loop2839, label %_end2838
_loop2839:
  %_2840 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2831
  %_2841 = load i64, i64* %_2834
  %_2844 = bitcast { i64, [0 x i64] }* %_2840 to i64*
  %_2842 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2840, i32 0, i32 1, i64 %_2841
  %_2843 = load i64, i64* %_2842
  call void @print_int(i64 %_2843)
  %_2846 = load i64, i64* %_2834
  %_2847 = add i64 %_2846, 1
  store i64 %_2847, i64* %_2834
  br label %_cnd2837
_end2838:
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
