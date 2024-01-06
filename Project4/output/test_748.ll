; generated from: oatprograms/xor_shift.oat
target triple = "x86_64-unknown-linux"
@_3317 = global [2 x i8] c"
\00"

define i64 @xor(i64 %x, i64 %y) {
  %_y3358 = alloca i64
  store i64 %y, i64* %_y3358
  %_x3357 = alloca i64
  store i64 %x, i64* %_x3357
  %_3359 = load i64, i64* %_x3357
  %_3360 = load i64, i64* %_y3358
  %_3361 = and i64 %_3359, %_3360
  %_3362 = xor i64 %_3361, -1
  %_3363 = load i64, i64* %_x3357
  %_3364 = load i64, i64* %_y3358
  %_3365 = or i64 %_3363, %_3364
  %_3366 = and i64 %_3362, %_3365
  ret i64 %_3366
}

define i64 @xor_shift_plus({ i64, [0 x i64] }* %s) {
  %_3328 = alloca i64
  %_3333 = alloca i64
  %_s3323 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %s, { i64, [0 x i64] }** %_s3323
  %_3324 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3323
  %_3327 = bitcast { i64, [0 x i64] }* %_3324 to i64*
  %_3325 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3324, i32 0, i32 1, i32 0
  %_3326 = load i64, i64* %_3325
  store i64 %_3326, i64* %_3328
  %_3329 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3323
  %_3332 = bitcast { i64, [0 x i64] }* %_3329 to i64*
  %_3330 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3329, i32 0, i32 1, i32 1
  %_3331 = load i64, i64* %_3330
  store i64 %_3331, i64* %_3333
  %_3334 = load i64, i64* %_3333
  %_3335 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3323
  %_3336 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3335, i32 0, i32 1, i32 0
  store i64 %_3334, i64* %_3336
  %_3338 = load i64, i64* %_3328
  %_3339 = shl i64 %_3338, 23
  %_3337 = load i64, i64* %_3328
  %_3340 = call i64 @xor(i64 %_3337, i64 %_3339)
  store i64 %_3340, i64* %_3328
  %_3342 = load i64, i64* %_3328
  %_3343 = lshr i64 %_3342, 17
  %_3341 = load i64, i64* %_3328
  %_3344 = call i64 @xor(i64 %_3341, i64 %_3343)
  store i64 %_3344, i64* %_3328
  %_3347 = load i64, i64* %_3333
  %_3348 = lshr i64 %_3347, 26
  %_3346 = load i64, i64* %_3333
  %_3349 = call i64 @xor(i64 %_3346, i64 %_3348)
  %_3345 = load i64, i64* %_3328
  %_3350 = call i64 @xor(i64 %_3345, i64 %_3349)
  store i64 %_3350, i64* %_3328
  %_3351 = load i64, i64* %_3328
  %_3352 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3323
  %_3353 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3352, i32 0, i32 1, i32 1
  store i64 %_3351, i64* %_3353
  %_3354 = load i64, i64* %_3328
  %_3355 = load i64, i64* %_3333
  %_3356 = add i64 %_3354, %_3355
  ret i64 %_3356
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3299 = alloca { i64, [0 x i64] }*
  %_3300 = alloca i64
  %_argv3296 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3296
  %_argc3295 = alloca i64
  store i64 %argc, i64* %_argc3295
  %_raw_array3297 = call i64* @oat_alloc_array(i64 2)
  %_array3298 = bitcast i64* %_raw_array3297 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3298, { i64, [0 x i64] }** %_3299
  store i64 0, i64* %_3300
  br label %_cnd3303
_cnd3303:
  %_3301 = load i64, i64* %_3300
  %_3302 = icmp slt i64 %_3301, 2
  br i1 %_3302, label %_loop3305, label %_end3304
_loop3305:
  %_3306 = load i64, i64* %_3300
  %_3307 = add i64 %_3306, 1
  %_3308 = mul i64 100, %_3307
  %_3309 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3299
  %_3310 = load i64, i64* %_3300
  %_3311 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3309, i32 0, i32 1, i64 %_3310
  store i64 %_3308, i64* %_3311
  %_3312 = load i64, i64* %_3300
  %_3313 = add i64 %_3312, 1
  store i64 %_3313, i64* %_3300
  br label %_cnd3303
_end3304:
  %_3314 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3299
  %_3315 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_3314)
  call void @print_int(i64 %_3315)
  %_3318 = bitcast [2 x i8]* @_3317 to i8*
  call void @print_string(i8* %_3318)
  %_3320 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3299
  %_3321 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_3320)
  call void @print_int(i64 %_3321)
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
