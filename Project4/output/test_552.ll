; generated from: oatprograms/count_sort.oat
target triple = "x86_64-unknown-linux"
@_3710 = global [2 x i8] c"
\00"

define i64 @min({ i64, [0 x i64] }* %arr, i64 %len) {
  %_3851 = alloca i64
  %_3852 = alloca i64
  %_len3846 = alloca i64
  store i64 %len, i64* %_len3846
  %_arr3845 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr3845
  %_3847 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3845
  %_3850 = bitcast { i64, [0 x i64] }* %_3847 to i64*
  %_3848 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3847, i32 0, i32 1, i32 0
  %_3849 = load i64, i64* %_3848
  store i64 %_3849, i64* %_3851
  store i64 0, i64* %_3852
  br label %_cnd3856
_cnd3856:
  %_3853 = load i64, i64* %_3852
  %_3854 = load i64, i64* %_len3846
  %_3855 = icmp slt i64 %_3853, %_3854
  br i1 %_3855, label %_loop3858, label %_end3857
_loop3858:
  %_3859 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3845
  %_3860 = load i64, i64* %_3852
  %_3863 = bitcast { i64, [0 x i64] }* %_3859 to i64*
  %_3861 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3859, i32 0, i32 1, i64 %_3860
  %_3862 = load i64, i64* %_3861
  %_3864 = load i64, i64* %_3851
  %_3865 = icmp slt i64 %_3862, %_3864
  br i1 %_3865, label %_if3866, label %_else3867
_if3866:
  %_3869 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3845
  %_3870 = load i64, i64* %_3852
  %_3873 = bitcast { i64, [0 x i64] }* %_3869 to i64*
  %_3871 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3869, i32 0, i32 1, i64 %_3870
  %_3872 = load i64, i64* %_3871
  store i64 %_3872, i64* %_3851
  br label %_else3867
_else3867:
  %_3874 = load i64, i64* %_3852
  %_3875 = add i64 %_3874, 1
  store i64 %_3875, i64* %_3852
  br label %_cnd3856
_end3857:
  %_3876 = load i64, i64* %_3851
  ret i64 %_3876
}

define i64 @max({ i64, [0 x i64] }* %arr, i64 %len) {
  %_3819 = alloca i64
  %_3820 = alloca i64
  %_len3814 = alloca i64
  store i64 %len, i64* %_len3814
  %_arr3813 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr3813
  %_3815 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3813
  %_3818 = bitcast { i64, [0 x i64] }* %_3815 to i64*
  %_3816 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3815, i32 0, i32 1, i32 0
  %_3817 = load i64, i64* %_3816
  store i64 %_3817, i64* %_3819
  store i64 0, i64* %_3820
  br label %_cnd3824
_cnd3824:
  %_3821 = load i64, i64* %_3820
  %_3822 = load i64, i64* %_len3814
  %_3823 = icmp slt i64 %_3821, %_3822
  br i1 %_3823, label %_loop3826, label %_end3825
_loop3826:
  %_3827 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3813
  %_3828 = load i64, i64* %_3820
  %_3831 = bitcast { i64, [0 x i64] }* %_3827 to i64*
  %_3829 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3827, i32 0, i32 1, i64 %_3828
  %_3830 = load i64, i64* %_3829
  %_3832 = load i64, i64* %_3819
  %_3833 = icmp sgt i64 %_3830, %_3832
  br i1 %_3833, label %_if3834, label %_else3835
_if3834:
  %_3837 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3813
  %_3838 = load i64, i64* %_3820
  %_3841 = bitcast { i64, [0 x i64] }* %_3837 to i64*
  %_3839 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3837, i32 0, i32 1, i64 %_3838
  %_3840 = load i64, i64* %_3839
  store i64 %_3840, i64* %_3819
  br label %_else3835
_else3835:
  %_3842 = load i64, i64* %_3820
  %_3843 = add i64 %_3842, 1
  store i64 %_3843, i64* %_3820
  br label %_cnd3824
_end3825:
  %_3844 = load i64, i64* %_3819
  ret i64 %_3844
}

define { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %arr, i64 %len) {
  %_3725 = alloca i64
  %_3729 = alloca i64
  %_3736 = alloca { i64, [0 x i64] }*
  %_3737 = alloca i64
  %_3768 = alloca i64
  %_3769 = alloca i64
  %_3773 = alloca { i64, [0 x i64] }*
  %_len3721 = alloca i64
  store i64 %len, i64* %_len3721
  %_arr3720 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr3720
  %_3723 = load i64, i64* %_len3721
  %_3722 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3720
  %_3724 = call i64 @min({ i64, [0 x i64] }* %_3722, i64 %_3723)
  store i64 %_3724, i64* %_3725
  %_3727 = load i64, i64* %_len3721
  %_3726 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3720
  %_3728 = call i64 @max({ i64, [0 x i64] }* %_3726, i64 %_3727)
  store i64 %_3728, i64* %_3729
  %_3730 = load i64, i64* %_3729
  %_3731 = load i64, i64* %_3725
  %_3732 = sub i64 %_3730, %_3731
  %_3733 = add i64 %_3732, 1
  %_raw_array3734 = call i64* @oat_alloc_array(i64 %_3733)
  %_array3735 = bitcast i64* %_raw_array3734 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3735, { i64, [0 x i64] }** %_3736
  store i64 0, i64* %_3737
  br label %_cnd3741
_cnd3741:
  %_3738 = load i64, i64* %_3737
  %_3739 = load i64, i64* %_len3721
  %_3740 = icmp slt i64 %_3738, %_3739
  br i1 %_3740, label %_loop3743, label %_end3742
_loop3743:
  %_3744 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3736
  %_3745 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3720
  %_3746 = load i64, i64* %_3737
  %_3749 = bitcast { i64, [0 x i64] }* %_3745 to i64*
  %_3747 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3745, i32 0, i32 1, i64 %_3746
  %_3748 = load i64, i64* %_3747
  %_3750 = load i64, i64* %_3725
  %_3751 = sub i64 %_3748, %_3750
  %_3754 = bitcast { i64, [0 x i64] }* %_3744 to i64*
  %_3752 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3744, i32 0, i32 1, i64 %_3751
  %_3753 = load i64, i64* %_3752
  %_3755 = add i64 %_3753, 1
  %_3756 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3736
  %_3757 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3720
  %_3758 = load i64, i64* %_3737
  %_3761 = bitcast { i64, [0 x i64] }* %_3757 to i64*
  %_3759 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3757, i32 0, i32 1, i64 %_3758
  %_3760 = load i64, i64* %_3759
  %_3762 = load i64, i64* %_3725
  %_3763 = sub i64 %_3760, %_3762
  %_3764 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3756, i32 0, i32 1, i64 %_3763
  store i64 %_3755, i64* %_3764
  %_3765 = load i64, i64* %_3737
  %_3766 = add i64 %_3765, 1
  store i64 %_3766, i64* %_3737
  br label %_cnd3741
_end3742:
  %_3767 = load i64, i64* %_3725
  store i64 %_3767, i64* %_3768
  store i64 0, i64* %_3769
  %_3770 = load i64, i64* %_len3721
  %_raw_array3771 = call i64* @oat_alloc_array(i64 %_3770)
  %_array3772 = bitcast i64* %_raw_array3771 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3772, { i64, [0 x i64] }** %_3773
  br label %_cnd3777
_cnd3777:
  %_3774 = load i64, i64* %_3768
  %_3775 = load i64, i64* %_3729
  %_3776 = icmp sle i64 %_3774, %_3775
  br i1 %_3776, label %_loop3779, label %_end3778
_loop3779:
  %_3780 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3736
  %_3781 = load i64, i64* %_3768
  %_3782 = load i64, i64* %_3725
  %_3783 = sub i64 %_3781, %_3782
  %_3786 = bitcast { i64, [0 x i64] }* %_3780 to i64*
  %_3784 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3780, i32 0, i32 1, i64 %_3783
  %_3785 = load i64, i64* %_3784
  %_3787 = icmp sgt i64 %_3785, 0
  br i1 %_3787, label %_if3788, label %_else3789
_if3788:
  %_3791 = load i64, i64* %_3768
  %_3792 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3773
  %_3793 = load i64, i64* %_3769
  %_3794 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3792, i32 0, i32 1, i64 %_3793
  store i64 %_3791, i64* %_3794
  %_3795 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3736
  %_3796 = load i64, i64* %_3768
  %_3797 = load i64, i64* %_3725
  %_3798 = sub i64 %_3796, %_3797
  %_3801 = bitcast { i64, [0 x i64] }* %_3795 to i64*
  %_3799 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3795, i32 0, i32 1, i64 %_3798
  %_3800 = load i64, i64* %_3799
  %_3802 = sub i64 %_3800, 1
  %_3803 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3736
  %_3804 = load i64, i64* %_3768
  %_3805 = load i64, i64* %_3725
  %_3806 = sub i64 %_3804, %_3805
  %_3807 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3803, i32 0, i32 1, i64 %_3806
  store i64 %_3802, i64* %_3807
  %_3808 = load i64, i64* %_3769
  %_3809 = add i64 %_3808, 1
  store i64 %_3809, i64* %_3769
  br label %_end3790
_else3789:
  %_3810 = load i64, i64* %_3768
  %_3811 = add i64 %_3810, 1
  store i64 %_3811, i64* %_3768
  br label %_end3790
_end3790:
  br label %_cnd3777
_end3778:
  %_3812 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3773
  ret { i64, [0 x i64] }* %_3812
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3705 = alloca { i64, [0 x i64] }*
  %_3706 = alloca i64
  %_3716 = alloca { i64, [0 x i64] }*
  %_argv3693 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3693
  %_argc3692 = alloca i64
  store i64 %argc, i64* %_argc3692
  %_raw_array3694 = call i64* @oat_alloc_array(i64 9)
  %_array3695 = bitcast i64* %_raw_array3694 to { i64, [0 x i64] }*
  %_3704 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3695, i32 0, i32 1, i32 8
  store i64 67, i64* %_3704
  %_3703 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3695, i32 0, i32 1, i32 7
  store i64 89, i64* %_3703
  %_3702 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3695, i32 0, i32 1, i32 6
  store i64 69, i64* %_3702
  %_3701 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3695, i32 0, i32 1, i32 5
  store i64 65, i64* %_3701
  %_3700 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3695, i32 0, i32 1, i32 4
  store i64 65, i64* %_3700
  %_3699 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3695, i32 0, i32 1, i32 3
  store i64 90, i64* %_3699
  %_3698 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3695, i32 0, i32 1, i32 2
  store i64 72, i64* %_3698
  %_3697 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3695, i32 0, i32 1, i32 1
  store i64 70, i64* %_3697
  %_3696 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3695, i32 0, i32 1, i32 0
  store i64 65, i64* %_3696
  store { i64, [0 x i64] }* %_array3695, { i64, [0 x i64] }** %_3705
  store i64 9, i64* %_3706
  %_3707 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3705
  %_3708 = call i8* @string_of_array({ i64, [0 x i64] }* %_3707)
  call void @print_string(i8* %_3708)
  %_3711 = bitcast [2 x i8]* @_3710 to i8*
  call void @print_string(i8* %_3711)
  %_3714 = load i64, i64* %_3706
  %_3713 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3705
  %_3715 = call { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %_3713, i64 %_3714)
  store { i64, [0 x i64] }* %_3715, { i64, [0 x i64] }** %_3716
  %_3717 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3716
  %_3718 = call i8* @string_of_array({ i64, [0 x i64] }* %_3717)
  call void @print_string(i8* %_3718)
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
