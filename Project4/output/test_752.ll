; generated from: oatprograms/heap.oat
target triple = "x86_64-unknown-linux"
define void @min_heapify({ i64, [0 x i64] }* %array, i64 %i, i64 %len) {
  %_3769 = alloca i64
  %_3772 = alloca i64
  %_3773 = alloca i64
  %_3775 = alloca i64
  %_len3766 = alloca i64
  store i64 %len, i64* %_len3766
  %_i3765 = alloca i64
  store i64 %i, i64* %_i3765
  %_array3764 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %array, { i64, [0 x i64] }** %_array3764
  %_3767 = load i64, i64* %_i3765
  %_3768 = mul i64 %_3767, 2
  store i64 %_3768, i64* %_3769
  %_3770 = load i64, i64* %_i3765
  %_3771 = add i64 %_3770, 1
  store i64 %_3771, i64* %_3772
  store i64 0, i64* %_3773
  %_3774 = load i64, i64* %_i3765
  store i64 %_3774, i64* %_3775
  %_3776 = load i64, i64* %_3769
  %_3777 = load i64, i64* %_len3766
  %_3778 = icmp slt i64 %_3776, %_3777
  br i1 %_3778, label %_if3779, label %_else3780
_if3779:
  %_3782 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array3764
  %_3783 = load i64, i64* %_3769
  %_3786 = bitcast { i64, [0 x i64] }* %_3782 to i64*
  %_3784 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3782, i32 0, i32 1, i64 %_3783
  %_3785 = load i64, i64* %_3784
  %_3787 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array3764
  %_3788 = load i64, i64* %_3775
  %_3791 = bitcast { i64, [0 x i64] }* %_3787 to i64*
  %_3789 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3787, i32 0, i32 1, i64 %_3788
  %_3790 = load i64, i64* %_3789
  %_3792 = icmp sgt i64 %_3785, %_3790
  br i1 %_3792, label %_if3793, label %_else3794
_if3793:
  %_3796 = load i64, i64* %_3769
  store i64 %_3796, i64* %_3775
  br label %_else3794
_else3794:
  br label %_else3780
_else3780:
  %_3797 = load i64, i64* %_3772
  %_3798 = load i64, i64* %_len3766
  %_3799 = icmp slt i64 %_3797, %_3798
  br i1 %_3799, label %_if3800, label %_else3801
_if3800:
  %_3803 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array3764
  %_3804 = load i64, i64* %_3772
  %_3807 = bitcast { i64, [0 x i64] }* %_3803 to i64*
  %_3805 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3803, i32 0, i32 1, i64 %_3804
  %_3806 = load i64, i64* %_3805
  %_3808 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array3764
  %_3809 = load i64, i64* %_3775
  %_3812 = bitcast { i64, [0 x i64] }* %_3808 to i64*
  %_3810 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3808, i32 0, i32 1, i64 %_3809
  %_3811 = load i64, i64* %_3810
  %_3813 = icmp sgt i64 %_3806, %_3811
  br i1 %_3813, label %_if3814, label %_else3815
_if3814:
  %_3817 = load i64, i64* %_3772
  store i64 %_3817, i64* %_3775
  br label %_else3815
_else3815:
  br label %_else3801
_else3801:
  %_3818 = load i64, i64* %_3775
  %_3819 = load i64, i64* %_i3765
  %_3820 = icmp ne i64 %_3818, %_3819
  br i1 %_3820, label %_if3821, label %_else3822
_if3821:
  %_3824 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array3764
  %_3825 = load i64, i64* %_i3765
  %_3828 = bitcast { i64, [0 x i64] }* %_3824 to i64*
  %_3826 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3824, i32 0, i32 1, i64 %_3825
  %_3827 = load i64, i64* %_3826
  store i64 %_3827, i64* %_3773
  %_3829 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array3764
  %_3830 = load i64, i64* %_3775
  %_3833 = bitcast { i64, [0 x i64] }* %_3829 to i64*
  %_3831 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3829, i32 0, i32 1, i64 %_3830
  %_3832 = load i64, i64* %_3831
  %_3834 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array3764
  %_3835 = load i64, i64* %_i3765
  %_3836 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3834, i32 0, i32 1, i64 %_3835
  store i64 %_3832, i64* %_3836
  %_3837 = load i64, i64* %_3773
  %_3838 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array3764
  %_3839 = load i64, i64* %_3775
  %_3840 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3838, i32 0, i32 1, i64 %_3839
  store i64 %_3837, i64* %_3840
  %_3843 = load i64, i64* %_len3766
  %_3842 = load i64, i64* %_3775
  %_3841 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array3764
  call void @min_heapify({ i64, [0 x i64] }* %_3841, i64 %_3842, i64 %_3843)
  br label %_else3822
_else3822:
  ret void
}

