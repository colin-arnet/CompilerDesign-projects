; generated from: oatprograms/gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @gcd(i64 %a, i64 %b) {
  %_4450 = alloca i64
  %_b4443 = alloca i64
  store i64 %b, i64* %_b4443
  %_a4442 = alloca i64
  store i64 %a, i64* %_a4442
  br label %_cnd4446
_cnd4446:
  %_4444 = load i64, i64* %_b4443
  %_4445 = icmp ne i64 %_4444, 0
  br i1 %_4445, label %_loop4448, label %_end4447
_loop4448:
  %_4449 = load i64, i64* %_b4443
  store i64 %_4449, i64* %_4450
  %_4452 = load i64, i64* %_b4443
  %_4451 = load i64, i64* %_a4442
  %_4453 = call i64 @mod(i64 %_4451, i64 %_4452)
  store i64 %_4453, i64* %_b4443
  %_4454 = load i64, i64* %_4450
  store i64 %_4454, i64* %_a4442
  br label %_cnd4446
_end4447:
  %_4455 = load i64, i64* %_a4442
  ret i64 %_4455
}

define i64 @mod(i64 %a, i64 %b) {
  %_4430 = alloca i64
  %_b4428 = alloca i64
  store i64 %b, i64* %_b4428
  %_a4427 = alloca i64
  store i64 %a, i64* %_a4427
  %_4429 = load i64, i64* %_a4427
  store i64 %_4429, i64* %_4430
  br label %_cnd4435
_cnd4435:
  %_4431 = load i64, i64* %_4430
  %_4432 = load i64, i64* %_b4428
  %_4433 = sub i64 %_4431, %_4432
  %_4434 = icmp sge i64 %_4433, 0
  br i1 %_4434, label %_loop4437, label %_end4436
_loop4437:
  %_4438 = load i64, i64* %_4430
  %_4439 = load i64, i64* %_b4428
  %_4440 = sub i64 %_4438, %_4439
  store i64 %_4440, i64* %_4430
  br label %_cnd4435
_end4436:
  %_4441 = load i64, i64* %_4430
  ret i64 %_4441
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_4422 = alloca i64
  %_4423 = alloca i64
  %_argv4421 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4421
  %_argc4420 = alloca i64
  store i64 %argc, i64* %_argc4420
  store i64 64, i64* %_4422
  store i64 48, i64* %_4423
  %_4425 = load i64, i64* %_4423
  %_4424 = load i64, i64* %_4422
  %_4426 = call i64 @gcd(i64 %_4424, i64 %_4425)
  ret i64 %_4426
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
