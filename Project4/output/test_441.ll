; generated from: oatprograms/matrixmult.oat
target triple = "x86_64-unknown-linux"
@_3191 = global [2 x i8] c" \00"
@_3196 = global [2 x i8] c"	\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3346 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_3370 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_3387 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_argv3331 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3331
  %_argc3330 = alloca i64
  store i64 %argc, i64* %_argc3330
  %_raw_array3332 = call i64* @oat_alloc_array(i64 2)
  %_array3333 = bitcast i64* %_raw_array3332 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3339 = call i64* @oat_alloc_array(i64 3)
  %_array3340 = bitcast i64* %_raw_array3339 to { i64, [0 x i64] }*
  %_3343 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3340, i32 0, i32 1, i32 2
  store i64 1, i64* %_3343
  %_3342 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3340, i32 0, i32 1, i32 1
  store i64 0, i64* %_3342
  %_3341 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3340, i32 0, i32 1, i32 0
  store i64 2, i64* %_3341
  %_raw_array3334 = call i64* @oat_alloc_array(i64 3)
  %_array3335 = bitcast i64* %_raw_array3334 to { i64, [0 x i64] }*
  %_3338 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3335, i32 0, i32 1, i32 2
  store i64 4, i64* %_3338
  %_3337 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3335, i32 0, i32 1, i32 1
  store i64 3, i64* %_3337
  %_3336 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3335, i32 0, i32 1, i32 0
  store i64 1, i64* %_3336
  %_3345 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3333, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3340, { i64, [0 x i64] }** %_3345
  %_3344 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3333, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3335, { i64, [0 x i64] }** %_3344
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3333, { i64, [0 x { i64, [0 x i64] }*] }** %_3346
  %_raw_array3347 = call i64* @oat_alloc_array(i64 3)
  %_array3348 = bitcast i64* %_raw_array3347 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3361 = call i64* @oat_alloc_array(i64 4)
  %_array3362 = bitcast i64* %_raw_array3361 to { i64, [0 x i64] }*
  %_3366 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3362, i32 0, i32 1, i32 3
  store i64 4, i64* %_3366
  %_3365 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3362, i32 0, i32 1, i32 2
  store i64 1, i64* %_3365
  %_3364 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3362, i32 0, i32 1, i32 1
  store i64 2, i64* %_3364
  %_3363 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3362, i32 0, i32 1, i32 0
  store i64 3, i64* %_3363
  %_raw_array3355 = call i64* @oat_alloc_array(i64 4)
  %_array3356 = bitcast i64* %_raw_array3355 to { i64, [0 x i64] }*
  %_3360 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3356, i32 0, i32 1, i32 3
  store i64 2, i64* %_3360
  %_3359 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3356, i32 0, i32 1, i32 2
  store i64 2, i64* %_3359
  %_3358 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3356, i32 0, i32 1, i32 1
  store i64 2, i64* %_3358
  %_3357 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3356, i32 0, i32 1, i32 0
  store i64 2, i64* %_3357
  %_raw_array3349 = call i64* @oat_alloc_array(i64 4)
  %_array3350 = bitcast i64* %_raw_array3349 to { i64, [0 x i64] }*
  %_3354 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3350, i32 0, i32 1, i32 3
  store i64 1, i64* %_3354
  %_3353 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3350, i32 0, i32 1, i32 2
  store i64 3, i64* %_3353
  %_3352 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3350, i32 0, i32 1, i32 1
  store i64 2, i64* %_3352
  %_3351 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3350, i32 0, i32 1, i32 0
  store i64 1, i64* %_3351
  %_3369 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3348, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array3362, { i64, [0 x i64] }** %_3369
  %_3368 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3348, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3356, { i64, [0 x i64] }** %_3368
  %_3367 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3348, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3350, { i64, [0 x i64] }** %_3367
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3348, { i64, [0 x { i64, [0 x i64] }*] }** %_3370
  %_raw_array3371 = call i64* @oat_alloc_array(i64 2)
  %_array3372 = bitcast i64* %_raw_array3371 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3379 = call i64* @oat_alloc_array(i64 4)
  %_array3380 = bitcast i64* %_raw_array3379 to { i64, [0 x i64] }*
  %_3384 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3380, i32 0, i32 1, i32 3
  store i64 0, i64* %_3384
  %_3383 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3380, i32 0, i32 1, i32 2
  store i64 0, i64* %_3383
  %_3382 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3380, i32 0, i32 1, i32 1
  store i64 0, i64* %_3382
  %_3381 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3380, i32 0, i32 1, i32 0
  store i64 0, i64* %_3381
  %_raw_array3373 = call i64* @oat_alloc_array(i64 4)
  %_array3374 = bitcast i64* %_raw_array3373 to { i64, [0 x i64] }*
  %_3378 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3374, i32 0, i32 1, i32 3
  store i64 0, i64* %_3378
  %_3377 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3374, i32 0, i32 1, i32 2
  store i64 0, i64* %_3377
  %_3376 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3374, i32 0, i32 1, i32 1
  store i64 0, i64* %_3376
  %_3375 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3374, i32 0, i32 1, i32 0
  store i64 0, i64* %_3375
  %_3386 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3372, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3380, { i64, [0 x i64] }** %_3386
  %_3385 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3372, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3374, { i64, [0 x i64] }** %_3385
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3372, { i64, [0 x { i64, [0 x i64] }*] }** %_3387
  %_3390 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3387
  %_3389 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3370
  %_3388 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3346
  call void @matrix_Mult({ i64, [0 x { i64, [0 x i64] }*] }* %_3388, { i64, [0 x { i64, [0 x i64] }*] }* %_3389, { i64, [0 x { i64, [0 x i64] }*] }* %_3390)
  %_3392 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3387
  call void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_3392, i64 2)
  %_3396 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3387
  %_3395 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3370
  %_3394 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3346
  call void @matrix_MultAlt({ i64, [0 x { i64, [0 x i64] }*] }* %_3394, { i64, [0 x { i64, [0 x i64] }*] }* %_3395, { i64, [0 x { i64, [0 x i64] }*] }* %_3396)
  %_3398 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3387
  call void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_3398, i64 2)
  ret i64 0
}

