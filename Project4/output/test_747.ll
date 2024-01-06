; generated from: oatprograms/binary_search.oat
target triple = "x86_64-unknown-linux"
@_3190 = global [9 x i8] c"Correct!\00"

define i64 @euclid_division(i64 %numerator, i64 %denominator) {
  %_3252 = alloca i64
  %_3254 = alloca i64
  %_denominator3241 = alloca i64
  store i64 %denominator, i64* %_denominator3241
  %_numerator3240 = alloca i64
  store i64 %numerator, i64* %_numerator3240
  %_3242 = load i64, i64* %_denominator3241
  %_3243 = icmp slt i64 %_3242, 0
  br i1 %_3243, label %_if3244, label %_else3245
_if3244:
  %_3248 = load i64, i64* %_denominator3241
  %_3249 = mul i64 %_3248, -1
  %_3247 = load i64, i64* %_numerator3240
  %_3250 = call i64 @euclid_division(i64 %_3247, i64 %_3249)
  %_3251 = mul i64 %_3250, -1
  ret i64 %_3251
_else3245:
  store i64 0, i64* %_3252
  %_3253 = load i64, i64* %_numerator3240
  store i64 %_3253, i64* %_3254
  %_3255 = load i64, i64* %_numerator3240
  %_3256 = icmp slt i64 %_3255, 0
  br i1 %_3256, label %_if3257, label %_else3258
_if3257:
  %_3260 = load i64, i64* %_numerator3240
  %_3261 = mul i64 %_3260, -1
  store i64 %_3261, i64* %_3254
  br label %_cnd3265
_cnd3265:
  %_3262 = load i64, i64* %_3254
  %_3263 = load i64, i64* %_denominator3241
  %_3264 = icmp sge i64 %_3262, %_3263
  br i1 %_3264, label %_loop3267, label %_end3266
_loop3267:
  %_3268 = load i64, i64* %_3252
  %_3269 = add i64 %_3268, 1
  store i64 %_3269, i64* %_3252
  %_3270 = load i64, i64* %_3254
  %_3271 = load i64, i64* %_denominator3241
  %_3272 = sub i64 %_3270, %_3271
  store i64 %_3272, i64* %_3254
  br label %_cnd3265
_end3266:
  %_3273 = load i64, i64* %_3254
  %_3274 = icmp eq i64 %_3273, 0
  br i1 %_3274, label %_if3275, label %_else3276
_if3275:
  %_3278 = load i64, i64* %_3252
  %_3279 = mul i64 %_3278, -1
  ret i64 %_3279
_else3276:
  %_3280 = load i64, i64* %_3252
  %_3281 = mul i64 %_3280, -1
  %_3282 = sub i64 %_3281, 1
  ret i64 %_3282
_end3277:
  br label %_else3258
_else3258:
  br label %_cnd3286
_cnd3286:
  %_3283 = load i64, i64* %_3254
  %_3284 = load i64, i64* %_denominator3241
  %_3285 = icmp sge i64 %_3283, %_3284
  br i1 %_3285, label %_loop3288, label %_end3287
_loop3288:
  %_3289 = load i64, i64* %_3252
  %_3290 = add i64 %_3289, 1
  store i64 %_3290, i64* %_3252
  %_3291 = load i64, i64* %_3254
  %_3292 = load i64, i64* %_denominator3241
  %_3293 = sub i64 %_3291, %_3292
  store i64 %_3293, i64* %_3254
  br label %_cnd3286
_end3287:
  %_3294 = load i64, i64* %_3252
  ret i64 %_3294
}

