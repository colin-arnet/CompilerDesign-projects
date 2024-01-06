; generated from: oatprograms/matrixmult.oat
target triple = "x86_64-unknown-linux"
@_2945 = global [2 x i8] c" \00"
@_2950 = global [2 x i8] c"	\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3100 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_3124 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_3141 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_argv3085 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3085
  %_argc3084 = alloca i64
  store i64 %argc, i64* %_argc3084
  %_raw_array3086 = call i64* @oat_alloc_array(i64 2)
  %_array3087 = bitcast i64* %_raw_array3086 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3093 = call i64* @oat_alloc_array(i64 3)
  %_array3094 = bitcast i64* %_raw_array3093 to { i64, [0 x i64] }*
  %_3097 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3094, i32 0, i32 1, i32 2
  store i64 1, i64* %_3097
  %_3096 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3094, i32 0, i32 1, i32 1
  store i64 0, i64* %_3096
  %_3095 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3094, i32 0, i32 1, i32 0
  store i64 2, i64* %_3095
  %_raw_array3088 = call i64* @oat_alloc_array(i64 3)
  %_array3089 = bitcast i64* %_raw_array3088 to { i64, [0 x i64] }*
  %_3092 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3089, i32 0, i32 1, i32 2
  store i64 4, i64* %_3092
  %_3091 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3089, i32 0, i32 1, i32 1
  store i64 3, i64* %_3091
  %_3090 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3089, i32 0, i32 1, i32 0
  store i64 1, i64* %_3090
  %_3099 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3087, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3094, { i64, [0 x i64] }** %_3099
  %_3098 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3087, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3089, { i64, [0 x i64] }** %_3098
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3087, { i64, [0 x { i64, [0 x i64] }*] }** %_3100
  %_raw_array3101 = call i64* @oat_alloc_array(i64 3)
  %_array3102 = bitcast i64* %_raw_array3101 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3115 = call i64* @oat_alloc_array(i64 4)
  %_array3116 = bitcast i64* %_raw_array3115 to { i64, [0 x i64] }*
  %_3120 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3116, i32 0, i32 1, i32 3
  store i64 4, i64* %_3120
  %_3119 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3116, i32 0, i32 1, i32 2
  store i64 1, i64* %_3119
  %_3118 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3116, i32 0, i32 1, i32 1
  store i64 2, i64* %_3118
  %_3117 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3116, i32 0, i32 1, i32 0
  store i64 3, i64* %_3117
  %_raw_array3109 = call i64* @oat_alloc_array(i64 4)
  %_array3110 = bitcast i64* %_raw_array3109 to { i64, [0 x i64] }*
  %_3114 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3110, i32 0, i32 1, i32 3
  store i64 2, i64* %_3114
  %_3113 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3110, i32 0, i32 1, i32 2
  store i64 2, i64* %_3113
  %_3112 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3110, i32 0, i32 1, i32 1
  store i64 2, i64* %_3112
  %_3111 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3110, i32 0, i32 1, i32 0
  store i64 2, i64* %_3111
  %_raw_array3103 = call i64* @oat_alloc_array(i64 4)
  %_array3104 = bitcast i64* %_raw_array3103 to { i64, [0 x i64] }*
  %_3108 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3104, i32 0, i32 1, i32 3
  store i64 1, i64* %_3108
  %_3107 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3104, i32 0, i32 1, i32 2
  store i64 3, i64* %_3107
  %_3106 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3104, i32 0, i32 1, i32 1
  store i64 2, i64* %_3106
  %_3105 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3104, i32 0, i32 1, i32 0
  store i64 1, i64* %_3105
  %_3123 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3102, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array3116, { i64, [0 x i64] }** %_3123
  %_3122 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3102, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3110, { i64, [0 x i64] }** %_3122
  %_3121 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3102, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3104, { i64, [0 x i64] }** %_3121
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3102, { i64, [0 x { i64, [0 x i64] }*] }** %_3124
  %_raw_array3125 = call i64* @oat_alloc_array(i64 2)
  %_array3126 = bitcast i64* %_raw_array3125 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3133 = call i64* @oat_alloc_array(i64 4)
  %_array3134 = bitcast i64* %_raw_array3133 to { i64, [0 x i64] }*
  %_3138 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3134, i32 0, i32 1, i32 3
  store i64 0, i64* %_3138
  %_3137 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3134, i32 0, i32 1, i32 2
  store i64 0, i64* %_3137
  %_3136 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3134, i32 0, i32 1, i32 1
  store i64 0, i64* %_3136
  %_3135 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3134, i32 0, i32 1, i32 0
  store i64 0, i64* %_3135
  %_raw_array3127 = call i64* @oat_alloc_array(i64 4)
  %_array3128 = bitcast i64* %_raw_array3127 to { i64, [0 x i64] }*
  %_3132 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3128, i32 0, i32 1, i32 3
  store i64 0, i64* %_3132
  %_3131 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3128, i32 0, i32 1, i32 2
  store i64 0, i64* %_3131
  %_3130 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3128, i32 0, i32 1, i32 1
  store i64 0, i64* %_3130
  %_3129 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3128, i32 0, i32 1, i32 0
  store i64 0, i64* %_3129
  %_3140 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3126, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3134, { i64, [0 x i64] }** %_3140
  %_3139 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3126, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3128, { i64, [0 x i64] }** %_3139
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3126, { i64, [0 x { i64, [0 x i64] }*] }** %_3141
  %_3144 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3141
  %_3143 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3124
  %_3142 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3100
  call void @matrix_Mult({ i64, [0 x { i64, [0 x i64] }*] }* %_3142, { i64, [0 x { i64, [0 x i64] }*] }* %_3143, { i64, [0 x { i64, [0 x i64] }*] }* %_3144)
  %_3146 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3141
  call void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_3146, i64 2)
  %_3150 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3141
  %_3149 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3124
  %_3148 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3100
  call void @matrix_MultAlt({ i64, [0 x { i64, [0 x i64] }*] }* %_3148, { i64, [0 x { i64, [0 x i64] }*] }* %_3149, { i64, [0 x { i64, [0 x i64] }*] }* %_3150)
  %_3152 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3141
  call void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_3152, i64 2)
  ret i64 0
}

