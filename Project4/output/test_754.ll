; generated from: oatprograms/lfsr.oat
target triple = "x86_64-unknown-linux"
@lfsr_iterations = global i64 5
@lfsr_length = global i64 4
@lfsr_init_values = global { i64, [4 x i1] }* @_garr4041
@_garr4041 = global { i64, [4 x i1] } { i64 4, [4 x i1] [ i1 1, i1 0, i1 1, i1 0 ] }
@_4026 = global [2 x i8] c"T\00"
@_4028 = global [2 x i8] c"F\00"
@_3997 = global [2 x i8] c" \00"

define i1 @xor(i1 %x, i1 %y) {
  %_y4031 = alloca i1
  store i1 %y, i1* %_y4031
  %_x4030 = alloca i1
  store i1 %x, i1* %_x4030
  %_4032 = load i1, i1* %_x4030
  %_4033 = load i1, i1* %_y4031
  %_4034 = xor i1 %_4033, 1
  %_4035 = and i1 %_4032, %_4034
  %_4036 = load i1, i1* %_x4030
  %_4037 = xor i1 %_4036, 1
  %_4038 = load i1, i1* %_y4031
  %_4039 = and i1 %_4037, %_4038
  %_4040 = or i1 %_4035, %_4039
  ret i1 %_4040
}

define i8* @string_of_bool(i1 %b) {
  %_b4021 = alloca i1
  store i1 %b, i1* %_b4021
  %_4022 = load i1, i1* %_b4021
  br i1 %_4022, label %_if4023, label %_else4024
_if4023:
  %_4027 = bitcast [2 x i8]* @_4026 to i8*
  ret i8* %_4027
_else4024:
  %_4029 = bitcast [2 x i8]* @_4028 to i8*
  ret i8* %_4029
}

