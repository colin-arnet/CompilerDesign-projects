; generated from: oatprograms/life.oat
target triple = "x86_64-unknown-linux"
@len = global i64 4

define i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %board, i64 %i, i64 %j, i64 %count) {
  %_count4423 = alloca i64
  store i64 %count, i64* %_count4423
  %_j4422 = alloca i64
  store i64 %j, i64* %_j4422
  %_i4421 = alloca i64
  store i64 %i, i64* %_i4421
  %_board4420 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %board, { i64, [0 x { i64, [0 x i64] }*] }** %_board4420
  %_4424 = load i64, i64* %_i4421
  %_4425 = icmp sge i64 %_4424, 0
  %_4426 = load i64, i64* %_j4422
  %_4427 = icmp sge i64 %_4426, 0
  %_4428 = and i1 %_4425, %_4427
  %_4429 = load i64, i64* %_i4421
  %_4430 = load i64, i64* @len
  %_4431 = icmp slt i64 %_4429, %_4430
  %_4432 = and i1 %_4428, %_4431
  %_4433 = load i64, i64* %_j4422
  %_4434 = load i64, i64* @len
  %_4435 = icmp slt i64 %_4433, %_4434
  %_4436 = and i1 %_4432, %_4435
  br i1 %_4436, label %_if4437, label %_else4438
_if4437:
  %_4440 = load i64, i64* %_count4423
  %_4441 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4420
  %_4442 = load i64, i64* %_i4421
  %_4445 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_4441 to i64*
  %_4443 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_4441, i32 0, i32 1, i64 %_4442
  %_4444 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4443
  %_4446 = load i64, i64* %_j4422
  %_4449 = bitcast { i64, [0 x i64] }* %_4444 to i64*
  %_4447 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4444, i32 0, i32 1, i64 %_4446
  %_4448 = load i64, i64* %_4447
  %_4450 = add i64 %_4440, %_4448
  ret i64 %_4450
_else4438:
  %_4451 = load i64, i64* %_count4423
  ret i64 %_4451
}

