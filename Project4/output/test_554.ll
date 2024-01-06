; generated from: oatprograms/heap.oat
target triple = "x86_64-unknown-linux"
define void @min_heapify({ i64, [0 x i64] }* %array, i64 %i, i64 %len) {
  %_4015 = alloca i64
  %_4018 = alloca i64
  %_4019 = alloca i64
  %_4021 = alloca i64
  %_len4012 = alloca i64
  store i64 %len, i64* %_len4012
  %_i4011 = alloca i64
  store i64 %i, i64* %_i4011
  %_array4010 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %array, { i64, [0 x i64] }** %_array4010
  %_4013 = load i64, i64* %_i4011
  %_4014 = mul i64 %_4013, 2
  store i64 %_4014, i64* %_4015
  %_4016 = load i64, i64* %_i4011
  %_4017 = add i64 %_4016, 1
  store i64 %_4017, i64* %_4018
  store i64 0, i64* %_4019
  %_4020 = load i64, i64* %_i4011
  store i64 %_4020, i64* %_4021
  %_4022 = load i64, i64* %_4015
  %_4023 = load i64, i64* %_len4012
  %_4024 = icmp slt i64 %_4022, %_4023
  br i1 %_4024, label %_if4025, label %_else4026
_if4025:
  %_4028 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4010
  %_4029 = load i64, i64* %_4015
  %_4032 = bitcast { i64, [0 x i64] }* %_4028 to i64*
  %_4030 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4028, i32 0, i32 1, i64 %_4029
  %_4031 = load i64, i64* %_4030
  %_4033 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4010
  %_4034 = load i64, i64* %_4021
  %_4037 = bitcast { i64, [0 x i64] }* %_4033 to i64*
  %_4035 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4033, i32 0, i32 1, i64 %_4034
  %_4036 = load i64, i64* %_4035
  %_4038 = icmp sgt i64 %_4031, %_4036
  br i1 %_4038, label %_if4039, label %_else4040
_if4039:
  %_4042 = load i64, i64* %_4015
  store i64 %_4042, i64* %_4021
  br label %_else4040
_else4040:
  br label %_else4026
_else4026:
  %_4043 = load i64, i64* %_4018
  %_4044 = load i64, i64* %_len4012
  %_4045 = icmp slt i64 %_4043, %_4044
  br i1 %_4045, label %_if4046, label %_else4047
_if4046:
  %_4049 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4010
  %_4050 = load i64, i64* %_4018
  %_4053 = bitcast { i64, [0 x i64] }* %_4049 to i64*
  %_4051 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4049, i32 0, i32 1, i64 %_4050
  %_4052 = load i64, i64* %_4051
  %_4054 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4010
  %_4055 = load i64, i64* %_4021
  %_4058 = bitcast { i64, [0 x i64] }* %_4054 to i64*
  %_4056 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4054, i32 0, i32 1, i64 %_4055
  %_4057 = load i64, i64* %_4056
  %_4059 = icmp sgt i64 %_4052, %_4057
  br i1 %_4059, label %_if4060, label %_else4061
_if4060:
  %_4063 = load i64, i64* %_4018
  store i64 %_4063, i64* %_4021
  br label %_else4061
_else4061:
  br label %_else4047
_else4047:
  %_4064 = load i64, i64* %_4021
  %_4065 = load i64, i64* %_i4011
  %_4066 = icmp ne i64 %_4064, %_4065
  br i1 %_4066, label %_if4067, label %_else4068
_if4067:
  %_4070 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4010
  %_4071 = load i64, i64* %_i4011
  %_4074 = bitcast { i64, [0 x i64] }* %_4070 to i64*
  %_4072 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4070, i32 0, i32 1, i64 %_4071
  %_4073 = load i64, i64* %_4072
  store i64 %_4073, i64* %_4019
  %_4075 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4010
  %_4076 = load i64, i64* %_4021
  %_4079 = bitcast { i64, [0 x i64] }* %_4075 to i64*
  %_4077 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4075, i32 0, i32 1, i64 %_4076
  %_4078 = load i64, i64* %_4077
  %_4080 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4010
  %_4081 = load i64, i64* %_i4011
  %_4082 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4080, i32 0, i32 1, i64 %_4081
  store i64 %_4078, i64* %_4082
  %_4083 = load i64, i64* %_4019
  %_4084 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4010
  %_4085 = load i64, i64* %_4021
  %_4086 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4084, i32 0, i32 1, i64 %_4085
  store i64 %_4083, i64* %_4086
  %_4089 = load i64, i64* %_len4012
  %_4088 = load i64, i64* %_4021
  %_4087 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4010
  call void @min_heapify({ i64, [0 x i64] }* %_4087, i64 %_4088, i64 %_4089)
  br label %_else4068
_else4068:
  ret void
}

