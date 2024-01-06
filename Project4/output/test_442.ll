; generated from: oatprograms/binary_search.oat
target triple = "x86_64-unknown-linux"
@_3436 = global [9 x i8] c"Correct!\00"

define i64 @euclid_division(i64 %numerator, i64 %denominator) {
  %_3498 = alloca i64
  %_3500 = alloca i64
  %_denominator3487 = alloca i64
  store i64 %denominator, i64* %_denominator3487
  %_numerator3486 = alloca i64
  store i64 %numerator, i64* %_numerator3486
  %_3488 = load i64, i64* %_denominator3487
  %_3489 = icmp slt i64 %_3488, 0
  br i1 %_3489, label %_if3490, label %_else3491
_if3490:
  %_3494 = load i64, i64* %_denominator3487
  %_3495 = mul i64 %_3494, -1
  %_3493 = load i64, i64* %_numerator3486
  %_3496 = call i64 @euclid_division(i64 %_3493, i64 %_3495)
  %_3497 = mul i64 %_3496, -1
  ret i64 %_3497
_else3491:
  store i64 0, i64* %_3498
  %_3499 = load i64, i64* %_numerator3486
  store i64 %_3499, i64* %_3500
  %_3501 = load i64, i64* %_numerator3486
  %_3502 = icmp slt i64 %_3501, 0
  br i1 %_3502, label %_if3503, label %_else3504
_if3503:
  %_3506 = load i64, i64* %_numerator3486
  %_3507 = mul i64 %_3506, -1
  store i64 %_3507, i64* %_3500
  br label %_cnd3511
_cnd3511:
  %_3508 = load i64, i64* %_3500
  %_3509 = load i64, i64* %_denominator3487
  %_3510 = icmp sge i64 %_3508, %_3509
  br i1 %_3510, label %_loop3513, label %_end3512
_loop3513:
  %_3514 = load i64, i64* %_3498
  %_3515 = add i64 %_3514, 1
  store i64 %_3515, i64* %_3498
  %_3516 = load i64, i64* %_3500
  %_3517 = load i64, i64* %_denominator3487
  %_3518 = sub i64 %_3516, %_3517
  store i64 %_3518, i64* %_3500
  br label %_cnd3511
_end3512:
  %_3519 = load i64, i64* %_3500
  %_3520 = icmp eq i64 %_3519, 0
  br i1 %_3520, label %_if3521, label %_else3522
_if3521:
  %_3524 = load i64, i64* %_3498
  %_3525 = mul i64 %_3524, -1
  ret i64 %_3525
_else3522:
  %_3526 = load i64, i64* %_3498
  %_3527 = mul i64 %_3526, -1
  %_3528 = sub i64 %_3527, 1
  ret i64 %_3528
_end3523:
  br label %_else3504
_else3504:
  br label %_cnd3532
_cnd3532:
  %_3529 = load i64, i64* %_3500
  %_3530 = load i64, i64* %_denominator3487
  %_3531 = icmp sge i64 %_3529, %_3530
  br i1 %_3531, label %_loop3534, label %_end3533
_loop3534:
  %_3535 = load i64, i64* %_3498
  %_3536 = add i64 %_3535, 1
  store i64 %_3536, i64* %_3498
  %_3537 = load i64, i64* %_3500
  %_3538 = load i64, i64* %_denominator3487
  %_3539 = sub i64 %_3537, %_3538
  store i64 %_3539, i64* %_3500
  br label %_cnd3532
_end3533:
  %_3540 = load i64, i64* %_3498
  ret i64 %_3540
}