define i64 @val_at({ i64, [0 x { i64, [0 x i64] }*] }* %board, i64 %i, i64 %j) {
  %_4346 = alloca i64
  %_4347 = alloca i64
  %_j4336 = alloca i64
  store i64 %j, i64* %_j4336
  %_i4335 = alloca i64
  store i64 %i, i64* %_i4335
  %_board4334 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %board, { i64, [0 x { i64, [0 x i64] }*] }** %_board4334
  %_4337 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4334
  %_4338 = load i64, i64* %_i4335
  %_4341 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_4337 to i64*
  %_4339 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_4337, i32 0, i32 1, i64 %_4338
  %_4340 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4339
  %_4342 = load i64, i64* %_j4336
  %_4345 = bitcast { i64, [0 x i64] }* %_4340 to i64*
  %_4343 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4340, i32 0, i32 1, i64 %_4342
  %_4344 = load i64, i64* %_4343
  store i64 %_4344, i64* %_4346
  store i64 0, i64* %_4347
  %_4353 = load i64, i64* %_4347
  %_4351 = load i64, i64* %_j4336
  %_4352 = sub i64 %_4351, 1
  %_4349 = load i64, i64* %_i4335
  %_4350 = sub i64 %_4349, 1
  %_4348 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4334
  %_4354 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_4348, i64 %_4350, i64 %_4352, i64 %_4353)
  store i64 %_4354, i64* %_4347
  %_4359 = load i64, i64* %_4347
  %_4358 = load i64, i64* %_j4336
  %_4356 = load i64, i64* %_i4335
  %_4357 = sub i64 %_4356, 1
  %_4355 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4334
  %_4360 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_4355, i64 %_4357, i64 %_4358, i64 %_4359)
  store i64 %_4360, i64* %_4347
  %_4366 = load i64, i64* %_4347
  %_4364 = load i64, i64* %_j4336
  %_4365 = add i64 %_4364, 1
  %_4362 = load i64, i64* %_i4335
  %_4363 = sub i64 %_4362, 1
  %_4361 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4334
  %_4367 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_4361, i64 %_4363, i64 %_4365, i64 %_4366)
  store i64 %_4367, i64* %_4347
  %_4372 = load i64, i64* %_4347
  %_4370 = load i64, i64* %_j4336
  %_4371 = sub i64 %_4370, 1
  %_4369 = load i64, i64* %_i4335
  %_4368 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4334
  %_4373 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_4368, i64 %_4369, i64 %_4371, i64 %_4372)
  store i64 %_4373, i64* %_4347
  %_4378 = load i64, i64* %_4347
  %_4376 = load i64, i64* %_j4336
  %_4377 = add i64 %_4376, 1
  %_4375 = load i64, i64* %_i4335
  %_4374 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4334
  %_4379 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_4374, i64 %_4375, i64 %_4377, i64 %_4378)
  store i64 %_4379, i64* %_4347
  %_4385 = load i64, i64* %_4347
  %_4383 = load i64, i64* %_j4336
  %_4384 = sub i64 %_4383, 1
  %_4381 = load i64, i64* %_i4335
  %_4382 = add i64 %_4381, 1
  %_4380 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4334
  %_4386 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_4380, i64 %_4382, i64 %_4384, i64 %_4385)
  store i64 %_4386, i64* %_4347
  %_4391 = load i64, i64* %_4347
  %_4390 = load i64, i64* %_j4336
  %_4388 = load i64, i64* %_i4335
  %_4389 = add i64 %_4388, 1
  %_4387 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4334
  %_4392 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_4387, i64 %_4389, i64 %_4390, i64 %_4391)
  store i64 %_4392, i64* %_4347
  %_4398 = load i64, i64* %_4347
  %_4396 = load i64, i64* %_j4336
  %_4397 = add i64 %_4396, 1
  %_4394 = load i64, i64* %_i4335
  %_4395 = add i64 %_4394, 1
  %_4393 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4334
  %_4399 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_4393, i64 %_4395, i64 %_4397, i64 %_4398)
  store i64 %_4399, i64* %_4347
  %_4400 = load i64, i64* %_4346
  %_4401 = icmp eq i64 %_4400, 1
  br i1 %_4401, label %_if4402, label %_else4403
_if4402:
  %_4405 = load i64, i64* %_4347
  %_4406 = icmp slt i64 %_4405, 2
  br i1 %_4406, label %_if4407, label %_else4408
_if4407:
  ret i64 0
_else4408:
  %_4410 = load i64, i64* %_4347
  %_4411 = icmp slt i64 %_4410, 4
  br i1 %_4411, label %_if4412, label %_else4413
_if4412:
  ret i64 1
_else4413:
  br label %_end4409
_end4409:
  ret i64 0
_else4403:
  %_4415 = load i64, i64* %_4347
  %_4416 = icmp eq i64 %_4415, 3
  br i1 %_4416, label %_if4417, label %_else4418
_if4417:
  ret i64 1
_else4418:
  ret i64 0
