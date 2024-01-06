; generated from: oatprograms/binary_gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @binary_gcd(i64 %x, i64 %y) {
  %_y4099 = alloca i64
  store i64 %y, i64* %_y4099
  %_x4098 = alloca i64
  store i64 %x, i64* %_x4098
  %_4100 = load i64, i64* %_x4098
  %_4101 = load i64, i64* %_y4099
  %_4102 = icmp eq i64 %_4100, %_4101
  br i1 %_4102, label %_if4103, label %_else4104
_if4103:
  %_4106 = load i64, i64* %_x4098
  ret i64 %_4106
_else4104:
  %_4107 = load i64, i64* %_x4098
  %_4108 = icmp eq i64 %_4107, 0
  br i1 %_4108, label %_if4109, label %_else4110
_if4109:
  %_4112 = load i64, i64* %_y4099
  ret i64 %_4112
_else4110:
  %_4113 = load i64, i64* %_y4099
  %_4114 = icmp eq i64 %_4113, 0
  br i1 %_4114, label %_if4115, label %_else4116
_if4115:
  %_4118 = load i64, i64* %_x4098
  ret i64 %_4118
_else4116:
  %_4119 = load i64, i64* %_x4098
  %_4120 = xor i64 %_4119, -1
  %_4121 = and i64 %_4120, 1
  %_4122 = icmp eq i64 %_4121, 1
  br i1 %_4122, label %_if4123, label %_else4124
_if4123:
  %_4126 = load i64, i64* %_y4099
  %_4127 = and i64 %_4126, 1
  %_4128 = icmp eq i64 %_4127, 1
  br i1 %_4128, label %_if4129, label %_else4130
_if4129:
  %_4134 = load i64, i64* %_y4099
  %_4132 = load i64, i64* %_x4098
  %_4133 = lshr i64 %_4132, 1
  %_4135 = call i64 @binary_gcd(i64 %_4133, i64 %_4134)
  ret i64 %_4135
_else4130:
  %_4138 = load i64, i64* %_y4099
  %_4139 = lshr i64 %_4138, 1
  %_4136 = load i64, i64* %_x4098
  %_4137 = lshr i64 %_4136, 1
  %_4140 = call i64 @binary_gcd(i64 %_4137, i64 %_4139)
  %_4141 = shl i64 %_4140, 1
  ret i64 %_4141
_end4131:
  br label %_else4124
_else4124:
  %_4142 = load i64, i64* %_y4099
  %_4143 = xor i64 %_4142, -1
  %_4144 = and i64 %_4143, 1
  %_4145 = icmp eq i64 %_4144, 1
  br i1 %_4145, label %_if4146, label %_else4147
_if4146:
  %_4150 = load i64, i64* %_y4099
  %_4151 = lshr i64 %_4150, 1
  %_4149 = load i64, i64* %_x4098
  %_4152 = call i64 @binary_gcd(i64 %_4149, i64 %_4151)
  ret i64 %_4152
_else4147:
  %_4153 = load i64, i64* %_x4098
  %_4154 = load i64, i64* %_y4099
  %_4155 = icmp sgt i64 %_4153, %_4154
  br i1 %_4155, label %_if4156, label %_else4157
_if4156:
  %_4163 = load i64, i64* %_y4099
  %_4159 = load i64, i64* %_x4098
  %_4160 = load i64, i64* %_y4099
  %_4161 = sub i64 %_4159, %_4160
  %_4162 = lshr i64 %_4161, 1
  %_4164 = call i64 @binary_gcd(i64 %_4162, i64 %_4163)
  ret i64 %_4164
_else4157:
  %_4169 = load i64, i64* %_x4098
  %_4165 = load i64, i64* %_y4099
  %_4166 = load i64, i64* %_x4098
  %_4167 = sub i64 %_4165, %_4166
  %_4168 = lshr i64 %_4167, 1
  %_4170 = call i64 @binary_gcd(i64 %_4168, i64 %_4169)
  ret i64 %_4170
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_4093 = alloca i64
  %_4094 = alloca i64
  %_argv4092 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4092
  %_argc4091 = alloca i64
  store i64 %argc, i64* %_argc4091
  store i64 21, i64* %_4093
  store i64 15, i64* %_4094
  %_4096 = load i64, i64* %_4094
  %_4095 = load i64, i64* %_4093
  %_4097 = call i64 @binary_gcd(i64 %_4095, i64 %_4096)
  ret i64 %_4097
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