define void @matrix_Mult({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }* %a3) {
  %_3024 = alloca i64
  %_3030 = alloca i64
  %_3036 = alloca i64
  %_a33023 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a3, { i64, [0 x { i64, [0 x i64] }*] }** %_a33023
  %_a23022 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_a23022
  %_a13021 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_a13021
  store i64 0, i64* %_3024
  br label %_cnd3027
_cnd3027:
  %_3025 = load i64, i64* %_3024
  %_3026 = icmp slt i64 %_3025, 2
  br i1 %_3026, label %_loop3029, label %_end3028
_loop3029:
  store i64 0, i64* %_3030
  br label %_cnd3033
_cnd3033:
  %_3031 = load i64, i64* %_3030
  %_3032 = icmp slt i64 %_3031, 4
  br i1 %_3032, label %_loop3035, label %_end3034
_loop3035:
  store i64 0, i64* %_3036
  br label %_cnd3039
_cnd3039:
  %_3037 = load i64, i64* %_3036
  %_3038 = icmp slt i64 %_3037, 3
  br i1 %_3038, label %_loop3041, label %_end3040
_loop3041:
  %_3042 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a33023
  %_3043 = load i64, i64* %_3024
  %_3046 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_3042 to i64*
  %_3044 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_3042, i32 0, i32 1, i64 %_3043
  %_3045 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3044
  %_3047 = load i64, i64* %_3030
  %_3050 = bitcast { i64, [0 x i64] }* %_3045 to i64*
  %_3048 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3045, i32 0, i32 1, i64 %_3047
  %_3049 = load i64, i64* %_3048
  %_3051 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a13021
  %_3052 = load i64, i64* %_3024
  %_3055 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_3051 to i64*
  %_3053 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_3051, i32 0, i32 1, i64 %_3052
  %_3054 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3053
  %_3056 = load i64, i64* %_3036
  %_3059 = bitcast { i64, [0 x i64] }* %_3054 to i64*
  %_3057 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3054, i32 0, i32 1, i64 %_3056
  %_3058 = load i64, i64* %_3057
  %_3060 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a23022
  %_3061 = load i64, i64* %_3036
  %_3064 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_3060 to i64*
  %_3062 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_3060, i32 0, i32 1, i64 %_3061
  %_3063 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3062
  %_3065 = load i64, i64* %_3030
  %_3068 = bitcast { i64, [0 x i64] }* %_3063 to i64*
  %_3066 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3063, i32 0, i32 1, i64 %_3065
  %_3067 = load i64, i64* %_3066
  %_3069 = mul i64 %_3058, %_3067
  %_3070 = add i64 %_3049, %_3069
  %_3071 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a33023
  %_3072 = load i64, i64* %_3024
  %_3075 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_3071 to i64*
  %_3073 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_3071, i32 0, i32 1, i64 %_3072
  %_3074 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3073
  %_3076 = load i64, i64* %_3030
  %_3077 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3074, i32 0, i32 1, i64 %_3076
  store i64 %_3070, i64* %_3077
  %_3078 = load i64, i64* %_3036
  %_3079 = add i64 %_3078, 1
  store i64 %_3079, i64* %_3036
  br label %_cnd3039
_end3040:
  %_3080 = load i64, i64* %_3030
  %_3081 = add i64 %_3080, 1
  store i64 %_3081, i64* %_3030
  br label %_cnd3033
_end3034:
  %_3082 = load i64, i64* %_3024
  %_3083 = add i64 %_3082, 1
  store i64 %_3083, i64* %_3024
  br label %_cnd3027
_end3028:
  ret void
}

