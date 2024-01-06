; generated from: oatprograms/gnomesort.oat
target triple = "x86_64-unknown-linux"
define void @gnomeSort({ i64, [0 x i64] }* %a, i64 %len) {
  %_4075 = alloca i64
  %_4076 = alloca i64
  %_4107 = alloca i64
  %_len4074 = alloca i64
  store i64 %len, i64* %_len4074
  %_a4073 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a4073
  store i64 1, i64* %_4075
  store i64 2, i64* %_4076
  br label %_cnd4080
_cnd4080:
  %_4077 = load i64, i64* %_4075
  %_4078 = load i64, i64* %_len4074
  %_4079 = icmp slt i64 %_4077, %_4078
  br i1 %_4079, label %_loop4082, label %_end4081
_loop4082:
  %_4083 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4073
  %_4084 = load i64, i64* %_4075
  %_4085 = sub i64 %_4084, 1
  %_4088 = bitcast { i64, [0 x i64] }* %_4083 to i64*
  %_4086 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4083, i32 0, i32 1, i64 %_4085
  %_4087 = load i64, i64* %_4086
  %_4089 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4073
  %_4090 = load i64, i64* %_4075
  %_4093 = bitcast { i64, [0 x i64] }* %_4089 to i64*
  %_4091 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4089, i32 0, i32 1, i64 %_4090
  %_4092 = load i64, i64* %_4091
  %_4094 = icmp sle i64 %_4087, %_4092
  br i1 %_4094, label %_if4095, label %_else4096
_if4095:
  %_4098 = load i64, i64* %_4076
  store i64 %_4098, i64* %_4075
  %_4099 = load i64, i64* %_4076
  %_4100 = add i64 %_4099, 1
  store i64 %_4100, i64* %_4076
  br label %_end4097
_else4096:
  %_4101 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4073
  %_4102 = load i64, i64* %_4075
  %_4103 = sub i64 %_4102, 1
  %_4106 = bitcast { i64, [0 x i64] }* %_4101 to i64*
  %_4104 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4101, i32 0, i32 1, i64 %_4103
  %_4105 = load i64, i64* %_4104
  store i64 %_4105, i64* %_4107
  %_4108 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4073
  %_4109 = load i64, i64* %_4075
  %_4112 = bitcast { i64, [0 x i64] }* %_4108 to i64*
  %_4110 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4108, i32 0, i32 1, i64 %_4109
  %_4111 = load i64, i64* %_4110
  %_4113 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4073
  %_4114 = load i64, i64* %_4075
  %_4115 = sub i64 %_4114, 1
  %_4116 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4113, i32 0, i32 1, i64 %_4115
  store i64 %_4111, i64* %_4116
  %_4117 = load i64, i64* %_4107
  %_4118 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4073
  %_4119 = load i64, i64* %_4075
  %_4120 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4118, i32 0, i32 1, i64 %_4119
  store i64 %_4117, i64* %_4120
  %_4121 = load i64, i64* %_4075
  %_4122 = sub i64 %_4121, 1
  store i64 %_4122, i64* %_4075
  %_4123 = load i64, i64* %_4075
  %_4124 = icmp eq i64 %_4123, 0
  br i1 %_4124, label %_if4125, label %_else4126
_if4125:
  %_4128 = load i64, i64* %_4076
  store i64 %_4128, i64* %_4075
  %_4129 = load i64, i64* %_4076
  %_4130 = add i64 %_4129, 1
  store i64 %_4130, i64* %_4076
  br label %_else4126
_else4126:
  br label %_end4097
_end4097:
  br label %_cnd4080
_end4081:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_4054 = alloca { i64, [0 x i64] }*
  %_4055 = alloca i64
  %_4059 = alloca i64
  %_argv4043 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4043
  %_argc4042 = alloca i64
  store i64 %argc, i64* %_argc4042
  %_raw_array4044 = call i64* @oat_alloc_array(i64 8)
  %_array4045 = bitcast i64* %_raw_array4044 to { i64, [0 x i64] }*
  %_4053 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4045, i32 0, i32 1, i32 7
  store i64 0, i64* %_4053
  %_4052 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4045, i32 0, i32 1, i32 6
  store i64 2, i64* %_4052
  %_4051 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4045, i32 0, i32 1, i32 5
  store i64 99, i64* %_4051
  %_4050 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4045, i32 0, i32 1, i32 4
  store i64 30, i64* %_4050
  %_4049 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4045, i32 0, i32 1, i32 3
  store i64 65, i64* %_4049
  %_4048 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4045, i32 0, i32 1, i32 2
  store i64 1, i64* %_4048
  %_4047 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4045, i32 0, i32 1, i32 1
  store i64 200, i64* %_4047
  %_4046 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4045, i32 0, i32 1, i32 0
  store i64 5, i64* %_4046
  store { i64, [0 x i64] }* %_array4045, { i64, [0 x i64] }** %_4054
  store i64 8, i64* %_4055
  %_4057 = load i64, i64* %_4055
  %_4056 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4054
  call void @gnomeSort({ i64, [0 x i64] }* %_4056, i64 %_4057)
  store i64 0, i64* %_4059
  br label %_cnd4062
_cnd4062:
  %_4060 = load i64, i64* %_4059
  %_4061 = icmp slt i64 %_4060, 8
  br i1 %_4061, label %_loop4064, label %_end4063
_loop4064:
  %_4065 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4054
  %_4066 = load i64, i64* %_4059
  %_4069 = bitcast { i64, [0 x i64] }* %_4065 to i64*
  %_4067 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4065, i32 0, i32 1, i64 %_4066
  %_4068 = load i64, i64* %_4067
  call void @print_int(i64 %_4068)
  %_4071 = load i64, i64* %_4059
  %_4072 = add i64 %_4071, 1
  store i64 %_4072, i64* %_4059
  br label %_cnd4062
_end4063:
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