define void @matrix_Mult({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }* %a3) {
  %_3270 = alloca i64
  %_3276 = alloca i64
  %_3282 = alloca i64
  %_a33269 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a3, { i64, [0 x { i64, [0 x i64] }*] }** %_a33269
  %_a23268 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_a23268
  %_a13267 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_a13267
  store i64 0, i64* %_3270
  br label %_cnd3273
_cnd3273:
  %_3271 = load i64, i64* %_3270
  %_3272 = icmp slt i64 %_3271, 2
  br i1 %_3272, label %_loop3275, label %_end3274
_loop3275:
  store i64 0, i64* %_3276
  br label %_cnd3279
_cnd3279:
  %_3277 = load i64, i64* %_3276
  %_3278 = icmp slt i64 %_3277, 4
  br i1 %_3278, label %_loop3281, label %_end3280
_loop3281:
  store i64 0, i64* %_3282
  br label %_cnd3285
_cnd3285:
  %_3283 = load i64, i64* %_3282
  %_3284 = icmp slt i64 %_3283, 3
  br i1 %_3284, label %_loop3287, label %_end3286
_loop3287:
  %_3288 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a33269
  %_3289 = load i64, i64* %_3270
  %_3292 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_3288 to i64*
  %_3290 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_3288, i32 0, i32 1, i64 %_3289
  %_3291 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3290
  %_3293 = load i64, i64* %_3276
  %_3296 = bitcast { i64, [0 x i64] }* %_3291 to i64*
  %_3294 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3291, i32 0, i32 1, i64 %_3293
  %_3295 = load i64, i64* %_3294
  %_3297 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a13267
  %_3298 = load i64, i64* %_3270
  %_3301 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_3297 to i64*
  %_3299 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_3297, i32 0, i32 1, i64 %_3298
  %_3300 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3299
  %_3302 = load i64, i64* %_3282
  %_3305 = bitcast { i64, [0 x i64] }* %_3300 to i64*
  %_3303 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3300, i32 0, i32 1, i64 %_3302
  %_3304 = load i64, i64* %_3303
  %_3306 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a23268
  %_3307 = load i64, i64* %_3282
  %_3310 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_3306 to i64*
  %_3308 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_3306, i32 0, i32 1, i64 %_3307
  %_3309 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3308
  %_3311 = load i64, i64* %_3276
  %_3314 = bitcast { i64, [0 x i64] }* %_3309 to i64*
  %_3312 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3309, i32 0, i32 1, i64 %_3311
  %_3313 = load i64, i64* %_3312
  %_3315 = mul i64 %_3304, %_3313
  %_3316 = add i64 %_3295, %_3315
  %_3317 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a33269
  %_3318 = load i64, i64* %_3270
  %_3321 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_3317 to i64*
  %_3319 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_3317, i32 0, i32 1, i64 %_3318
  %_3320 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3319
  %_3322 = load i64, i64* %_3276
  %_3323 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3320, i32 0, i32 1, i64 %_3322
  store i64 %_3316, i64* %_3323
  %_3324 = load i64, i64* %_3282
  %_3325 = add i64 %_3324, 1
  store i64 %_3325, i64* %_3282
  br label %_cnd3285
_end3286:
  %_3326 = load i64, i64* %_3276
  %_3327 = add i64 %_3326, 1
  store i64 %_3327, i64* %_3276
  br label %_cnd3279
_end3280:
  %_3328 = load i64, i64* %_3270
  %_3329 = add i64 %_3328, 1
  store i64 %_3329, i64* %_3270
  br label %_cnd3273
_end3274:
  ret void
}

