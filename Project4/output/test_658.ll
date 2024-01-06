; generated from: oatprograms/gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @gcd(i64 %a, i64 %b) {
  %_4204 = alloca i64
  %_b4197 = alloca i64
  store i64 %b, i64* %_b4197
  %_a4196 = alloca i64
  store i64 %a, i64* %_a4196
  br label %_cnd4200
_cnd4200:
  %_4198 = load i64, i64* %_b4197
  %_4199 = icmp ne i64 %_4198, 0
  br i1 %_4199, label %_loop4202, label %_end4201
_loop4202:
  %_4203 = load i64, i64* %_b4197
  store i64 %_4203, i64* %_4204
  %_4206 = load i64, i64* %_b4197
  %_4205 = load i64, i64* %_a4196
  %_4207 = call i64 @mod(i64 %_4205, i64 %_4206)
  store i64 %_4207, i64* %_b4197
  %_4208 = load i64, i64* %_4204
  store i64 %_4208, i64* %_a4196
  br label %_cnd4200
_end4201:
  %_4209 = load i64, i64* %_a4196
  ret i64 %_4209
}

define i64 @mod(i64 %a, i64 %b) {
  %_4184 = alloca i64
  %_b4182 = alloca i64
  store i64 %b, i64* %_b4182
  %_a4181 = alloca i64
  store i64 %a, i64* %_a4181
  %_4183 = load i64, i64* %_a4181
  store i64 %_4183, i64* %_4184
  br label %_cnd4189
_cnd4189:
  %_4185 = load i64, i64* %_4184
  %_4186 = load i64, i64* %_b4182
  %_4187 = sub i64 %_4185, %_4186
  %_4188 = icmp sge i64 %_4187, 0
  br i1 %_4188, label %_loop4191, label %_end4190
_loop4191:
  %_4192 = load i64, i64* %_4184
  %_4193 = load i64, i64* %_b4182
  %_4194 = sub i64 %_4192, %_4193
  store i64 %_4194, i64* %_4184
  br label %_cnd4189
_end4190:
  %_4195 = load i64, i64* %_4184
  ret i64 %_4195
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_4176 = alloca i64
  %_4177 = alloca i64
  %_argv4175 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4175
  %_argc4174 = alloca i64
  store i64 %argc, i64* %_argc4174
  store i64 64, i64* %_4176
  store i64 48, i64* %_4177
  %_4179 = load i64, i64* %_4177
  %_4178 = load i64, i64* %_4176
  %_4180 = call i64 @gcd(i64 %_4178, i64 %_4179)
  ret i64 %_4180
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
