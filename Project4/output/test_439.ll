; generated from: oatprograms/msort2.oat
target triple = "x86_64-unknown-linux"
@_3055 = global [2 x i8] c" \00"
@_3061 = global [2 x i8] c" \00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3048 = alloca { i64, [0 x i64] }*
  %_3049 = alloca i64
  %_argv3035 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3035
  %_argc3034 = alloca i64
  store i64 %argc, i64* %_argc3034
  %_raw_array3036 = call i64* @oat_alloc_array(i64 10)
  %_array3037 = bitcast i64* %_raw_array3036 to { i64, [0 x i64] }*
  %_3047 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3037, i32 0, i32 1, i32 9
  store i64 117, i64* %_3047
  %_3046 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3037, i32 0, i32 1, i32 8
  store i64 118, i64* %_3046
  %_3045 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3037, i32 0, i32 1, i32 7
  store i64 119, i64* %_3045
  %_3044 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3037, i32 0, i32 1, i32 6
  store i64 120, i64* %_3044
  %_3043 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3037, i32 0, i32 1, i32 5
  store i64 121, i64* %_3043
  %_3042 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3037, i32 0, i32 1, i32 4
  store i64 122, i64* %_3042
  %_3041 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3037, i32 0, i32 1, i32 3
  store i64 123, i64* %_3041
  %_3040 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3037, i32 0, i32 1, i32 2
  store i64 124, i64* %_3040
  %_3039 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3037, i32 0, i32 1, i32 1
  store i64 125, i64* %_3039
  %_3038 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3037, i32 0, i32 1, i32 0
  store i64 126, i64* %_3038
  store { i64, [0 x i64] }* %_array3037, { i64, [0 x i64] }** %_3048
  store i64 0, i64* %_3049
  %_3050 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3048
  %_3051 = call i8* @string_of_array({ i64, [0 x i64] }* %_3050)
  call void @print_string(i8* %_3051)
  %_3053 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3048
  call void @oat_mergesort({ i64, [0 x i64] }* %_3053, i64 0, i64 9)
  %_3056 = bitcast [2 x i8]* @_3055 to i8*
  call void @print_string(i8* %_3056)
  %_3058 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3048
  %_3059 = call i8* @string_of_array({ i64, [0 x i64] }* %_3058)
  call void @print_string(i8* %_3059)
  %_3062 = bitcast [2 x i8]* @_3061 to i8*
  call void @print_string(i8* %_3062)
  %_3064 = load i64, i64* %_3049
  ret i64 %_3064
}

define void @oat_mergesort({ i64, [0 x i64] }* %a, i64 %low, i64 %high) {
  %_3009 = alloca i64
  %_high3008 = alloca i64
  store i64 %high, i64* %_high3008
  %_low3007 = alloca i64
  store i64 %low, i64* %_low3007
  %_a3006 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3006
  store i64 0, i64* %_3009
  %_3010 = load i64, i64* %_low3007
  %_3011 = load i64, i64* %_high3008
  %_3012 = icmp slt i64 %_3010, %_3011
  br i1 %_3012, label %_if3013, label %_else3014
_if3013:
  %_3016 = load i64, i64* %_low3007
  %_3017 = load i64, i64* %_high3008
  %_3018 = add i64 %_3016, %_3017
  %_3019 = lshr i64 %_3018, 1
  store i64 %_3019, i64* %_3009
  %_3022 = load i64, i64* %_3009
  %_3021 = load i64, i64* %_low3007
  %_3020 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3006
  call void @oat_mergesort({ i64, [0 x i64] }* %_3020, i64 %_3021, i64 %_3022)
  %_3027 = load i64, i64* %_high3008
  %_3025 = load i64, i64* %_3009
  %_3026 = add i64 %_3025, 1
  %_3024 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3006
  call void @oat_mergesort({ i64, [0 x i64] }* %_3024, i64 %_3026, i64 %_3027)
  %_3032 = load i64, i64* %_3009
  %_3031 = load i64, i64* %_high3008
  %_3030 = load i64, i64* %_low3007
  %_3029 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3006
  call void @merge({ i64, [0 x i64] }* %_3029, i64 %_3030, i64 %_3031, i64 %_3032)
  br label %_else3014
_else3014:
  ret void
}

