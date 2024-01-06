; generated from: oatprograms/sieve.oat
target triple = "x86_64-unknown-linux"
define i64 @sieve(i64 %n) {
  %_3376 = alloca { i64, [0 x i1] }*
  %_3377 = alloca i64
  %_3393 = alloca i64
  %_3410 = alloca i64
  %_3425 = alloca i64
  %_3426 = alloca i64
  %_n3372 = alloca i64
  store i64 %n, i64* %_n3372
  %_3373 = load i64, i64* %_n3372
  %_raw_array3374 = call i64* @oat_alloc_array(i64 %_3373)
  %_array3375 = bitcast i64* %_raw_array3374 to { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array3375, { i64, [0 x i1] }** %_3376
  store i64 0, i64* %_3377
  br label %_cnd3381
_cnd3381:
  %_3378 = load i64, i64* %_3377
  %_3379 = load i64, i64* %_n3372
  %_3380 = icmp slt i64 %_3378, %_3379
  br i1 %_3380, label %_loop3383, label %_end3382
_loop3383:
  %_3384 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3376
  %_3385 = load i64, i64* %_3377
  %_3386 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_3384, i32 0, i32 1, i64 %_3385
  store i1 1, i1* %_3386
  %_3387 = load i64, i64* %_3377
  %_3388 = add i64 %_3387, 1
  store i64 %_3388, i64* %_3377
  br label %_cnd3381
_end3382:
  %_3389 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3376
  %_3390 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_3389, i32 0, i32 1, i32 0
  store i1 0, i1* %_3390
  %_3391 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3376
  %_3392 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_3391, i32 0, i32 1, i32 1
  store i1 0, i1* %_3392
  store i64 0, i64* %_3393
  br label %_cnd3397
_cnd3397:
  %_3394 = load i64, i64* %_3393
  %_3395 = load i64, i64* %_n3372
  %_3396 = icmp slt i64 %_3394, %_3395
  br i1 %_3396, label %_loop3399, label %_end3398
_loop3399:
  %_3400 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3376
  %_3401 = load i64, i64* %_3393
  %_3404 = bitcast { i64, [0 x i1] }* %_3400 to i64*
  %_3402 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_3400, i32 0, i32 1, i64 %_3401
  %_3403 = load i1, i1* %_3402
  br i1 %_3403, label %_if3405, label %_else3406
_if3405:
  %_3408 = load i64, i64* %_3393
  %_3409 = mul i64 %_3408, 2
  store i64 %_3409, i64* %_3410
  br label %_cnd3414
_cnd3414:
  %_3411 = load i64, i64* %_3410
  %_3412 = load i64, i64* %_n3372
  %_3413 = icmp slt i64 %_3411, %_3412
  br i1 %_3413, label %_loop3416, label %_end3415
_loop3416:
  %_3417 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3376
  %_3418 = load i64, i64* %_3410
  %_3419 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_3417, i32 0, i32 1, i64 %_3418
  store i1 0, i1* %_3419
  %_3420 = load i64, i64* %_3410
  %_3421 = load i64, i64* %_3393
  %_3422 = add i64 %_3420, %_3421
  store i64 %_3422, i64* %_3410
  br label %_cnd3414
_end3415:
  br label %_else3406
_else3406:
  %_3423 = load i64, i64* %_3393
  %_3424 = add i64 %_3423, 1
  store i64 %_3424, i64* %_3393
  br label %_cnd3397
_end3398:
  store i64 0, i64* %_3425
  store i64 0, i64* %_3426
  br label %_cnd3430
_cnd3430:
  %_3427 = load i64, i64* %_3426
  %_3428 = load i64, i64* %_n3372
  %_3429 = icmp slt i64 %_3427, %_3428
  br i1 %_3429, label %_loop3432, label %_end3431
_loop3432:
  %_3433 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3376
  %_3434 = load i64, i64* %_3426
  %_3437 = bitcast { i64, [0 x i1] }* %_3433 to i64*
  %_3435 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_3433, i32 0, i32 1, i64 %_3434
  %_3436 = load i1, i1* %_3435
  br i1 %_3436, label %_if3438, label %_else3439
_if3438:
  %_3441 = load i64, i64* %_3425
  %_3442 = add i64 %_3441, 1
  store i64 %_3442, i64* %_3425
  br label %_else3439
_else3439:
  %_3443 = load i64, i64* %_3426
  %_3444 = add i64 %_3443, 1
  store i64 %_3444, i64* %_3426
  br label %_cnd3430
_end3431:
  %_3445 = load i64, i64* %_3425
  ret i64 %_3445
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3369 = alloca i64
  %_argv3368 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3368
  %_argc3367 = alloca i64
  store i64 %argc, i64* %_argc3367
  store i64 100, i64* %_3369
  %_3370 = load i64, i64* %_3369
  %_3371 = call i64 @sieve(i64 %_3370)
  ret i64 %_3371
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