_end4419:
  ret i64 0
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_4242 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_4273 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_4274 = alloca i64
  %_4285 = alloca i64
  %_4306 = alloca i64
  %_4313 = alloca i64
  %_argv4211 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4211
  %_argc4210 = alloca i64
  store i64 %argc, i64* %_argc4210
  %_raw_array4212 = call i64* @oat_alloc_array(i64 4)
  %_array4213 = bitcast i64* %_raw_array4212 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array4232 = call i64* @oat_alloc_array(i64 4)
  %_array4233 = bitcast i64* %_raw_array4232 to { i64, [0 x i64] }*
  %_4237 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4233, i32 0, i32 1, i32 3
  store i64 0, i64* %_4237
  %_4236 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4233, i32 0, i32 1, i32 2
  store i64 0, i64* %_4236
  %_4235 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4233, i32 0, i32 1, i32 1
  store i64 0, i64* %_4235
  %_4234 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4233, i32 0, i32 1, i32 0
  store i64 0, i64* %_4234
  %_raw_array4226 = call i64* @oat_alloc_array(i64 4)
  %_array4227 = bitcast i64* %_raw_array4226 to { i64, [0 x i64] }*
  %_4231 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4227, i32 0, i32 1, i32 3
  store i64 0, i64* %_4231
  %_4230 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4227, i32 0, i32 1, i32 2
  store i64 1, i64* %_4230
  %_4229 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4227, i32 0, i32 1, i32 1
  store i64 1, i64* %_4229
  %_4228 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4227, i32 0, i32 1, i32 0
  store i64 1, i64* %_4228
  %_raw_array4220 = call i64* @oat_alloc_array(i64 4)
  %_array4221 = bitcast i64* %_raw_array4220 to { i64, [0 x i64] }*
  %_4225 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4221, i32 0, i32 1, i32 3
  store i64 1, i64* %_4225
  %_4224 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4221, i32 0, i32 1, i32 2
  store i64 1, i64* %_4224
  %_4223 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4221, i32 0, i32 1, i32 1
  store i64 1, i64* %_4223
  %_4222 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4221, i32 0, i32 1, i32 0
  store i64 0, i64* %_4222
  %_raw_array4214 = call i64* @oat_alloc_array(i64 4)
  %_array4215 = bitcast i64* %_raw_array4214 to { i64, [0 x i64] }*
  %_4219 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4215, i32 0, i32 1, i32 3
  store i64 0, i64* %_4219
  %_4218 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4215, i32 0, i32 1, i32 2
  store i64 0, i64* %_4218
  %_4217 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4215, i32 0, i32 1, i32 1
  store i64 0, i64* %_4217
  %_4216 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4215, i32 0, i32 1, i32 0
  store i64 0, i64* %_4216
  %_4241 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4213, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array4233, { i64, [0 x i64] }** %_4241
  %_4240 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4213, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array4227, { i64, [0 x i64] }** %_4240
  %_4239 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4213, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array4221, { i64, [0 x i64] }** %_4239
  %_4238 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4213, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array4215, { i64, [0 x i64] }** %_4238
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4213, { i64, [0 x { i64, [0 x i64] }*] }** %_4242
  %_raw_array4243 = call i64* @oat_alloc_array(i64 4)
  %_array4244 = bitcast i64* %_raw_array4243 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array4263 = call i64* @oat_alloc_array(i64 4)
  %_array4264 = bitcast i64* %_raw_array4263 to { i64, [0 x i64] }*
  %_4268 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4264, i32 0, i32 1, i32 3
  store i64 0, i64* %_4268
  %_4267 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4264, i32 0, i32 1, i32 2
  store i64 0, i64* %_4267
  %_4266 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4264, i32 0, i32 1, i32 1
  store i64 0, i64* %_4266
  %_4265 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4264, i32 0, i32 1, i32 0
  store i64 0, i64* %_4265
  %_raw_array4257 = call i64* @oat_alloc_array(i64 4)
  %_array4258 = bitcast i64* %_raw_array4257 to { i64, [0 x i64] }*
  %_4262 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4258, i32 0, i32 1, i32 3
  store i64 0, i64* %_4262
  %_4261 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4258, i32 0, i32 1, i32 2
  store i64 0, i64* %_4261
  %_4260 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4258, i32 0, i32 1, i32 1
  store i64 0, i64* %_4260
  %_4259 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4258, i32 0, i32 1, i32 0
  store i64 0, i64* %_4259
  %_raw_array4251 = call i64* @oat_alloc_array(i64 4)
  %_array4252 = bitcast i64* %_raw_array4251 to { i64, [0 x i64] }*
  %_4256 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4252, i32 0, i32 1, i32 3
  store i64 0, i64* %_4256
  %_4255 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4252, i32 0, i32 1, i32 2
  store i64 0, i64* %_4255
  %_4254 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4252, i32 0, i32 1, i32 1
  store i64 0, i64* %_4254
  %_4253 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4252, i32 0, i32 1, i32 0
  store i64 0, i64* %_4253
  %_raw_array4245 = call i64* @oat_alloc_array(i64 4)
  %_array4246 = bitcast i64* %_raw_array4245 to { i64, [0 x i64] }*
  %_4250 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4246, i32 0, i32 1, i32 3
  store i64 0, i64* %_4250
  %_4249 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4246, i32 0, i32 1, i32 2
  store i64 0, i64* %_4249
  %_4248 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4246, i32 0, i32 1, i32 1
  store i64 0, i64* %_4248
  %_4247 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4246, i32 0, i32 1, i32 0
  store i64 0, i64* %_4247
  %_4272 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4244, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array4264, { i64, [0 x i64] }** %_4272
  %_4271 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4244, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array4258, { i64, [0 x i64] }** %_4271
  %_4270 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4244, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array4252, { i64, [0 x i64] }** %_4270
  %_4269 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4244, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array4246, { i64, [0 x i64] }** %_4269
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4244, { i64, [0 x { i64, [0 x i64] }*] }** %_4273
  store i64 0, i64* %_4274
  br label %_cnd4277
