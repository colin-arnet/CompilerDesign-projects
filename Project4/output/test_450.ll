; generated from: oatprograms/gnomesort.oat
target triple = "x86_64-unknown-linux"
define void @gnomeSort({ i64, [0 x i64] }* %a, i64 %len) {
  %_4321 = alloca i64
  %_4322 = alloca i64
  %_4353 = alloca i64
  %_len4320 = alloca i64
  store i64 %len, i64* %_len4320
  %_a4319 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a4319
  store i64 1, i64* %_4321
  store i64 2, i64* %_4322
  br label %_cnd4326
_cnd4326:
  %_4323 = load i64, i64* %_4321
  %_4324 = load i64, i64* %_len4320
  %_4325 = icmp slt i64 %_4323, %_4324
  br i1 %_4325, label %_loop4328, label %_end4327
_loop4328:
  %_4329 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4319
  %_4330 = load i64, i64* %_4321
  %_4331 = sub i64 %_4330, 1
  %_4334 = bitcast { i64, [0 x i64] }* %_4329 to i64*
  %_4332 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4329, i32 0, i32 1, i64 %_4331
  %_4333 = load i64, i64* %_4332
  %_4335 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4319
  %_4336 = load i64, i64* %_4321
  %_4339 = bitcast { i64, [0 x i64] }* %_4335 to i64*
  %_4337 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4335, i32 0, i32 1, i64 %_4336
  %_4338 = load i64, i64* %_4337
  %_4340 = icmp sle i64 %_4333, %_4338
  br i1 %_4340, label %_if4341, label %_else4342
_if4341:
  %_4344 = load i64, i64* %_4322
  store i64 %_4344, i64* %_4321
  %_4345 = load i64, i64* %_4322
  %_4346 = add i64 %_4345, 1
  store i64 %_4346, i64* %_4322
  br label %_end4343
_else4342:
  %_4347 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4319
  %_4348 = load i64, i64* %_4321
  %_4349 = sub i64 %_4348, 1
  %_4352 = bitcast { i64, [0 x i64] }* %_4347 to i64*
  %_4350 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4347, i32 0, i32 1, i64 %_4349
  %_4351 = load i64, i64* %_4350
  store i64 %_4351, i64* %_4353
  %_4354 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4319
  %_4355 = load i64, i64* %_4321
  %_4358 = bitcast { i64, [0 x i64] }* %_4354 to i64*
  %_4356 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4354, i32 0, i32 1, i64 %_4355
  %_4357 = load i64, i64* %_4356
  %_4359 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4319
  %_4360 = load i64, i64* %_4321
  %_4361 = sub i64 %_4360, 1
  %_4362 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4359, i32 0, i32 1, i64 %_4361
  store i64 %_4357, i64* %_4362
  %_4363 = load i64, i64* %_4353
  %_4364 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4319
  %_4365 = load i64, i64* %_4321
  %_4366 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4364, i32 0, i32 1, i64 %_4365
  store i64 %_4363, i64* %_4366
  %_4367 = load i64, i64* %_4321
  %_4368 = sub i64 %_4367, 1
  store i64 %_4368, i64* %_4321
  %_4369 = load i64, i64* %_4321
  %_4370 = icmp eq i64 %_4369, 0
  br i1 %_4370, label %_if4371, label %_else4372
_if4371:
  %_4374 = load i64, i64* %_4322
  store i64 %_4374, i64* %_4321
  %_4375 = load i64, i64* %_4322
  %_4376 = add i64 %_4375, 1
  store i64 %_4376, i64* %_4322
  br label %_else4372
_else4372:
  br label %_end4343
_end4343:
  br label %_cnd4326
_end4327:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_4300 = alloca { i64, [0 x i64] }*
  %_4301 = alloca i64
  %_4305 = alloca i64
  %_argv4289 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4289
  %_argc4288 = alloca i64
  store i64 %argc, i64* %_argc4288
  %_raw_array4290 = call i64* @oat_alloc_array(i64 8)
  %_array4291 = bitcast i64* %_raw_array4290 to { i64, [0 x i64] }*
  %_4299 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4291, i32 0, i32 1, i32 7
  store i64 0, i64* %_4299
  %_4298 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4291, i32 0, i32 1, i32 6
  store i64 2, i64* %_4298
  %_4297 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4291, i32 0, i32 1, i32 5
  store i64 99, i64* %_4297
  %_4296 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4291, i32 0, i32 1, i32 4
  store i64 30, i64* %_4296
  %_4295 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4291, i32 0, i32 1, i32 3
  store i64 65, i64* %_4295
  %_4294 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4291, i32 0, i32 1, i32 2
  store i64 1, i64* %_4294
  %_4293 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4291, i32 0, i32 1, i32 1
  store i64 200, i64* %_4293
  %_4292 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4291, i32 0, i32 1, i32 0
  store i64 5, i64* %_4292
  store { i64, [0 x i64] }* %_array4291, { i64, [0 x i64] }** %_4300
  store i64 8, i64* %_4301
  %_4303 = load i64, i64* %_4301
  %_4302 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4300
  call void @gnomeSort({ i64, [0 x i64] }* %_4302, i64 %_4303)
  store i64 0, i64* %_4305
  br label %_cnd4308
_cnd4308:
  %_4306 = load i64, i64* %_4305
  %_4307 = icmp slt i64 %_4306, 8
  br i1 %_4307, label %_loop4310, label %_end4309
_loop4310:
  %_4311 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4300
  %_4312 = load i64, i64* %_4305
  %_4315 = bitcast { i64, [0 x i64] }* %_4311 to i64*
  %_4313 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4311, i32 0, i32 1, i64 %_4312
  %_4314 = load i64, i64* %_4313
  call void @print_int(i64 %_4314)
  %_4317 = load i64, i64* %_4305
  %_4318 = add i64 %_4317, 1
  store i64 %_4318, i64* %_4305
  br label %_cnd4308
_end4309:
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
