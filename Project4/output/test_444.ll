; generated from: oatprograms/sieve.oat
target triple = "x86_64-unknown-linux"
define i64 @sieve(i64 %n) {
  %_3622 = alloca { i64, [0 x i1] }*
  %_3623 = alloca i64
  %_3639 = alloca i64
  %_3656 = alloca i64
  %_3671 = alloca i64
  %_3672 = alloca i64
  %_n3618 = alloca i64
  store i64 %n, i64* %_n3618
  %_3619 = load i64, i64* %_n3618
  %_raw_array3620 = call i64* @oat_alloc_array(i64 %_3619)
  %_array3621 = bitcast i64* %_raw_array3620 to { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array3621, { i64, [0 x i1] }** %_3622
  store i64 0, i64* %_3623
  br label %_cnd3627
_cnd3627:
  %_3624 = load i64, i64* %_3623
  %_3625 = load i64, i64* %_n3618
  %_3626 = icmp slt i64 %_3624, %_3625
  br i1 %_3626, label %_loop3629, label %_end3628
_loop3629:
  %_3630 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3622
  %_3631 = load i64, i64* %_3623
  %_3632 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_3630, i32 0, i32 1, i64 %_3631
  store i1 1, i1* %_3632
  %_3633 = load i64, i64* %_3623
  %_3634 = add i64 %_3633, 1
  store i64 %_3634, i64* %_3623
  br label %_cnd3627
_end3628:
  %_3635 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3622
  %_3636 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_3635, i32 0, i32 1, i32 0
  store i1 0, i1* %_3636
  %_3637 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3622
  %_3638 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_3637, i32 0, i32 1, i32 1
  store i1 0, i1* %_3638
  store i64 0, i64* %_3639
  br label %_cnd3643
_cnd3643:
  %_3640 = load i64, i64* %_3639
  %_3641 = load i64, i64* %_n3618
  %_3642 = icmp slt i64 %_3640, %_3641
  br i1 %_3642, label %_loop3645, label %_end3644
_loop3645:
  %_3646 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3622
  %_3647 = load i64, i64* %_3639
  %_3650 = bitcast { i64, [0 x i1] }* %_3646 to i64*
  %_3648 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_3646, i32 0, i32 1, i64 %_3647
  %_3649 = load i1, i1* %_3648
  br i1 %_3649, label %_if3651, label %_else3652
_if3651:
  %_3654 = load i64, i64* %_3639
  %_3655 = mul i64 %_3654, 2
  store i64 %_3655, i64* %_3656
  br label %_cnd3660
_cnd3660:
  %_3657 = load i64, i64* %_3656
  %_3658 = load i64, i64* %_n3618
  %_3659 = icmp slt i64 %_3657, %_3658
  br i1 %_3659, label %_loop3662, label %_end3661
_loop3662:
  %_3663 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3622
  %_3664 = load i64, i64* %_3656
  %_3665 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_3663, i32 0, i32 1, i64 %_3664
  store i1 0, i1* %_3665
  %_3666 = load i64, i64* %_3656
  %_3667 = load i64, i64* %_3639
  %_3668 = add i64 %_3666, %_3667
  store i64 %_3668, i64* %_3656
  br label %_cnd3660
_end3661:
  br label %_else3652
_else3652:
  %_3669 = load i64, i64* %_3639
  %_3670 = add i64 %_3669, 1
  store i64 %_3670, i64* %_3639
  br label %_cnd3643
_end3644:
  store i64 0, i64* %_3671
  store i64 0, i64* %_3672
  br label %_cnd3676
_cnd3676:
  %_3673 = load i64, i64* %_3672
  %_3674 = load i64, i64* %_n3618
  %_3675 = icmp slt i64 %_3673, %_3674
  br i1 %_3675, label %_loop3678, label %_end3677
_loop3678:
  %_3679 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3622
  %_3680 = load i64, i64* %_3672
  %_3683 = bitcast { i64, [0 x i1] }* %_3679 to i64*
  %_3681 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_3679, i32 0, i32 1, i64 %_3680
  %_3682 = load i1, i1* %_3681
  br i1 %_3682, label %_if3684, label %_else3685
_if3684:
  %_3687 = load i64, i64* %_3671
  %_3688 = add i64 %_3687, 1
  store i64 %_3688, i64* %_3671
  br label %_else3685
_else3685:
  %_3689 = load i64, i64* %_3672
  %_3690 = add i64 %_3689, 1
  store i64 %_3690, i64* %_3672
  br label %_cnd3676
_end3677:
  %_3691 = load i64, i64* %_3671
  ret i64 %_3691
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3615 = alloca i64
  %_argv3614 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3614
  %_argc3613 = alloca i64
  store i64 %argc, i64* %_argc3613
  store i64 100, i64* %_3615
  %_3616 = load i64, i64* %_3615
  %_3617 = call i64 @sieve(i64 %_3616)
  ret i64 %_3617
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