define void @make_min_heap({ i64, [0 x i64] }* %array, i64 %len) {
  %_3752 = alloca i64
  %_len3750 = alloca i64
  store i64 %len, i64* %_len3750
  %_array3749 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %array, { i64, [0 x i64] }** %_array3749
  %_3751 = load i64, i64* %_len3750
  store i64 %_3751, i64* %_3752
  br label %_cnd3755
_cnd3755:
  %_3753 = load i64, i64* %_3752
  %_3754 = icmp sge i64 %_3753, 1
  br i1 %_3754, label %_loop3757, label %_end3756
_loop3757:
  %_3760 = load i64, i64* %_len3750
  %_3759 = load i64, i64* %_3752
  %_3758 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array3749
  call void @min_heapify({ i64, [0 x i64] }* %_3758, i64 %_3759, i64 %_3760)
  %_3762 = load i64, i64* %_3752
  %_3763 = sub i64 %_3762, 1
  store i64 %_3763, i64* %_3752
  br label %_cnd3755
_end3756:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3708 = alloca { i64, [0 x i64] }*
  %_3722 = alloca { i64, [0 x i64] }*
  %_3725 = alloca i64
  %_3726 = alloca i64
  %_argv3694 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3694
  %_argc3693 = alloca i64
  store i64 %argc, i64* %_argc3693
  %_raw_array3695 = call i64* @oat_alloc_array(i64 11)
  %_array3696 = bitcast i64* %_raw_array3695 to { i64, [0 x i64] }*
  %_3707 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3696, i32 0, i32 1, i32 10
  store i64 5, i64* %_3707
  %_3706 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3696, i32 0, i32 1, i32 9
  store i64 4, i64* %_3706
  %_3705 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3696, i32 0, i32 1, i32 8
  store i64 6, i64* %_3705
  %_3704 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3696, i32 0, i32 1, i32 7
  store i64 3, i64* %_3704
  %_3703 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3696, i32 0, i32 1, i32 6
  store i64 7, i64* %_3703
  %_3702 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3696, i32 0, i32 1, i32 5
  store i64 10, i64* %_3702
  %_3701 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3696, i32 0, i32 1, i32 4
  store i64 8, i64* %_3701
  %_3700 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3696, i32 0, i32 1, i32 3
  store i64 2, i64* %_3700
  %_3699 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3696, i32 0, i32 1, i32 2
  store i64 1, i64* %_3699
  %_3698 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3696, i32 0, i32 1, i32 1
  store i64 9, i64* %_3698
  %_3697 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3696, i32 0, i32 1, i32 0
  store i64 0, i64* %_3697
  store { i64, [0 x i64] }* %_array3696, { i64, [0 x i64] }** %_3708
  %_raw_array3709 = call i64* @oat_alloc_array(i64 11)
  %_array3710 = bitcast i64* %_raw_array3709 to { i64, [0 x i64] }*
  %_3721 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3710, i32 0, i32 1, i32 10
  store i64 10, i64* %_3721
  %_3720 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3710, i32 0, i32 1, i32 9
  store i64 9, i64* %_3720
  %_3719 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3710, i32 0, i32 1, i32 8
  store i64 6, i64* %_3719
  %_3718 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3710, i32 0, i32 1, i32 7
  store i64 3, i64* %_3718
  %_3717 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3710, i32 0, i32 1, i32 6
  store i64 7, i64* %_3717
  %_3716 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3710, i32 0, i32 1, i32 5
  store i64 5, i64* %_3716
  %_3715 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3710, i32 0, i32 1, i32 4
  store i64 8, i64* %_3715
  %_3714 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3710, i32 0, i32 1, i32 3
  store i64 2, i64* %_3714
  %_3713 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3710, i32 0, i32 1, i32 2
  store i64 4, i64* %_3713
  %_3712 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3710, i32 0, i32 1, i32 1
  store i64 1, i64* %_3712
  %_3711 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3710, i32 0, i32 1, i32 0
  store i64 0, i64* %_3711
  store { i64, [0 x i64] }* %_array3710, { i64, [0 x i64] }** %_3722
  %_3723 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3708
  call void @make_min_heap({ i64, [0 x i64] }* %_3723, i64 10)
  store i64 0, i64* %_3725
  store i64 0, i64* %_3726
  br label %_cnd3729
_cnd3729:
  %_3727 = load i64, i64* %_3726
  %_3728 = icmp slt i64 %_3727, 11
  br i1 %_3728, label %_loop3731, label %_end3730
_loop3731:
  %_3732 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3708
  %_3733 = load i64, i64* %_3726
  %_3736 = bitcast { i64, [0 x i64] }* %_3732 to i64*
  %_3734 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3732, i32 0, i32 1, i64 %_3733
  %_3735 = load i64, i64* %_3734
  %_3737 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3722
  %_3738 = load i64, i64* %_3726
  %_3741 = bitcast { i64, [0 x i64] }* %_3737 to i64*
  %_3739 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3737, i32 0, i32 1, i64 %_3738
  %_3740 = load i64, i64* %_3739
  %_3742 = icmp ne i64 %_3735, %_3740
  br i1 %_3742, label %_if3743, label %_else3744
_if3743:
  store i64 1, i64* %_3725
  br label %_else3744
_else3744:
  %_3746 = load i64, i64* %_3726
  %_3747 = add i64 %_3746, 1
  store i64 %_3747, i64* %_3726
  br label %_cnd3729
_end3730:
  %_3748 = load i64, i64* %_3725
  ret i64 %_3748
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