define void @matrix_MultAlt({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }* %a3) {
  %_2993 = alloca i64
  %_2999 = alloca i64
  %_a32992 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a3, { i64, [0 x { i64, [0 x i64] }*] }** %_a32992
  %_a22991 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_a22991
  %_a12990 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_a12990
  store i64 0, i64* %_2993
  br label %_cnd2996
_cnd2996:
  %_2994 = load i64, i64* %_2993
  %_2995 = icmp slt i64 %_2994, 2
  br i1 %_2995, label %_loop2998, label %_end2997
_loop2998:
  store i64 0, i64* %_2999
  br label %_cnd3002
_cnd3002:
  %_3000 = load i64, i64* %_2999
  %_3001 = icmp slt i64 %_3000, 4
  br i1 %_3001, label %_loop3004, label %_end3003
_loop3004:
  %_3008 = load i64, i64* %_2999
  %_3007 = load i64, i64* %_2993
  %_3006 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a22991
  %_3005 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a12990
  %_3009 = call i64 @dot3({ i64, [0 x { i64, [0 x i64] }*] }* %_3005, { i64, [0 x { i64, [0 x i64] }*] }* %_3006, i64 %_3007, i64 %_3008)
  %_3010 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a32992
  %_3011 = load i64, i64* %_2993
  %_3014 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_3010 to i64*
  %_3012 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_3010, i32 0, i32 1, i64 %_3011
  %_3013 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3012
  %_3015 = load i64, i64* %_2999
  %_3016 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3013, i32 0, i32 1, i64 %_3015
  store i64 %_3009, i64* %_3016
  %_3017 = load i64, i64* %_2999
  %_3018 = add i64 %_3017, 1
  store i64 %_3018, i64* %_2999
  br label %_cnd3002
_end3003:
  %_3019 = load i64, i64* %_2993
  %_3020 = add i64 %_3019, 1
  store i64 %_3020, i64* %_2993
  br label %_cnd2996
_end2997:
  ret void
}

