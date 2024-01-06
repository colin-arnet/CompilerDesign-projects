; generated from: oatprograms/lfsr.oat
target triple = "x86_64-unknown-linux"
@lfsr_iterations = global i64 5
@lfsr_length = global i64 4
@lfsr_init_values = global { i64, [4 x i1] }* @_garr4287
@_garr4287 = global { i64, [4 x i1] } { i64 4, [4 x i1] [ i1 1, i1 0, i1 1, i1 0 ] }
@_4272 = global [2 x i8] c"T\00"
@_4274 = global [2 x i8] c"F\00"
@_4243 = global [2 x i8] c" \00"

define i1 @xor(i1 %x, i1 %y) {
  %_y4277 = alloca i1
  store i1 %y, i1* %_y4277
  %_x4276 = alloca i1
  store i1 %x, i1* %_x4276
  %_4278 = load i1, i1* %_x4276
  %_4279 = load i1, i1* %_y4277
  %_4280 = xor i1 %_4279, 1
  %_4281 = and i1 %_4278, %_4280
  %_4282 = load i1, i1* %_x4276
  %_4283 = xor i1 %_4282, 1
  %_4284 = load i1, i1* %_y4277
  %_4285 = and i1 %_4283, %_4284
  %_4286 = or i1 %_4281, %_4285
  ret i1 %_4286
}

define i8* @string_of_bool(i1 %b) {
  %_b4267 = alloca i1
  store i1 %b, i1* %_b4267
  %_4268 = load i1, i1* %_b4267
  br i1 %_4268, label %_if4269, label %_else4270
_if4269:
  %_4273 = bitcast [2 x i8]* @_4272 to i8*
  ret i8* %_4273
_else4270:
  %_4275 = bitcast [2 x i8]* @_4274 to i8*
  ret i8* %_4275
}

