; generated from: oatprograms/selectionsort.oat
target triple = "x86_64-unknown-linux"
define i64 @getminindex({ i64, [0 x i64] }* %a, i64 %s, i64 %b) {
  %_3132 = alloca i64
  %_3138 = alloca i64
  %_3140 = alloca i64
  %_b3130 = alloca i64
  store i64 %b, i64* %_b3130
  %_s3129 = alloca i64
  store i64 %s, i64* %_s3129
  %_a3128 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3128
  %_3131 = load i64, i64* %_s3129
  store i64 %_3131, i64* %_3132
  %_3133 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3128
  %_3134 = load i64, i64* %_s3129
  %_3137 = bitcast { i64, [0 x i64] }* %_3133 to i64*
  %_3135 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3133, i32 0, i32 1, i64 %_3134
  %_3136 = load i64, i64* %_3135
  store i64 %_3136, i64* %_3138
  %_3139 = load i64, i64* %_s3129
  store i64 %_3139, i64* %_3140
  br label %_cnd3144
_cnd3144:
  %_3141 = load i64, i64* %_3132
  %_3142 = load i64, i64* %_b3130
  %_3143 = icmp slt i64 %_3141, %_3142
  br i1 %_3143, label %_loop3146, label %_end3145
_loop3146:
  %_3147 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3128
  %_3148 = load i64, i64* %_3132
  %_3151 = bitcast { i64, [0 x i64] }* %_3147 to i64*
  %_3149 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3147, i32 0, i32 1, i64 %_3148
  %_3150 = load i64, i64* %_3149
  %_3152 = load i64, i64* %_3138
  %_3153 = icmp slt i64 %_3150, %_3152
  br i1 %_3153, label %_if3154, label %_else3155
_if3154:
  %_3157 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3128
  %_3158 = load i64, i64* %_3132
  %_3161 = bitcast { i64, [0 x i64] }* %_3157 to i64*
  %_3159 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3157, i32 0, i32 1, i64 %_3158
  %_3160 = load i64, i64* %_3159
  store i64 %_3160, i64* %_3138
  %_3162 = load i64, i64* %_3132
  store i64 %_3162, i64* %_3140
  br label %_else3155
_else3155:
  %_3163 = load i64, i64* %_3132
  %_3164 = add i64 %_3163, 1
  store i64 %_3164, i64* %_3132
  br label %_cnd3144
_end3145:
  %_3165 = load i64, i64* %_3140
  ret i64 %_3165
}

define void @selectionsort({ i64, [0 x i64] }* %a, i64 %s) {
  %_3096 = alloca i64
  %_3097 = alloca i64
  %_3098 = alloca i64
  %_s3095 = alloca i64
  store i64 %s, i64* %_s3095
  %_a3094 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3094
  store i64 0, i64* %_3096
  store i64 0, i64* %_3097
  store i64 0, i64* %_3098
  br label %_cnd3102
_cnd3102:
  %_3099 = load i64, i64* %_3098
  %_3100 = load i64, i64* %_s3095
  %_3101 = icmp slt i64 %_3099, %_3100
  br i1 %_3101, label %_loop3104, label %_end3103
_loop3104:
  %_3107 = load i64, i64* %_s3095
  %_3106 = load i64, i64* %_3098
  %_3105 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3094
  %_3108 = call i64 @getminindex({ i64, [0 x i64] }* %_3105, i64 %_3106, i64 %_3107)
  store i64 %_3108, i64* %_3097
  %_3109 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3094
  %_3110 = load i64, i64* %_3098
  %_3113 = bitcast { i64, [0 x i64] }* %_3109 to i64*
  %_3111 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3109, i32 0, i32 1, i64 %_3110
  %_3112 = load i64, i64* %_3111
  store i64 %_3112, i64* %_3096
  %_3114 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3094
  %_3115 = load i64, i64* %_3097
  %_3118 = bitcast { i64, [0 x i64] }* %_3114 to i64*
  %_3116 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3114, i32 0, i32 1, i64 %_3115
  %_3117 = load i64, i64* %_3116
  %_3119 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3094
  %_3120 = load i64, i64* %_3098
  %_3121 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3119, i32 0, i32 1, i64 %_3120
  store i64 %_3117, i64* %_3121
  %_3122 = load i64, i64* %_3096
  %_3123 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3094
  %_3124 = load i64, i64* %_3097
  %_3125 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3123, i32 0, i32 1, i64 %_3124
  store i64 %_3122, i64* %_3125
  %_3126 = load i64, i64* %_3098
  %_3127 = add i64 %_3126, 1
  store i64 %_3127, i64* %_3098
  br label %_cnd3102
_end3103:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3077 = alloca { i64, [0 x i64] }*
  %_3080 = alloca i64
  %_argv3066 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3066
  %_argc3065 = alloca i64
  store i64 %argc, i64* %_argc3065
  %_raw_array3067 = call i64* @oat_alloc_array(i64 8)
  %_array3068 = bitcast i64* %_raw_array3067 to { i64, [0 x i64] }*
  %_3076 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3068, i32 0, i32 1, i32 7
  store i64 0, i64* %_3076
  %_3075 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3068, i32 0, i32 1, i32 6
  store i64 2, i64* %_3075
  %_3074 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3068, i32 0, i32 1, i32 5
  store i64 99, i64* %_3074
  %_3073 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3068, i32 0, i32 1, i32 4
  store i64 30, i64* %_3073
  %_3072 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3068, i32 0, i32 1, i32 3
  store i64 65, i64* %_3072
  %_3071 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3068, i32 0, i32 1, i32 2
  store i64 1, i64* %_3071
  %_3070 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3068, i32 0, i32 1, i32 1
  store i64 200, i64* %_3070
  %_3069 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3068, i32 0, i32 1, i32 0
  store i64 5, i64* %_3069
  store { i64, [0 x i64] }* %_array3068, { i64, [0 x i64] }** %_3077
  %_3078 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3077
  call void @selectionsort({ i64, [0 x i64] }* %_3078, i64 8)
  store i64 0, i64* %_3080
  br label %_cnd3083
_cnd3083:
  %_3081 = load i64, i64* %_3080
  %_3082 = icmp slt i64 %_3081, 8
  br i1 %_3082, label %_loop3085, label %_end3084
_loop3085:
  %_3086 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3077
  %_3087 = load i64, i64* %_3080
  %_3090 = bitcast { i64, [0 x i64] }* %_3086 to i64*
  %_3088 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3086, i32 0, i32 1, i64 %_3087
  %_3089 = load i64, i64* %_3088
  call void @print_int(i64 %_3089)
  %_3092 = load i64, i64* %_3080
  %_3093 = add i64 %_3092, 1
  store i64 %_3093, i64* %_3080
  br label %_cnd3083
_end3084:
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