define void @matrix_MultAlt({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }* %a3) {
  %_3239 = alloca i64
  %_3245 = alloca i64
  %_a33238 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a3, { i64, [0 x { i64, [0 x i64] }*] }** %_a33238
  %_a23237 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_a23237
  %_a13236 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_a13236
  store i64 0, i64* %_3239
  br label %_cnd3242
_cnd3242:
  %_3240 = load i64, i64* %_3239
  %_3241 = icmp slt i64 %_3240, 2
  br i1 %_3241, label %_loop3244, label %_end3243
_loop3244:
  store i64 0, i64* %_3245
  br label %_cnd3248
_cnd3248:
  %_3246 = load i64, i64* %_3245
  %_3247 = icmp slt i64 %_3246, 4
  br i1 %_3247, label %_loop3250, label %_end3249
_loop3250:
  %_3254 = load i64, i64* %_3245
  %_3253 = load i64, i64* %_3239
  %_3252 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a23237
  %_3251 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a13236
  %_3255 = call i64 @dot3({ i64, [0 x { i64, [0 x i64] }*] }* %_3251, { i64, [0 x { i64, [0 x i64] }*] }* %_3252, i64 %_3253, i64 %_3254)
  %_3256 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a33238
  %_3257 = load i64, i64* %_3239
  %_3260 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_3256 to i64*
  %_3258 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_3256, i32 0, i32 1, i64 %_3257
  %_3259 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3258
  %_3261 = load i64, i64* %_3245
  %_3262 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3259, i32 0, i32 1, i64 %_3261
  store i64 %_3255, i64* %_3262
  %_3263 = load i64, i64* %_3245
  %_3264 = add i64 %_3263, 1
  store i64 %_3264, i64* %_3245
  br label %_cnd3248
_end3249:
  %_3265 = load i64, i64* %_3239
  %_3266 = add i64 %_3265, 1
  store i64 %_3266, i64* %_3239
  br label %_cnd3242
_end3243:
  ret void
}