define void @merge({ i64, [0 x i64] }* %a, i64 %low, i64 %high, i64 %mid) {
  %_2895 = alloca i64
  %_2896 = alloca i64
  %_2897 = alloca i64
  %_2900 = alloca { i64, [0 x i64] }*
  %_mid2894 = alloca i64
  store i64 %mid, i64* %_mid2894
  %_high2893 = alloca i64
  store i64 %high, i64* %_high2893
  %_low2892 = alloca i64
  store i64 %low, i64* %_low2892
  %_a2891 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a2891
  store i64 0, i64* %_2895
  store i64 0, i64* %_2896
  store i64 0, i64* %_2897
  %_raw_array2898 = call i64* @oat_alloc_array(i64 50)
  %_array2899 = bitcast i64* %_raw_array2898 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2899, { i64, [0 x i64] }** %_2900
  %_2901 = load i64, i64* %_low2892
  store i64 %_2901, i64* %_2895
  %_2902 = load i64, i64* %_mid2894
  %_2903 = add i64 %_2902, 1
  store i64 %_2903, i64* %_2896
  %_2904 = load i64, i64* %_low2892
  store i64 %_2904, i64* %_2897
  br label %_cnd2912
_cnd2912:
  %_2905 = load i64, i64* %_2895
  %_2906 = load i64, i64* %_mid2894
  %_2907 = icmp sle i64 %_2905, %_2906
  %_2908 = load i64, i64* %_2896
  %_2909 = load i64, i64* %_high2893
  %_2910 = icmp sle i64 %_2908, %_2909
  %_2911 = and i1 %_2907, %_2910
  br i1 %_2911, label %_loop2914, label %_end2913
_loop2914:
  %_2915 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2891
  %_2916 = load i64, i64* %_2895
  %_2919 = bitcast { i64, [0 x i64] }* %_2915 to i64*
  %_2917 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2915, i32 0, i32 1, i64 %_2916
  %_2918 = load i64, i64* %_2917
  %_2920 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2891
  %_2921 = load i64, i64* %_2896
  %_2924 = bitcast { i64, [0 x i64] }* %_2920 to i64*
  %_2922 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2920, i32 0, i32 1, i64 %_2921
  %_2923 = load i64, i64* %_2922
  %_2925 = icmp slt i64 %_2918, %_2923
  br i1 %_2925, label %_if2926, label %_else2927
_if2926:
  %_2929 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2891
  %_2930 = load i64, i64* %_2895
  %_2933 = bitcast { i64, [0 x i64] }* %_2929 to i64*
  %_2931 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2929, i32 0, i32 1, i64 %_2930
  %_2932 = load i64, i64* %_2931
  %_2934 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2900
  %_2935 = load i64, i64* %_2897
  %_2936 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2934, i32 0, i32 1, i64 %_2935
  store i64 %_2932, i64* %_2936
  %_2937 = load i64, i64* %_2897
  %_2938 = add i64 %_2937, 1
  store i64 %_2938, i64* %_2897
  %_2939 = load i64, i64* %_2895
  %_2940 = add i64 %_2939, 1
  store i64 %_2940, i64* %_2895
  br label %_end2928
_else2927:
  %_2941 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2891
  %_2942 = load i64, i64* %_2896
  %_2945 = bitcast { i64, [0 x i64] }* %_2941 to i64*
  %_2943 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2941, i32 0, i32 1, i64 %_2942
  %_2944 = load i64, i64* %_2943
  %_2946 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2900
  %_2947 = load i64, i64* %_2897
  %_2948 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2946, i32 0, i32 1, i64 %_2947
  store i64 %_2944, i64* %_2948
  %_2949 = load i64, i64* %_2897
  %_2950 = add i64 %_2949, 1
  store i64 %_2950, i64* %_2897
  %_2951 = load i64, i64* %_2896
  %_2952 = add i64 %_2951, 1
  store i64 %_2952, i64* %_2896
  br label %_end2928
_end2928:
  br label %_cnd2912
_end2913:
  br label %_cnd2956
_cnd2956:
  %_2953 = load i64, i64* %_2895
  %_2954 = load i64, i64* %_mid2894
  %_2955 = icmp sle i64 %_2953, %_2954
  br i1 %_2955, label %_loop2958, label %_end2957
_loop2958:
  %_2959 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2891
  %_2960 = load i64, i64* %_2895
  %_2963 = bitcast { i64, [0 x i64] }* %_2959 to i64*
  %_2961 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2959, i32 0, i32 1, i64 %_2960
  %_2962 = load i64, i64* %_2961
  %_2964 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2900
  %_2965 = load i64, i64* %_2897
  %_2966 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2964, i32 0, i32 1, i64 %_2965
  store i64 %_2962, i64* %_2966
  %_2967 = load i64, i64* %_2897
  %_2968 = add i64 %_2967, 1
  store i64 %_2968, i64* %_2897
  %_2969 = load i64, i64* %_2895
  %_2970 = add i64 %_2969, 1
  store i64 %_2970, i64* %_2895
  br label %_cnd2956
_end2957:
  br label %_cnd2974
_cnd2974:
  %_2971 = load i64, i64* %_2896
  %_2972 = load i64, i64* %_high2893
  %_2973 = icmp sle i64 %_2971, %_2972
  br i1 %_2973, label %_loop2976, label %_end2975
_loop2976:
  %_2977 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2891
  %_2978 = load i64, i64* %_2896
  %_2981 = bitcast { i64, [0 x i64] }* %_2977 to i64*
  %_2979 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2977, i32 0, i32 1, i64 %_2978
  %_2980 = load i64, i64* %_2979
  %_2982 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2900
  %_2983 = load i64, i64* %_2897
  %_2984 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2982, i32 0, i32 1, i64 %_2983
  store i64 %_2980, i64* %_2984
  %_2985 = load i64, i64* %_2897
  %_2986 = add i64 %_2985, 1
  store i64 %_2986, i64* %_2897
  %_2987 = load i64, i64* %_2896
  %_2988 = add i64 %_2987, 1
  store i64 %_2988, i64* %_2896
  br label %_cnd2974
_end2975:
  %_2989 = load i64, i64* %_low2892
  store i64 %_2989, i64* %_2895
  br label %_cnd2993
_cnd2993:
  %_2990 = load i64, i64* %_2895
  %_2991 = load i64, i64* %_2897
  %_2992 = icmp slt i64 %_2990, %_2991
  br i1 %_2992, label %_loop2995, label %_end2994
_loop2995:
  %_2996 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2900
  %_2997 = load i64, i64* %_2895
  %_3000 = bitcast { i64, [0 x i64] }* %_2996 to i64*
  %_2998 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2996, i32 0, i32 1, i64 %_2997
  %_2999 = load i64, i64* %_2998
  %_3001 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2891
  %_3002 = load i64, i64* %_2895
  %_3003 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3001, i32 0, i32 1, i64 %_3002
  store i64 %_2999, i64* %_3003
  %_3004 = load i64, i64* %_2895
  %_3005 = add i64 %_3004, 1
  store i64 %_3005, i64* %_2895
  br label %_cnd2993
_end2994:
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