define i1 @binary_search({ i64, [0 x i64] }* %input, i64 %key, i64 %min, i64 %max) {
  %_3207 = alloca i64
  %_max3196 = alloca i64
  store i64 %max, i64* %_max3196
  %_min3195 = alloca i64
  store i64 %min, i64* %_min3195
  %_key3194 = alloca i64
  store i64 %key, i64* %_key3194
  %_input3193 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %input, { i64, [0 x i64] }** %_input3193
  %_3197 = load i64, i64* %_max3196
  %_3198 = load i64, i64* %_min3195
  %_3199 = icmp slt i64 %_3197, %_3198
  br i1 %_3199, label %_if3200, label %_else3201
_if3200:
  ret i1 0
_else3201:
  %_3203 = load i64, i64* %_max3196
  %_3204 = load i64, i64* %_min3195
  %_3205 = add i64 %_3203, %_3204
  %_3206 = call i64 @euclid_division(i64 %_3205, i64 2)
  store i64 %_3206, i64* %_3207
  %_3208 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input3193
  %_3209 = load i64, i64* %_3207
  %_3212 = bitcast { i64, [0 x i64] }* %_3208 to i64*
  %_3210 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3208, i32 0, i32 1, i64 %_3209
  %_3211 = load i64, i64* %_3210
  %_3213 = load i64, i64* %_key3194
  %_3214 = icmp sgt i64 %_3211, %_3213
  br i1 %_3214, label %_if3215, label %_else3216
_if3215:
  %_3221 = load i64, i64* %_3207
  %_3222 = sub i64 %_3221, 1
  %_3220 = load i64, i64* %_min3195
  %_3219 = load i64, i64* %_key3194
  %_3218 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input3193
  %_3223 = call i1 @binary_search({ i64, [0 x i64] }* %_3218, i64 %_3219, i64 %_3220, i64 %_3222)
  ret i1 %_3223
_else3216:
  %_3224 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input3193
  %_3225 = load i64, i64* %_3207
  %_3228 = bitcast { i64, [0 x i64] }* %_3224 to i64*
  %_3226 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3224, i32 0, i32 1, i64 %_3225
  %_3227 = load i64, i64* %_3226
  %_3229 = load i64, i64* %_key3194
  %_3230 = icmp slt i64 %_3227, %_3229
  br i1 %_3230, label %_if3231, label %_else3232
_if3231:
  %_3238 = load i64, i64* %_max3196
  %_3236 = load i64, i64* %_3207
  %_3237 = add i64 %_3236, 1
  %_3235 = load i64, i64* %_key3194
  %_3234 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input3193
  %_3239 = call i1 @binary_search({ i64, [0 x i64] }* %_3234, i64 %_3235, i64 %_3237, i64 %_3238)
  ret i1 %_3239
_else3232:
  ret i1 1
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3158 = alloca { i64, [0 x i64] }*
  %_3159 = alloca i64
  %_3175 = alloca i1
  %_3178 = alloca i1
  %_argv3155 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3155
  %_argc3154 = alloca i64
  store i64 %argc, i64* %_argc3154
  %_raw_array3156 = call i64* @oat_alloc_array(i64 100)
  %_array3157 = bitcast i64* %_raw_array3156 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3157, { i64, [0 x i64] }** %_3158
  store i64 0, i64* %_3159
  br label %_cnd3162
_cnd3162:
  %_3160 = load i64, i64* %_3159
  %_3161 = icmp slt i64 %_3160, 100
  br i1 %_3161, label %_loop3164, label %_end3163
_loop3164:
  %_3165 = load i64, i64* %_3159
  %_3166 = mul i64 2, %_3165
  %_3167 = add i64 %_3166, 1
  %_3168 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3158
  %_3169 = load i64, i64* %_3159
  %_3170 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3168, i32 0, i32 1, i64 %_3169
  store i64 %_3167, i64* %_3170
  %_3171 = load i64, i64* %_3159
  %_3172 = add i64 %_3171, 1
  store i64 %_3172, i64* %_3159
  br label %_cnd3162
_end3163:
  %_3173 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3158
  %_3174 = call i1 @binary_search({ i64, [0 x i64] }* %_3173, i64 80, i64 0, i64 99)
  store i1 %_3174, i1* %_3175
  %_3176 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3158
  %_3177 = call i1 @binary_search({ i64, [0 x i64] }* %_3176, i64 81, i64 0, i64 99)
  store i1 %_3177, i1* %_3178
  %_3179 = load i1, i1* %_3175
  %_3180 = load i1, i1* %_3178
  %_3181 = and i1 %_3179, %_3180
  %_3182 = xor i1 %_3181, 1
  %_3183 = load i1, i1* %_3175
  %_3184 = load i1, i1* %_3178
  %_3185 = or i1 %_3183, %_3184
  %_3186 = and i1 %_3182, %_3185
  br i1 %_3186, label %_if3187, label %_else3188
_if3187:
  %_3191 = bitcast [9 x i8]* @_3190 to i8*
  call void @print_string(i8* %_3191)
  br label %_else3188
_else3188:
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
