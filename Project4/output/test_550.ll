; generated from: oatprograms/xor_shift.oat
target triple = "x86_64-unknown-linux"
@_3563 = global [2 x i8] c"
\00"

define i64 @xor(i64 %x, i64 %y) {
  %_y3604 = alloca i64
  store i64 %y, i64* %_y3604
  %_x3603 = alloca i64
  store i64 %x, i64* %_x3603
  %_3605 = load i64, i64* %_x3603
  %_3606 = load i64, i64* %_y3604
  %_3607 = and i64 %_3605, %_3606
  %_3608 = xor i64 %_3607, -1
  %_3609 = load i64, i64* %_x3603
  %_3610 = load i64, i64* %_y3604
  %_3611 = or i64 %_3609, %_3610
  %_3612 = and i64 %_3608, %_3611
  ret i64 %_3612
}

define i64 @xor_shift_plus({ i64, [0 x i64] }* %s) {
  %_3574 = alloca i64
  %_3579 = alloca i64
  %_s3569 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %s, { i64, [0 x i64] }** %_s3569
  %_3570 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3569
  %_3573 = bitcast { i64, [0 x i64] }* %_3570 to i64*
  %_3571 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3570, i32 0, i32 1, i32 0
  %_3572 = load i64, i64* %_3571
  store i64 %_3572, i64* %_3574
  %_3575 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3569
  %_3578 = bitcast { i64, [0 x i64] }* %_3575 to i64*
  %_3576 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3575, i32 0, i32 1, i32 1
  %_3577 = load i64, i64* %_3576
  store i64 %_3577, i64* %_3579
  %_3580 = load i64, i64* %_3579
  %_3581 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3569
  %_3582 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3581, i32 0, i32 1, i32 0
  store i64 %_3580, i64* %_3582
  %_3584 = load i64, i64* %_3574
  %_3585 = shl i64 %_3584, 23
  %_3583 = load i64, i64* %_3574
  %_3586 = call i64 @xor(i64 %_3583, i64 %_3585)
  store i64 %_3586, i64* %_3574
  %_3588 = load i64, i64* %_3574
  %_3589 = lshr i64 %_3588, 17
  %_3587 = load i64, i64* %_3574
  %_3590 = call i64 @xor(i64 %_3587, i64 %_3589)
  store i64 %_3590, i64* %_3574
  %_3593 = load i64, i64* %_3579
  %_3594 = lshr i64 %_3593, 26
  %_3592 = load i64, i64* %_3579
  %_3595 = call i64 @xor(i64 %_3592, i64 %_3594)
  %_3591 = load i64, i64* %_3574
  %_3596 = call i64 @xor(i64 %_3591, i64 %_3595)
  store i64 %_3596, i64* %_3574
  %_3597 = load i64, i64* %_3574
  %_3598 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3569
  %_3599 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3598, i32 0, i32 1, i32 1
  store i64 %_3597, i64* %_3599
  %_3600 = load i64, i64* %_3574
  %_3601 = load i64, i64* %_3579
  %_3602 = add i64 %_3600, %_3601
  ret i64 %_3602
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3545 = alloca { i64, [0 x i64] }*
  %_3546 = alloca i64
  %_argv3542 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3542
  %_argc3541 = alloca i64
  store i64 %argc, i64* %_argc3541
  %_raw_array3543 = call i64* @oat_alloc_array(i64 2)
  %_array3544 = bitcast i64* %_raw_array3543 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3544, { i64, [0 x i64] }** %_3545
  store i64 0, i64* %_3546
  br label %_cnd3549
_cnd3549:
  %_3547 = load i64, i64* %_3546
  %_3548 = icmp slt i64 %_3547, 2
  br i1 %_3548, label %_loop3551, label %_end3550
_loop3551:
  %_3552 = load i64, i64* %_3546
  %_3553 = add i64 %_3552, 1
  %_3554 = mul i64 100, %_3553
  %_3555 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3545
  %_3556 = load i64, i64* %_3546
  %_3557 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3555, i32 0, i32 1, i64 %_3556
  store i64 %_3554, i64* %_3557
  %_3558 = load i64, i64* %_3546
  %_3559 = add i64 %_3558, 1
  store i64 %_3559, i64* %_3546
  br label %_cnd3549
_end3550:
  %_3560 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3545
  %_3561 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_3560)
  call void @print_int(i64 %_3561)
  %_3564 = bitcast [2 x i8]* @_3563 to i8*
  call void @print_string(i8* %_3564)
  %_3566 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3545
  %_3567 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_3566)
  call void @print_int(i64 %_3567)
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