define i64 @dot3({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, i64 %row, i64 %col) {
  %_3205 = alloca i64
  %_3206 = alloca i64
  %_col3204 = alloca i64
  store i64 %col, i64* %_col3204
  %_row3203 = alloca i64
  store i64 %row, i64* %_row3203
  %_a23202 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_a23202
  %_a13201 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_a13201
  store i64 0, i64* %_3205
  store i64 0, i64* %_3206
  br label %_cnd3209
_cnd3209:
  %_3207 = load i64, i64* %_3206
  %_3208 = icmp slt i64 %_3207, 3
  br i1 %_3208, label %_loop3211, label %_end3210
_loop3211:
  %_3212 = load i64, i64* %_3205
  %_3213 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a13201
  %_3214 = load i64, i64* %_row3203
  %_3217 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_3213 to i64*
  %_3215 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_3213, i32 0, i32 1, i64 %_3214
  %_3216 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3215
  %_3218 = load i64, i64* %_3206
  %_3221 = bitcast { i64, [0 x i64] }* %_3216 to i64*
  %_3219 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3216, i32 0, i32 1, i64 %_3218
  %_3220 = load i64, i64* %_3219
  %_3222 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a23202
  %_3223 = load i64, i64* %_3206
  %_3226 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_3222 to i64*
  %_3224 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_3222, i32 0, i32 1, i64 %_3223
  %_3225 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3224
  %_3227 = load i64, i64* %_col3204
  %_3230 = bitcast { i64, [0 x i64] }* %_3225 to i64*
  %_3228 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3225, i32 0, i32 1, i64 %_3227
  %_3229 = load i64, i64* %_3228
  %_3231 = mul i64 %_3220, %_3229
  %_3232 = add i64 %_3212, %_3231
  store i64 %_3232, i64* %_3205
  %_3233 = load i64, i64* %_3206
  %_3234 = add i64 %_3233, 1
  store i64 %_3234, i64* %_3206
  br label %_cnd3209
_end3210:
  %_3235 = load i64, i64* %_3205
  ret i64 %_3235
}

define void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %ar, i64 %n) {
  %_3168 = alloca i64
  %_3175 = alloca i64
  %_n3167 = alloca i64
  store i64 %n, i64* %_n3167
  %_ar3166 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %ar, { i64, [0 x { i64, [0 x i64] }*] }** %_ar3166
  store i64 0, i64* %_3168
  br label %_cnd3172
_cnd3172:
  %_3169 = load i64, i64* %_3168
  %_3170 = load i64, i64* %_n3167
  %_3171 = icmp slt i64 %_3169, %_3170
  br i1 %_3171, label %_loop3174, label %_end3173
_loop3174:
  store i64 0, i64* %_3175
  br label %_cnd3178
_cnd3178:
  %_3176 = load i64, i64* %_3175
  %_3177 = icmp slt i64 %_3176, 4
  br i1 %_3177, label %_loop3180, label %_end3179
_loop3180:
  %_3181 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_ar3166
  %_3182 = load i64, i64* %_3168
  %_3185 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_3181 to i64*
  %_3183 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_3181, i32 0, i32 1, i64 %_3182
  %_3184 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3183
  %_3186 = load i64, i64* %_3175
  %_3189 = bitcast { i64, [0 x i64] }* %_3184 to i64*
  %_3187 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3184, i32 0, i32 1, i64 %_3186
  %_3188 = load i64, i64* %_3187
  call void @print_int(i64 %_3188)
  %_3192 = bitcast [2 x i8]* @_3191 to i8*
  call void @print_string(i8* %_3192)
  %_3194 = load i64, i64* %_3175
  %_3195 = add i64 %_3194, 1
  store i64 %_3195, i64* %_3175
  br label %_cnd3178
_end3179:
  %_3197 = bitcast [2 x i8]* @_3196 to i8*
  call void @print_string(i8* %_3197)
  %_3199 = load i64, i64* %_3168
  %_3200 = add i64 %_3199, 1
  store i64 %_3200, i64* %_3168
  br label %_cnd3172
_end3173:
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
