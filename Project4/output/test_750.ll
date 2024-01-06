; generated from: oatprograms/count_sort.oat
target triple = "x86_64-unknown-linux"
@_3464 = global [2 x i8] c"
\00"

define i64 @min({ i64, [0 x i64] }* %arr, i64 %len) {
  %_3605 = alloca i64
  %_3606 = alloca i64
  %_len3600 = alloca i64
  store i64 %len, i64* %_len3600
  %_arr3599 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr3599
  %_3601 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3599
  %_3604 = bitcast { i64, [0 x i64] }* %_3601 to i64*
  %_3602 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3601, i32 0, i32 1, i32 0
  %_3603 = load i64, i64* %_3602
  store i64 %_3603, i64* %_3605
  store i64 0, i64* %_3606
  br label %_cnd3610
_cnd3610:
  %_3607 = load i64, i64* %_3606
  %_3608 = load i64, i64* %_len3600
  %_3609 = icmp slt i64 %_3607, %_3608
  br i1 %_3609, label %_loop3612, label %_end3611
_loop3612:
  %_3613 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3599
  %_3614 = load i64, i64* %_3606
  %_3617 = bitcast { i64, [0 x i64] }* %_3613 to i64*
  %_3615 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3613, i32 0, i32 1, i64 %_3614
  %_3616 = load i64, i64* %_3615
  %_3618 = load i64, i64* %_3605
  %_3619 = icmp slt i64 %_3616, %_3618
  br i1 %_3619, label %_if3620, label %_else3621
_if3620:
  %_3623 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3599
  %_3624 = load i64, i64* %_3606
  %_3627 = bitcast { i64, [0 x i64] }* %_3623 to i64*
  %_3625 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3623, i32 0, i32 1, i64 %_3624
  %_3626 = load i64, i64* %_3625
  store i64 %_3626, i64* %_3605
  br label %_else3621
_else3621:
  %_3628 = load i64, i64* %_3606
  %_3629 = add i64 %_3628, 1
  store i64 %_3629, i64* %_3606
  br label %_cnd3610
_end3611:
  %_3630 = load i64, i64* %_3605
  ret i64 %_3630
}

define i64 @max({ i64, [0 x i64] }* %arr, i64 %len) {
  %_3573 = alloca i64
  %_3574 = alloca i64
  %_len3568 = alloca i64
  store i64 %len, i64* %_len3568
  %_arr3567 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr3567
  %_3569 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3567
  %_3572 = bitcast { i64, [0 x i64] }* %_3569 to i64*
  %_3570 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3569, i32 0, i32 1, i32 0
  %_3571 = load i64, i64* %_3570
  store i64 %_3571, i64* %_3573
  store i64 0, i64* %_3574
  br label %_cnd3578
_cnd3578:
  %_3575 = load i64, i64* %_3574
  %_3576 = load i64, i64* %_len3568
  %_3577 = icmp slt i64 %_3575, %_3576
  br i1 %_3577, label %_loop3580, label %_end3579
_loop3580:
  %_3581 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3567
  %_3582 = load i64, i64* %_3574
  %_3585 = bitcast { i64, [0 x i64] }* %_3581 to i64*
  %_3583 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3581, i32 0, i32 1, i64 %_3582
  %_3584 = load i64, i64* %_3583
  %_3586 = load i64, i64* %_3573
  %_3587 = icmp sgt i64 %_3584, %_3586
  br i1 %_3587, label %_if3588, label %_else3589
_if3588:
  %_3591 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3567
  %_3592 = load i64, i64* %_3574
  %_3595 = bitcast { i64, [0 x i64] }* %_3591 to i64*
  %_3593 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3591, i32 0, i32 1, i64 %_3592
  %_3594 = load i64, i64* %_3593
  store i64 %_3594, i64* %_3573
  br label %_else3589
_else3589:
  %_3596 = load i64, i64* %_3574
  %_3597 = add i64 %_3596, 1
  store i64 %_3597, i64* %_3574
  br label %_cnd3578
_end3579:
  %_3598 = load i64, i64* %_3573
  ret i64 %_3598
}

define { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %arr, i64 %len) {
  %_3479 = alloca i64
  %_3483 = alloca i64
  %_3490 = alloca { i64, [0 x i64] }*
  %_3491 = alloca i64
  %_3522 = alloca i64
  %_3523 = alloca i64
  %_3527 = alloca { i64, [0 x i64] }*
  %_len3475 = alloca i64
  store i64 %len, i64* %_len3475
  %_arr3474 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr3474
  %_3477 = load i64, i64* %_len3475
  %_3476 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3474
  %_3478 = call i64 @min({ i64, [0 x i64] }* %_3476, i64 %_3477)
  store i64 %_3478, i64* %_3479
  %_3481 = load i64, i64* %_len3475
  %_3480 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3474
  %_3482 = call i64 @max({ i64, [0 x i64] }* %_3480, i64 %_3481)
  store i64 %_3482, i64* %_3483
  %_3484 = load i64, i64* %_3483
  %_3485 = load i64, i64* %_3479
  %_3486 = sub i64 %_3484, %_3485
  %_3487 = add i64 %_3486, 1
  %_raw_array3488 = call i64* @oat_alloc_array(i64 %_3487)
  %_array3489 = bitcast i64* %_raw_array3488 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3489, { i64, [0 x i64] }** %_3490
  store i64 0, i64* %_3491
  br label %_cnd3495
_cnd3495:
  %_3492 = load i64, i64* %_3491
  %_3493 = load i64, i64* %_len3475
  %_3494 = icmp slt i64 %_3492, %_3493
  br i1 %_3494, label %_loop3497, label %_end3496
_loop3497:
  %_3498 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3490
  %_3499 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3474
  %_3500 = load i64, i64* %_3491
  %_3503 = bitcast { i64, [0 x i64] }* %_3499 to i64*
  %_3501 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3499, i32 0, i32 1, i64 %_3500
  %_3502 = load i64, i64* %_3501
  %_3504 = load i64, i64* %_3479
  %_3505 = sub i64 %_3502, %_3504
  %_3508 = bitcast { i64, [0 x i64] }* %_3498 to i64*
  %_3506 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3498, i32 0, i32 1, i64 %_3505
  %_3507 = load i64, i64* %_3506
  %_3509 = add i64 %_3507, 1
  %_3510 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3490
  %_3511 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3474
  %_3512 = load i64, i64* %_3491
  %_3515 = bitcast { i64, [0 x i64] }* %_3511 to i64*
  %_3513 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3511, i32 0, i32 1, i64 %_3512
  %_3514 = load i64, i64* %_3513
  %_3516 = load i64, i64* %_3479
  %_3517 = sub i64 %_3514, %_3516
  %_3518 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3510, i32 0, i32 1, i64 %_3517
  store i64 %_3509, i64* %_3518
  %_3519 = load i64, i64* %_3491
  %_3520 = add i64 %_3519, 1
  store i64 %_3520, i64* %_3491
  br label %_cnd3495
_end3496:
  %_3521 = load i64, i64* %_3479
  store i64 %_3521, i64* %_3522
  store i64 0, i64* %_3523
  %_3524 = load i64, i64* %_len3475
  %_raw_array3525 = call i64* @oat_alloc_array(i64 %_3524)
  %_array3526 = bitcast i64* %_raw_array3525 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3526, { i64, [0 x i64] }** %_3527
  br label %_cnd3531
_cnd3531:
  %_3528 = load i64, i64* %_3522
  %_3529 = load i64, i64* %_3483
  %_3530 = icmp sle i64 %_3528, %_3529
  br i1 %_3530, label %_loop3533, label %_end3532
_loop3533:
  %_3534 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3490
  %_3535 = load i64, i64* %_3522
  %_3536 = load i64, i64* %_3479
  %_3537 = sub i64 %_3535, %_3536
  %_3540 = bitcast { i64, [0 x i64] }* %_3534 to i64*
  %_3538 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3534, i32 0, i32 1, i64 %_3537
  %_3539 = load i64, i64* %_3538
  %_3541 = icmp sgt i64 %_3539, 0
  br i1 %_3541, label %_if3542, label %_else3543
_if3542:
  %_3545 = load i64, i64* %_3522
  %_3546 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3527
  %_3547 = load i64, i64* %_3523
  %_3548 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3546, i32 0, i32 1, i64 %_3547
  store i64 %_3545, i64* %_3548
  %_3549 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3490
  %_3550 = load i64, i64* %_3522
  %_3551 = load i64, i64* %_3479
  %_3552 = sub i64 %_3550, %_3551
  %_3555 = bitcast { i64, [0 x i64] }* %_3549 to i64*
  %_3553 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3549, i32 0, i32 1, i64 %_3552
  %_3554 = load i64, i64* %_3553
  %_3556 = sub i64 %_3554, 1
  %_3557 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3490
  %_3558 = load i64, i64* %_3522
  %_3559 = load i64, i64* %_3479
  %_3560 = sub i64 %_3558, %_3559
  %_3561 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3557, i32 0, i32 1, i64 %_3560
  store i64 %_3556, i64* %_3561
  %_3562 = load i64, i64* %_3523
  %_3563 = add i64 %_3562, 1
  store i64 %_3563, i64* %_3523
  br label %_end3544
_else3543:
  %_3564 = load i64, i64* %_3522
  %_3565 = add i64 %_3564, 1
  store i64 %_3565, i64* %_3522
  br label %_end3544
_end3544:
  br label %_cnd3531
_end3532:
  %_3566 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3527
  ret { i64, [0 x i64] }* %_3566
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3459 = alloca { i64, [0 x i64] }*
  %_3460 = alloca i64
  %_3470 = alloca { i64, [0 x i64] }*
  %_argv3447 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3447
  %_argc3446 = alloca i64
  store i64 %argc, i64* %_argc3446
  %_raw_array3448 = call i64* @oat_alloc_array(i64 9)
  %_array3449 = bitcast i64* %_raw_array3448 to { i64, [0 x i64] }*
  %_3458 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3449, i32 0, i32 1, i32 8
  store i64 67, i64* %_3458
  %_3457 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3449, i32 0, i32 1, i32 7
  store i64 89, i64* %_3457
  %_3456 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3449, i32 0, i32 1, i32 6
  store i64 69, i64* %_3456
  %_3455 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3449, i32 0, i32 1, i32 5
  store i64 65, i64* %_3455
  %_3454 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3449, i32 0, i32 1, i32 4
  store i64 65, i64* %_3454
  %_3453 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3449, i32 0, i32 1, i32 3
  store i64 90, i64* %_3453
  %_3452 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3449, i32 0, i32 1, i32 2
  store i64 72, i64* %_3452
  %_3451 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3449, i32 0, i32 1, i32 1
  store i64 70, i64* %_3451
  %_3450 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3449, i32 0, i32 1, i32 0
  store i64 65, i64* %_3450
  store { i64, [0 x i64] }* %_array3449, { i64, [0 x i64] }** %_3459
  store i64 9, i64* %_3460
  %_3461 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3459
  %_3462 = call i8* @string_of_array({ i64, [0 x i64] }* %_3461)
  call void @print_string(i8* %_3462)
  %_3465 = bitcast [2 x i8]* @_3464 to i8*
  call void @print_string(i8* %_3465)
  %_3468 = load i64, i64* %_3460
  %_3467 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3459
  %_3469 = call { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %_3467, i64 %_3468)
  store { i64, [0 x i64] }* %_3469, { i64, [0 x i64] }** %_3470
  %_3471 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3470
  %_3472 = call i8* @string_of_array({ i64, [0 x i64] }* %_3471)
  call void @print_string(i8* %_3472)
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