define void @print_lfsr({ i64, [0 x i1] }* %lfsr_register, i64 %len) {
  %_4251 = alloca i64
  %_len4250 = alloca i64
  store i64 %len, i64* %_len4250
  %_lfsr_register4249 = alloca { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %lfsr_register, { i64, [0 x i1] }** %_lfsr_register4249
  store i64 0, i64* %_4251
  br label %_cnd4255
_cnd4255:
  %_4252 = load i64, i64* %_4251
  %_4253 = load i64, i64* %_len4250
  %_4254 = icmp slt i64 %_4252, %_4253
  br i1 %_4254, label %_loop4257, label %_end4256
_loop4257:
  %_4258 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register4249
  %_4259 = load i64, i64* %_4251
  %_4262 = bitcast { i64, [0 x i1] }* %_4258 to i64*
  %_4260 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_4258, i32 0, i32 1, i64 %_4259
  %_4261 = load i1, i1* %_4260
  %_4263 = call i8* @string_of_bool(i1 %_4261)
  call void @print_string(i8* %_4263)
  %_4265 = load i64, i64* %_4251
  %_4266 = add i64 %_4265, 1
  store i64 %_4266, i64* %_4251
  br label %_cnd4255
_end4256:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_4176 = alloca { i64, [0 x i1] }*
  %_4177 = alloca i64
  %_4194 = alloca i64
  %_4214 = alloca i1
  %_4217 = alloca i64
  %_argv4172 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4172
  %_argc4171 = alloca i64
  store i64 %argc, i64* %_argc4171
  %_4173 = load i64, i64* @lfsr_length
  %_raw_array4174 = call i64* @oat_alloc_array(i64 %_4173)
  %_array4175 = bitcast i64* %_raw_array4174 to { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array4175, { i64, [0 x i1] }** %_4176
  store i64 0, i64* %_4177
  br label %_cnd4181
_cnd4181:
  %_4178 = load i64, i64* %_4177
  %_4179 = load i64, i64* @lfsr_length
  %_4180 = icmp slt i64 %_4178, %_4179
  br i1 %_4180, label %_loop4183, label %_end4182
_loop4183:
  %_4184 = load { i64, [4 x i1] }*, { i64, [4 x i1] }** @lfsr_init_values
  %_4185 = load i64, i64* %_4177
  %_4188 = bitcast { i64, [4 x i1] }* %_4184 to i64*
  %_4186 = getelementptr { i64, [4 x i1] }, { i64, [4 x i1] }* %_4184, i32 0, i32 1, i64 %_4185
  %_4187 = load i1, i1* %_4186
  %_4189 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_4176
  %_4190 = load i64, i64* %_4177
  %_4191 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_4189, i32 0, i32 1, i64 %_4190
  store i1 %_4187, i1* %_4191
  %_4192 = load i64, i64* %_4177
  %_4193 = add i64 %_4192, 1
  store i64 %_4193, i64* %_4177
  br label %_cnd4181
_end4182:
  store i64 0, i64* %_4194
  br label %_cnd4198
_cnd4198:
  %_4195 = load i64, i64* %_4194
  %_4196 = load i64, i64* @lfsr_iterations
  %_4197 = icmp slt i64 %_4195, %_4196
  br i1 %_4197, label %_loop4200, label %_end4199
_loop4200:
  %_4207 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_4176
  %_4208 = load i64, i64* @lfsr_length
  %_4209 = sub i64 %_4208, 2
  %_4212 = bitcast { i64, [0 x i1] }* %_4207 to i64*
  %_4210 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_4207, i32 0, i32 1, i64 %_4209
  %_4211 = load i1, i1* %_4210
  %_4201 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_4176
  %_4202 = load i64, i64* @lfsr_length
  %_4203 = sub i64 %_4202, 1
  %_4206 = bitcast { i64, [0 x i1] }* %_4201 to i64*
  %_4204 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_4201, i32 0, i32 1, i64 %_4203
  %_4205 = load i1, i1* %_4204
  %_4213 = call i1 @xor(i1 %_4205, i1 %_4211)
  store i1 %_4213, i1* %_4214
  %_4215 = load i64, i64* @lfsr_length
  %_4216 = sub i64 %_4215, 1
  store i64 %_4216, i64* %_4217
  br label %_cnd4220
_cnd4220:
  %_4218 = load i64, i64* %_4217
  %_4219 = icmp sgt i64 %_4218, 0
  br i1 %_4219, label %_loop4222, label %_end4221
_loop4222:
  %_4223 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_4176
  %_4224 = load i64, i64* %_4217
  %_4225 = sub i64 %_4224, 1
  %_4228 = bitcast { i64, [0 x i1] }* %_4223 to i64*
  %_4226 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_4223, i32 0, i32 1, i64 %_4225
  %_4227 = load i1, i1* %_4226
  %_4229 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_4176
  %_4230 = load i64, i64* %_4217
  %_4231 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_4229, i32 0, i32 1, i64 %_4230
  store i1 %_4227, i1* %_4231
  %_4232 = load i64, i64* %_4217
  %_4233 = sub i64 %_4232, 1
  store i64 %_4233, i64* %_4217
  br label %_cnd4220
_end4221:
  %_4234 = load i1, i1* %_4214
  %_4235 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_4176
  %_4236 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_4235, i32 0, i32 1, i32 0
  store i1 %_4234, i1* %_4236
  %_4237 = load i64, i64* %_4194
  %_4238 = add i64 %_4237, 1
  store i64 %_4238, i64* %_4194
  br label %_cnd4198
_end4199:
  %_4241 = load i64, i64* @lfsr_length
  %_4239 = load { i64, [4 x i1] }*, { i64, [4 x i1] }** @lfsr_init_values
  %_4240 = bitcast { i64, [4 x i1] }* %_4239 to { i64, [0 x i1] }*
  call void @print_lfsr({ i64, [0 x i1] }* %_4240, i64 %_4241)
  %_4244 = bitcast [2 x i8]* @_4243 to i8*
  call void @print_string(i8* %_4244)
  %_4247 = load i64, i64* @lfsr_length
  %_4246 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_4176
  call void @print_lfsr({ i64, [0 x i1] }* %_4246, i64 %_4247)
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