_cnd4277:
  %_4275 = load i64, i64* %_4274
  %_4276 = icmp slt i64 %_4275, 4
  br i1 %_4276, label %_loop4279, label %_end4278
_loop4279:
  %_raw_array4280 = call i64* @oat_alloc_array(i64 4)
  %_array4281 = bitcast i64* %_raw_array4280 to { i64, [0 x i64] }*
  %_4282 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_4273
  %_4283 = load i64, i64* %_4274
  %_4284 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_4282, i32 0, i32 1, i64 %_4283
  store { i64, [0 x i64] }* %_array4281, { i64, [0 x i64] }** %_4284
  store i64 0, i64* %_4285
  br label %_cnd4288
_cnd4288:
  %_4286 = load i64, i64* %_4285
  %_4287 = icmp slt i64 %_4286, 4
  br i1 %_4287, label %_loop4290, label %_end4289
_loop4290:
  %_4293 = load i64, i64* %_4285
  %_4292 = load i64, i64* %_4274
  %_4291 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_4242
  %_4294 = call i64 @val_at({ i64, [0 x { i64, [0 x i64] }*] }* %_4291, i64 %_4292, i64 %_4293)
  %_4295 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_4273
  %_4296 = load i64, i64* %_4274
  %_4299 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_4295 to i64*
  %_4297 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_4295, i32 0, i32 1, i64 %_4296
  %_4298 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4297
  %_4300 = load i64, i64* %_4285
  %_4301 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4298, i32 0, i32 1, i64 %_4300
  store i64 %_4294, i64* %_4301
  %_4302 = load i64, i64* %_4285
  %_4303 = add i64 %_4302, 1
  store i64 %_4303, i64* %_4285
  br label %_cnd4288
_end4289:
  %_4304 = load i64, i64* %_4274
  %_4305 = add i64 %_4304, 1
  store i64 %_4305, i64* %_4274
  br label %_cnd4277
_end4278:
  store i64 0, i64* %_4306
  br label %_cnd4310
_cnd4310:
  %_4307 = load i64, i64* %_4306
  %_4308 = load i64, i64* @len
  %_4309 = icmp slt i64 %_4307, %_4308
  br i1 %_4309, label %_loop4312, label %_end4311
_loop4312:
  store i64 0, i64* %_4313
  br label %_cnd4317
_cnd4317:
  %_4314 = load i64, i64* %_4313
  %_4315 = load i64, i64* @len
  %_4316 = icmp slt i64 %_4314, %_4315
  br i1 %_4316, label %_loop4319, label %_end4318
_loop4319:
  %_4320 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_4273
  %_4321 = load i64, i64* %_4306
  %_4324 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_4320 to i64*
  %_4322 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_4320, i32 0, i32 1, i64 %_4321
  %_4323 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4322
  %_4325 = load i64, i64* %_4313
  %_4328 = bitcast { i64, [0 x i64] }* %_4323 to i64*
  %_4326 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4323, i32 0, i32 1, i64 %_4325
  %_4327 = load i64, i64* %_4326
  call void @print_int(i64 %_4327)
  %_4330 = load i64, i64* %_4313
  %_4331 = add i64 %_4330, 1
  store i64 %_4331, i64* %_4313
  br label %_cnd4317
_end4318:
  %_4332 = load i64, i64* %_4306
  %_4333 = add i64 %_4332, 1
  store i64 %_4333, i64* %_4306
  br label %_cnd4310
_end4311:
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