define void @make_min_heap({ i64, [0 x i64] }* %array, i64 %len) {
  %_3998 = alloca i64
  %_len3996 = alloca i64
  store i64 %len, i64* %_len3996
  %_array3995 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %array, { i64, [0 x i64] }** %_array3995
  %_3997 = load i64, i64* %_len3996
  store i64 %_3997, i64* %_3998
  br label %_cnd4001
_cnd4001:
  %_3999 = load i64, i64* %_3998
  %_4000 = icmp sge i64 %_3999, 1
  br i1 %_4000, label %_loop4003, label %_end4002
_loop4003:
  %_4006 = load i64, i64* %_len3996
  %_4005 = load i64, i64* %_3998
  %_4004 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array3995
  call void @min_heapify({ i64, [0 x i64] }* %_4004, i64 %_4005, i64 %_4006)
  %_4008 = load i64, i64* %_3998
  %_4009 = sub i64 %_4008, 1
  store i64 %_4009, i64* %_3998
  br label %_cnd4001
_end4002:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3954 = alloca { i64, [0 x i64] }*
  %_3968 = alloca { i64, [0 x i64] }*
  %_3971 = alloca i64
  %_3972 = alloca i64
  %_argv3940 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3940
  %_argc3939 = alloca i64
  store i64 %argc, i64* %_argc3939
  %_raw_array3941 = call i64* @oat_alloc_array(i64 11)
  %_array3942 = bitcast i64* %_raw_array3941 to { i64, [0 x i64] }*
  %_3953 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3942, i32 0, i32 1, i32 10
  store i64 5, i64* %_3953
  %_3952 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3942, i32 0, i32 1, i32 9
  store i64 4, i64* %_3952
  %_3951 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3942, i32 0, i32 1, i32 8
  store i64 6, i64* %_3951
  %_3950 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3942, i32 0, i32 1, i32 7
  store i64 3, i64* %_3950
  %_3949 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3942, i32 0, i32 1, i32 6
  store i64 7, i64* %_3949
  %_3948 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3942, i32 0, i32 1, i32 5
  store i64 10, i64* %_3948
  %_3947 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3942, i32 0, i32 1, i32 4
  store i64 8, i64* %_3947
  %_3946 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3942, i32 0, i32 1, i32 3
  store i64 2, i64* %_3946
  %_3945 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3942, i32 0, i32 1, i32 2
  store i64 1, i64* %_3945
  %_3944 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3942, i32 0, i32 1, i32 1
  store i64 9, i64* %_3944
  %_3943 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3942, i32 0, i32 1, i32 0
  store i64 0, i64* %_3943
  store { i64, [0 x i64] }* %_array3942, { i64, [0 x i64] }** %_3954
  %_raw_array3955 = call i64* @oat_alloc_array(i64 11)
  %_array3956 = bitcast i64* %_raw_array3955 to { i64, [0 x i64] }*
  %_3967 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3956, i32 0, i32 1, i32 10
  store i64 10, i64* %_3967
  %_3966 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3956, i32 0, i32 1, i32 9
  store i64 9, i64* %_3966
  %_3965 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3956, i32 0, i32 1, i32 8
  store i64 6, i64* %_3965
  %_3964 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3956, i32 0, i32 1, i32 7
  store i64 3, i64* %_3964
  %_3963 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3956, i32 0, i32 1, i32 6
  store i64 7, i64* %_3963
  %_3962 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3956, i32 0, i32 1, i32 5
  store i64 5, i64* %_3962
  %_3961 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3956, i32 0, i32 1, i32 4
  store i64 8, i64* %_3961
  %_3960 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3956, i32 0, i32 1, i32 3
  store i64 2, i64* %_3960
  %_3959 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3956, i32 0, i32 1, i32 2
  store i64 4, i64* %_3959
  %_3958 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3956, i32 0, i32 1, i32 1
  store i64 1, i64* %_3958
  %_3957 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3956, i32 0, i32 1, i32 0
  store i64 0, i64* %_3957
  store { i64, [0 x i64] }* %_array3956, { i64, [0 x i64] }** %_3968
  %_3969 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3954
  call void @make_min_heap({ i64, [0 x i64] }* %_3969, i64 10)
  store i64 0, i64* %_3971
  store i64 0, i64* %_3972
  br label %_cnd3975
_cnd3975:
  %_3973 = load i64, i64* %_3972
  %_3974 = icmp slt i64 %_3973, 11
  br i1 %_3974, label %_loop3977, label %_end3976
_loop3977:
  %_3978 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3954
  %_3979 = load i64, i64* %_3972
  %_3982 = bitcast { i64, [0 x i64] }* %_3978 to i64*
  %_3980 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3978, i32 0, i32 1, i64 %_3979
  %_3981 = load i64, i64* %_3980
  %_3983 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3968
  %_3984 = load i64, i64* %_3972
  %_3987 = bitcast { i64, [0 x i64] }* %_3983 to i64*
  %_3985 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3983, i32 0, i32 1, i64 %_3984
  %_3986 = load i64, i64* %_3985
  %_3988 = icmp ne i64 %_3981, %_3986
  br i1 %_3988, label %_if3989, label %_else3990
_if3989:
  store i64 1, i64* %_3971
  br label %_else3990
_else3990:
  %_3992 = load i64, i64* %_3972
  %_3993 = add i64 %_3992, 1
  store i64 %_3993, i64* %_3972
  br label %_cnd3975
_end3976:
  %_3994 = load i64, i64* %_3971
  ret i64 %_3994
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