define i1 @binary_search({ i64, [0 x i64] }* %input, i64 %key, i64 %min, i64 %max) {
  %_3453 = alloca i64
  %_max3442 = alloca i64
  store i64 %max, i64* %_max3442
  %_min3441 = alloca i64
  store i64 %min, i64* %_min3441
  %_key3440 = alloca i64
  store i64 %key, i64* %_key3440
  %_input3439 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %input, { i64, [0 x i64] }** %_input3439
  %_3443 = load i64, i64* %_max3442
  %_3444 = load i64, i64* %_min3441
  %_3445 = icmp slt i64 %_3443, %_3444
  br i1 %_3445, label %_if3446, label %_else3447
_if3446:
  ret i1 0
_else3447:
  %_3449 = load i64, i64* %_max3442
  %_3450 = load i64, i64* %_min3441
  %_3451 = add i64 %_3449, %_3450
  %_3452 = call i64 @euclid_division(i64 %_3451, i64 2)
  store i64 %_3452, i64* %_3453
  %_3454 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input3439
  %_3455 = load i64, i64* %_3453
  %_3458 = bitcast { i64, [0 x i64] }* %_3454 to i64*
  %_3456 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3454, i32 0, i32 1, i64 %_3455
  %_3457 = load i64, i64* %_3456
  %_3459 = load i64, i64* %_key3440
  %_3460 = icmp sgt i64 %_3457, %_3459
  br i1 %_3460, label %_if3461, label %_else3462
_if3461:
  %_3467 = load i64, i64* %_3453
  %_3468 = sub i64 %_3467, 1
  %_3466 = load i64, i64* %_min3441
  %_3465 = load i64, i64* %_key3440
  %_3464 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input3439
  %_3469 = call i1 @binary_search({ i64, [0 x i64] }* %_3464, i64 %_3465, i64 %_3466, i64 %_3468)
  ret i1 %_3469
_else3462:
  %_3470 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input3439
  %_3471 = load i64, i64* %_3453
  %_3474 = bitcast { i64, [0 x i64] }* %_3470 to i64*
  %_3472 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3470, i32 0, i32 1, i64 %_3471
  %_3473 = load i64, i64* %_3472
  %_3475 = load i64, i64* %_key3440
  %_3476 = icmp slt i64 %_3473, %_3475
  br i1 %_3476, label %_if3477, label %_else3478
_if3477:
  %_3484 = load i64, i64* %_max3442
  %_3482 = load i64, i64* %_3453
  %_3483 = add i64 %_3482, 1
  %_3481 = load i64, i64* %_key3440
  %_3480 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input3439
  %_3485 = call i1 @binary_search({ i64, [0 x i64] }* %_3480, i64 %_3481, i64 %_3483, i64 %_3484)
  ret i1 %_3485
_else3478:
  ret i1 1
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3404 = alloca { i64, [0 x i64] }*
  %_3405 = alloca i64
  %_3421 = alloca i1
  %_3424 = alloca i1
  %_argv3401 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3401
  %_argc3400 = alloca i64
  store i64 %argc, i64* %_argc3400
  %_raw_array3402 = call i64* @oat_alloc_array(i64 100)
  %_array3403 = bitcast i64* %_raw_array3402 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3403, { i64, [0 x i64] }** %_3404
  store i64 0, i64* %_3405
  br label %_cnd3408
_cnd3408:
  %_3406 = load i64, i64* %_3405
  %_3407 = icmp slt i64 %_3406, 100
  br i1 %_3407, label %_loop3410, label %_end3409
_loop3410:
  %_3411 = load i64, i64* %_3405
  %_3412 = mul i64 2, %_3411
  %_3413 = add i64 %_3412, 1
  %_3414 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3404
  %_3415 = load i64, i64* %_3405
  %_3416 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3414, i32 0, i32 1, i64 %_3415
  store i64 %_3413, i64* %_3416
  %_3417 = load i64, i64* %_3405
  %_3418 = add i64 %_3417, 1
  store i64 %_3418, i64* %_3405
  br label %_cnd3408
_end3409:
  %_3419 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3404
  %_3420 = call i1 @binary_search({ i64, [0 x i64] }* %_3419, i64 80, i64 0, i64 99)
  store i1 %_3420, i1* %_3421
  %_3422 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3404
  %_3423 = call i1 @binary_search({ i64, [0 x i64] }* %_3422, i64 81, i64 0, i64 99)
  store i1 %_3423, i1* %_3424
  %_3425 = load i1, i1* %_3421
  %_3426 = load i1, i1* %_3424
  %_3427 = and i1 %_3425, %_3426
  %_3428 = xor i1 %_3427, 1
  %_3429 = load i1, i1* %_3421
  %_3430 = load i1, i1* %_3424
  %_3431 = or i1 %_3429, %_3430
  %_3432 = and i1 %_3428, %_3431
  br i1 %_3432, label %_if3433, label %_else3434
_if3433:
  %_3437 = bitcast [9 x i8]* @_3436 to i8*
  call void @print_string(i8* %_3437)
  br label %_else3434
_else3434:
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
