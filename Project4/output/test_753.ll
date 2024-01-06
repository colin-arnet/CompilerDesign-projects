; generated from: oatprograms/binary_gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @binary_gcd(i64 %x, i64 %y) {
  %_y3853 = alloca i64
  store i64 %y, i64* %_y3853
  %_x3852 = alloca i64
  store i64 %x, i64* %_x3852
  %_3854 = load i64, i64* %_x3852
  %_3855 = load i64, i64* %_y3853
  %_3856 = icmp eq i64 %_3854, %_3855
  br i1 %_3856, label %_if3857, label %_else3858
_if3857:
  %_3860 = load i64, i64* %_x3852
  ret i64 %_3860
_else3858:
  %_3861 = load i64, i64* %_x3852
  %_3862 = icmp eq i64 %_3861, 0
  br i1 %_3862, label %_if3863, label %_else3864
_if3863:
  %_3866 = load i64, i64* %_y3853
  ret i64 %_3866
_else3864:
  %_3867 = load i64, i64* %_y3853
  %_3868 = icmp eq i64 %_3867, 0
  br i1 %_3868, label %_if3869, label %_else3870
_if3869:
  %_3872 = load i64, i64* %_x3852
  ret i64 %_3872
_else3870:
  %_3873 = load i64, i64* %_x3852
  %_3874 = xor i64 %_3873, -1
  %_3875 = and i64 %_3874, 1
  %_3876 = icmp eq i64 %_3875, 1
  br i1 %_3876, label %_if3877, label %_else3878
_if3877:
  %_3880 = load i64, i64* %_y3853
  %_3881 = and i64 %_3880, 1
  %_3882 = icmp eq i64 %_3881, 1
  br i1 %_3882, label %_if3883, label %_else3884
_if3883:
  %_3888 = load i64, i64* %_y3853
  %_3886 = load i64, i64* %_x3852
  %_3887 = lshr i64 %_3886, 1
  %_3889 = call i64 @binary_gcd(i64 %_3887, i64 %_3888)
  ret i64 %_3889
_else3884:
  %_3892 = load i64, i64* %_y3853
  %_3893 = lshr i64 %_3892, 1
  %_3890 = load i64, i64* %_x3852
  %_3891 = lshr i64 %_3890, 1
  %_3894 = call i64 @binary_gcd(i64 %_3891, i64 %_3893)
  %_3895 = shl i64 %_3894, 1
  ret i64 %_3895
_end3885:
  br label %_else3878
_else3878:
  %_3896 = load i64, i64* %_y3853
  %_3897 = xor i64 %_3896, -1
  %_3898 = and i64 %_3897, 1
  %_3899 = icmp eq i64 %_3898, 1
  br i1 %_3899, label %_if3900, label %_else3901
_if3900:
  %_3904 = load i64, i64* %_y3853
  %_3905 = lshr i64 %_3904, 1
  %_3903 = load i64, i64* %_x3852
  %_3906 = call i64 @binary_gcd(i64 %_3903, i64 %_3905)
  ret i64 %_3906
_else3901:
  %_3907 = load i64, i64* %_x3852
  %_3908 = load i64, i64* %_y3853
  %_3909 = icmp sgt i64 %_3907, %_3908
  br i1 %_3909, label %_if3910, label %_else3911
_if3910:
  %_3917 = load i64, i64* %_y3853
  %_3913 = load i64, i64* %_x3852
  %_3914 = load i64, i64* %_y3853
  %_3915 = sub i64 %_3913, %_3914
  %_3916 = lshr i64 %_3915, 1
  %_3918 = call i64 @binary_gcd(i64 %_3916, i64 %_3917)
  ret i64 %_3918
_else3911:
  %_3923 = load i64, i64* %_x3852
  %_3919 = load i64, i64* %_y3853
  %_3920 = load i64, i64* %_x3852
  %_3921 = sub i64 %_3919, %_3920
  %_3922 = lshr i64 %_3921, 1
  %_3924 = call i64 @binary_gcd(i64 %_3922, i64 %_3923)
  ret i64 %_3924
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3847 = alloca i64
  %_3848 = alloca i64
  %_argv3846 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3846
  %_argc3845 = alloca i64
  store i64 %argc, i64* %_argc3845
  store i64 21, i64* %_3847
  store i64 15, i64* %_3848
  %_3850 = load i64, i64* %_3848
  %_3849 = load i64, i64* %_3847
  %_3851 = call i64 @binary_gcd(i64 %_3849, i64 %_3850)
  ret i64 %_3851
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
