; generated from: oatprograms/fibo.oat
target triple = "x86_64-unknown-linux"
define i64 @fibR(i64 %n) {
  %_n3921 = alloca i64
  store i64 %n, i64* %_n3921
  %_3922 = load i64, i64* %_n3921
  %_3923 = icmp eq i64 %_3922, 0
  br i1 %_3923, label %_if3924, label %_else3925
_if3924:
  ret i64 0
_else3925:
  %_3927 = load i64, i64* %_n3921
  %_3928 = icmp eq i64 %_3927, 1
  br i1 %_3928, label %_if3929, label %_else3930
_if3929:
  ret i64 1
_else3930:
  %_3932 = load i64, i64* %_n3921
  %_3933 = sub i64 %_3932, 1
  %_3934 = call i64 @fibR(i64 %_3933)
  %_3935 = load i64, i64* %_n3921
  %_3936 = sub i64 %_3935, 2
  %_3937 = call i64 @fibR(i64 %_3936)
  %_3938 = add i64 %_3934, %_3937
  ret i64 %_3938
}

define i64 @fibI(i64 %n) {
  %_3890 = alloca i64
  %_3891 = alloca i64
  %_3911 = alloca i64
  %_n3889 = alloca i64
  store i64 %n, i64* %_n3889
  store i64 0, i64* %_3890
  store i64 1, i64* %_3891
  %_3892 = load i64, i64* %_n3889
  %_3893 = icmp eq i64 %_3892, 0
  br i1 %_3893, label %_if3894, label %_else3895
_if3894:
  %_3897 = load i64, i64* %_3890
  ret i64 %_3897
_else3895:
  %_3898 = load i64, i64* %_n3889
  %_3899 = icmp eq i64 %_3898, 1
  br i1 %_3899, label %_if3900, label %_else3901
_if3900:
  %_3903 = load i64, i64* %_3891
  ret i64 %_3903
_else3901:
  br label %_cnd3907
_cnd3907:
  %_3904 = load i64, i64* %_n3889
  %_3905 = sub i64 %_3904, 2
  %_3906 = icmp sgt i64 %_3905, 0
  br i1 %_3906, label %_loop3909, label %_end3908
_loop3909:
  %_3910 = load i64, i64* %_3891
  store i64 %_3910, i64* %_3911
  %_3912 = load i64, i64* %_3891
  %_3913 = load i64, i64* %_3890
  %_3914 = add i64 %_3912, %_3913
  store i64 %_3914, i64* %_3891
  %_3915 = load i64, i64* %_3911
  store i64 %_3915, i64* %_3890
  %_3916 = load i64, i64* %_n3889
  %_3917 = sub i64 %_3916, 1
  store i64 %_3917, i64* %_n3889
  br label %_cnd3907
_end3908:
  %_3918 = load i64, i64* %_3890
  %_3919 = load i64, i64* %_3891
  %_3920 = add i64 %_3918, %_3919
  ret i64 %_3920
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3879 = alloca i64
  %_argv3878 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3878
  %_argc3877 = alloca i64
  store i64 %argc, i64* %_argc3877
  store i64 1, i64* %_3879
  %_3880 = call i64 @fibR(i64 12)
  %_3881 = icmp eq i64 %_3880, 144
  %_3882 = call i64 @fibI(i64 12)
  %_3883 = icmp eq i64 %_3882, 144
  %_3884 = and i1 %_3881, %_3883
  br i1 %_3884, label %_if3885, label %_else3886
_if3885:
  store i64 0, i64* %_3879
  br label %_else3886
_else3886:
  %_3888 = load i64, i64* %_3879
  ret i64 %_3888
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