define i64 @dot3({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, i64 %row, i64 %col) {
  %_2959 = alloca i64
  %_2960 = alloca i64
  %_col2958 = alloca i64
  store i64 %col, i64* %_col2958
  %_row2957 = alloca i64
  store i64 %row, i64* %_row2957
  %_a22956 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_a22956
  %_a12955 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_a12955
  store i64 0, i64* %_2959
  store i64 0, i64* %_2960
  br label %_cnd2963
_cnd2963:
  %_2961 = load i64, i64* %_2960
  %_2962 = icmp slt i64 %_2961, 3
  br i1 %_2962, label %_loop2965, label %_end2964
_loop2965:
  %_2966 = load i64, i64* %_2959
  %_2967 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a12955
  %_2968 = load i64, i64* %_row2957
  %_2971 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_2967 to i64*
  %_2969 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_2967, i32 0, i32 1, i64 %_2968
  %_2970 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2969
  %_2972 = load i64, i64* %_2960
  %_2975 = bitcast { i64, [0 x i64] }* %_2970 to i64*
  %_2973 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2970, i32 0, i32 1, i64 %_2972
  %_2974 = load i64, i64* %_2973
  %_2976 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a22956
  %_2977 = load i64, i64* %_2960
  %_2980 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_2976 to i64*
  %_2978 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_2976, i32 0, i32 1, i64 %_2977
  %_2979 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2978
  %_2981 = load i64, i64* %_col2958
  %_2984 = bitcast { i64, [0 x i64] }* %_2979 to i64*
  %_2982 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2979, i32 0, i32 1, i64 %_2981
  %_2983 = load i64, i64* %_2982
  %_2985 = mul i64 %_2974, %_2983
  %_2986 = add i64 %_2966, %_2985
  store i64 %_2986, i64* %_2959
  %_2987 = load i64, i64* %_2960
  %_2988 = add i64 %_2987, 1
  store i64 %_2988, i64* %_2960
  br label %_cnd2963
_end2964:
  %_2989 = load i64, i64* %_2959
  ret i64 %_2989
}

define void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %ar, i64 %n) {
  %_2922 = alloca i64
  %_2929 = alloca i64
  %_n2921 = alloca i64
  store i64 %n, i64* %_n2921
  %_ar2920 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %ar, { i64, [0 x { i64, [0 x i64] }*] }** %_ar2920
  store i64 0, i64* %_2922
  br label %_cnd2926
_cnd2926:
  %_2923 = load i64, i64* %_2922
  %_2924 = load i64, i64* %_n2921
  %_2925 = icmp slt i64 %_2923, %_2924
  br i1 %_2925, label %_loop2928, label %_end2927
_loop2928:
  store i64 0, i64* %_2929
  br label %_cnd2932
_cnd2932:
  %_2930 = load i64, i64* %_2929
  %_2931 = icmp slt i64 %_2930, 4
  br i1 %_2931, label %_loop2934, label %_end2933
_loop2934:
  %_2935 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_ar2920
  %_2936 = load i64, i64* %_2922
  %_2939 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_2935 to i64*
  %_2937 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_2935, i32 0, i32 1, i64 %_2936
  %_2938 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2937
  %_2940 = load i64, i64* %_2929
  %_2943 = bitcast { i64, [0 x i64] }* %_2938 to i64*
  %_2941 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2938, i32 0, i32 1, i64 %_2940
  %_2942 = load i64, i64* %_2941
  call void @print_int(i64 %_2942)
  %_2946 = bitcast [2 x i8]* @_2945 to i8*
  call void @print_string(i8* %_2946)
  %_2948 = load i64, i64* %_2929
  %_2949 = add i64 %_2948, 1
  store i64 %_2949, i64* %_2929
  br label %_cnd2932
_end2933:
  %_2951 = bitcast [2 x i8]* @_2950 to i8*
  call void @print_string(i8* %_2951)
  %_2953 = load i64, i64* %_2922
  %_2954 = add i64 %_2953, 1
  store i64 %_2954, i64* %_2922
  br label %_cnd2926
_end2927:
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
