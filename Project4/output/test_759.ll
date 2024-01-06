; generated from: oatprograms/lcs.oat
target triple = "x86_64-unknown-linux"
@buf = global { i64, [1 x i64] }* @_garr4552
@_garr4552 = global { i64, [1 x i64] } { i64 1, [1 x i64] [ i64 0 ] }
@_4476 = global [1 x i8] c"\00"
@_4454 = global [7 x i8] c"TOMATO\00"
@_4457 = global [8 x i8] c"ORATING\00"

define i8* @lcs(i64 %i, i64 %j, i8* %a, i8* %b) {
  %_4480 = alloca { i64, [0 x i64] }*
  %_4483 = alloca { i64, [0 x i64] }*
  %_4489 = alloca i64
  %_4495 = alloca i64
  %_4509 = alloca i8*
  %_4520 = alloca i8*
  %_4530 = alloca i8*
  %_4537 = alloca i8*
  %_4540 = alloca i64
  %_4543 = alloca i64
  %_b4467 = alloca i8*
  store i8* %b, i8** %_b4467
  %_a4466 = alloca i8*
  store i8* %a, i8** %_a4466
  %_j4465 = alloca i64
  store i64 %j, i64* %_j4465
  %_i4464 = alloca i64
  store i64 %i, i64* %_i4464
  %_4468 = load i64, i64* %_i4464
  %_4469 = icmp slt i64 %_4468, 0
  %_4470 = load i64, i64* %_j4465
  %_4471 = icmp slt i64 %_4470, 0
  %_4472 = or i1 %_4469, %_4471
  br i1 %_4472, label %_if4473, label %_else4474
_if4473:
  %_4477 = bitcast [1 x i8]* @_4476 to i8*
  ret i8* %_4477
_else4474:
  %_4478 = load i8*, i8** %_a4466
  %_4479 = call { i64, [0 x i64] }* @array_of_string(i8* %_4478)
  store { i64, [0 x i64] }* %_4479, { i64, [0 x i64] }** %_4480
  %_4481 = load i8*, i8** %_b4467
  %_4482 = call { i64, [0 x i64] }* @array_of_string(i8* %_4481)
  store { i64, [0 x i64] }* %_4482, { i64, [0 x i64] }** %_4483
  %_4484 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4480
  %_4485 = load i64, i64* %_i4464
  %_4488 = bitcast { i64, [0 x i64] }* %_4484 to i64*
  %_4486 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4484, i32 0, i32 1, i64 %_4485
  %_4487 = load i64, i64* %_4486
  store i64 %_4487, i64* %_4489
  %_4490 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4483
  %_4491 = load i64, i64* %_j4465
  %_4494 = bitcast { i64, [0 x i64] }* %_4490 to i64*
  %_4492 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4490, i32 0, i32 1, i64 %_4491
  %_4493 = load i64, i64* %_4492
  store i64 %_4493, i64* %_4495
  %_4496 = load i64, i64* %_4489
  %_4497 = load i64, i64* %_4495
  %_4498 = icmp eq i64 %_4496, %_4497
  br i1 %_4498, label %_if4499, label %_else4500
_if4499:
  %_4507 = load i8*, i8** %_b4467
  %_4506 = load i8*, i8** %_a4466
  %_4504 = load i64, i64* %_j4465
  %_4505 = sub i64 %_4504, 1
  %_4502 = load i64, i64* %_i4464
  %_4503 = sub i64 %_4502, 1
  %_4508 = call i8* @lcs(i64 %_4503, i64 %_4505, i8* %_4506, i8* %_4507)
  store i8* %_4508, i8** %_4509
  %_4510 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4480
  %_4511 = load i64, i64* %_i4464
  %_4514 = bitcast { i64, [0 x i64] }* %_4510 to i64*
  %_4512 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4510, i32 0, i32 1, i64 %_4511
  %_4513 = load i64, i64* %_4512
  %_4515 = load { i64, [1 x i64] }*, { i64, [1 x i64] }** @buf
  %_4516 = getelementptr { i64, [1 x i64] }, { i64, [1 x i64] }* %_4515, i32 0, i32 1, i32 0
  store i64 %_4513, i64* %_4516
  %_4517 = load { i64, [1 x i64] }*, { i64, [1 x i64] }** @buf
  %_4518 = bitcast { i64, [1 x i64] }* %_4517 to { i64, [0 x i64] }*
  %_4519 = call i8* @string_of_array({ i64, [0 x i64] }* %_4518)
  store i8* %_4519, i8** %_4520
  %_4522 = load i8*, i8** %_4520
  %_4521 = load i8*, i8** %_4509
  %_4523 = call i8* @string_cat(i8* %_4521, i8* %_4522)
  ret i8* %_4523
_else4500:
  %_4528 = load i8*, i8** %_b4467
  %_4527 = load i8*, i8** %_a4466
  %_4525 = load i64, i64* %_j4465
  %_4526 = sub i64 %_4525, 1
  %_4524 = load i64, i64* %_i4464
  %_4529 = call i8* @lcs(i64 %_4524, i64 %_4526, i8* %_4527, i8* %_4528)
  store i8* %_4529, i8** %_4530
  %_4535 = load i8*, i8** %_b4467
  %_4534 = load i8*, i8** %_a4466
  %_4533 = load i64, i64* %_j4465
  %_4531 = load i64, i64* %_i4464
  %_4532 = sub i64 %_4531, 1
  %_4536 = call i8* @lcs(i64 %_4532, i64 %_4533, i8* %_4534, i8* %_4535)
  store i8* %_4536, i8** %_4537
  %_4538 = load i8*, i8** %_4530
  %_4539 = call i64 @length_of_string(i8* %_4538)
  store i64 %_4539, i64* %_4540
  %_4541 = load i8*, i8** %_4537
  %_4542 = call i64 @length_of_string(i8* %_4541)
  store i64 %_4542, i64* %_4543
  %_4544 = load i64, i64* %_4540
  %_4545 = load i64, i64* %_4543
  %_4546 = icmp slt i64 %_4544, %_4545
  br i1 %_4546, label %_if4547, label %_else4548
_if4547:
  %_4550 = load i8*, i8** %_4537
  ret i8* %_4550
_else4548:
  %_4551 = load i8*, i8** %_4530
  ret i8* %_4551
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_4456 = alloca i8*
  %_4459 = alloca i8*
  %_argv4453 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4453
  %_argc4452 = alloca i64
  store i64 %argc, i64* %_argc4452
  %_4455 = bitcast [7 x i8]* @_4454 to i8*
  store i8* %_4455, i8** %_4456
  %_4458 = bitcast [8 x i8]* @_4457 to i8*
  store i8* %_4458, i8** %_4459
  %_4461 = load i8*, i8** %_4459
  %_4460 = load i8*, i8** %_4456
  %_4462 = call i8* @lcs(i64 5, i64 6, i8* %_4460, i8* %_4461)
  call void @print_string(i8* %_4462)
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