define void @print_lfsr({ i64, [0 x i1] }* %lfsr_register, i64 %len) {
  %_4005 = alloca i64
  %_len4004 = alloca i64
  store i64 %len, i64* %_len4004
  %_lfsr_register4003 = alloca { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %lfsr_register, { i64, [0 x i1] }** %_lfsr_register4003
  store i64 0, i64* %_4005
  br label %_cnd4009
_cnd4009:
  %_4006 = load i64, i64* %_4005
  %_4007 = load i64, i64* %_len4004
  %_4008 = icmp slt i64 %_4006, %_4007
  br i1 %_4008, label %_loop4011, label %_end4010
_loop4011:
  %_4012 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register4003
  %_4013 = load i64, i64* %_4005
  %_4016 = bitcast { i64, [0 x i1] }* %_4012 to i64*
  %_4014 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_4012, i32 0, i32 1, i64 %_4013
  %_4015 = load i1, i1* %_4014
  %_4017 = call i8* @string_of_bool(i1 %_4015)
  call void @print_string(i8* %_4017)
  %_4019 = load i64, i64* %_4005
  %_4020 = add i64 %_4019, 1
  store i64 %_4020, i64* %_4005
  br label %_cnd4009
_end4010:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3930 = alloca { i64, [0 x i1] }*
  %_3931 = alloca i64
  %_3948 = alloca i64
  %_3968 = alloca i1
  %_3971 = alloca i64
  %_argv3926 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3926
  %_argc3925 = alloca i64
  store i64 %argc, i64* %_argc3925
  %_3927 = load i64, i64* @lfsr_length
  %_raw_array3928 = call i64* @oat_alloc_array(i64 %_3927)
  %_array3929 = bitcast i64* %_raw_array3928 to { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array3929, { i64, [0 x i1] }** %_3930
  store i64 0, i64* %_3931
  br label %_cnd3935
_cnd3935:
  %_3932 = load i64, i64* %_3931
  %_3933 = load i64, i64* @lfsr_length
  %_3934 = icmp slt i64 %_3932, %_3933
  br i1 %_3934, label %_loop3937, label %_end3936
_loop3937:
  %_3938 = load { i64, [4 x i1] }*, { i64, [4 x i1] }** @lfsr_init_values
  %_3939 = load i64, i64* %_3931
  %_3942 = bitcast { i64, [4 x i1] }* %_3938 to i64*
  %_3940 = getelementptr { i64, [4 x i1] }, { i64, [4 x i1] }* %_3938, i32 0, i32 1, i64 %_3939
  %_3941 = load i1, i1* %_3940
  %_3943 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3930
  %_3944 = load i64, i64* %_3931
  %_3945 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_3943, i32 0, i32 1, i64 %_3944
  store i1 %_3941, i1* %_3945
  %_3946 = load i64, i64* %_3931
  %_3947 = add i64 %_3946, 1
  store i64 %_3947, i64* %_3931
  br label %_cnd3935
_end3936:
  store i64 0, i64* %_3948
  br label %_cnd3952
_cnd3952:
  %_3949 = load i64, i64* %_3948
  %_3950 = load i64, i64* @lfsr_iterations
  %_3951 = icmp slt i64 %_3949, %_3950
  br i1 %_3951, label %_loop3954, label %_end3953
_loop3954:
  %_3961 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3930
  %_3962 = load i64, i64* @lfsr_length
  %_3963 = sub i64 %_3962, 2
  %_3966 = bitcast { i64, [0 x i1] }* %_3961 to i64*
  %_3964 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_3961, i32 0, i32 1, i64 %_3963
  %_3965 = load i1, i1* %_3964
  %_3955 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3930
  %_3956 = load i64, i64* @lfsr_length
  %_3957 = sub i64 %_3956, 1
  %_3960 = bitcast { i64, [0 x i1] }* %_3955 to i64*
  %_3958 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_3955, i32 0, i32 1, i64 %_3957
  %_3959 = load i1, i1* %_3958
  %_3967 = call i1 @xor(i1 %_3959, i1 %_3965)
  store i1 %_3967, i1* %_3968
  %_3969 = load i64, i64* @lfsr_length
  %_3970 = sub i64 %_3969, 1
  store i64 %_3970, i64* %_3971
  br label %_cnd3974
_cnd3974:
  %_3972 = load i64, i64* %_3971
  %_3973 = icmp sgt i64 %_3972, 0
  br i1 %_3973, label %_loop3976, label %_end3975
_loop3976:
  %_3977 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3930
  %_3978 = load i64, i64* %_3971
  %_3979 = sub i64 %_3978, 1
  %_3982 = bitcast { i64, [0 x i1] }* %_3977 to i64*
  %_3980 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_3977, i32 0, i32 1, i64 %_3979
  %_3981 = load i1, i1* %_3980
  %_3983 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3930
  %_3984 = load i64, i64* %_3971
  %_3985 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_3983, i32 0, i32 1, i64 %_3984
  store i1 %_3981, i1* %_3985
  %_3986 = load i64, i64* %_3971
  %_3987 = sub i64 %_3986, 1
  store i64 %_3987, i64* %_3971
  br label %_cnd3974
_end3975:
  %_3988 = load i1, i1* %_3968
  %_3989 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3930
  %_3990 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_3989, i32 0, i32 1, i32 0
  store i1 %_3988, i1* %_3990
  %_3991 = load i64, i64* %_3948
  %_3992 = add i64 %_3991, 1
  store i64 %_3992, i64* %_3948
  br label %_cnd3952
_end3953:
  %_3995 = load i64, i64* @lfsr_length
  %_3993 = load { i64, [4 x i1] }*, { i64, [4 x i1] }** @lfsr_init_values
  %_3994 = bitcast { i64, [4 x i1] }* %_3993 to { i64, [0 x i1] }*
  call void @print_lfsr({ i64, [0 x i1] }* %_3994, i64 %_3995)
  %_3998 = bitcast [2 x i8]* @_3997 to i8*
  call void @print_string(i8* %_3998)
  %_4001 = load i64, i64* @lfsr_length
  %_4000 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3930
  call void @print_lfsr({ i64, [0 x i1] }* %_4000, i64 %_4001)
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
