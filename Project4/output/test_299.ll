; generated from: oatprograms/run41.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %x1, i64 %x2, i64 %x3, i64 %x4, i64 %x5, i64 %x6, i64 %x7, i64 %x8) {
  %_x8499 = alloca i64
  store i64 %x8, i64* %_x8499
  %_x7498 = alloca i64
  store i64 %x7, i64* %_x7498
  %_x6497 = alloca i64
  store i64 %x6, i64* %_x6497
  %_x5496 = alloca i64
  store i64 %x5, i64* %_x5496
  %_x4495 = alloca i64
  store i64 %x4, i64* %_x4495
  %_x3494 = alloca i64
  store i64 %x3, i64* %_x3494
  %_x2493 = alloca i64
  store i64 %x2, i64* %_x2493
  %_x1492 = alloca i64
  store i64 %x1, i64* %_x1492
  %_500 = load i64, i64* %_x1492
  %_501 = load i64, i64* %_x2493
  %_502 = add i64 %_500, %_501
  %_503 = load i64, i64* %_x3494
  %_504 = add i64 %_502, %_503
  %_505 = load i64, i64* %_x4495
  %_506 = add i64 %_504, %_505
  %_507 = load i64, i64* %_x5496
  %_508 = add i64 %_506, %_507
  %_509 = load i64, i64* %_x6497
  %_510 = add i64 %_508, %_509
  %_511 = load i64, i64* %_x7498
  %_512 = add i64 %_510, %_511
  %_513 = load i64, i64* %_x8499
  %_514 = add i64 %_512, %_513
  ret i64 %_514
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argv487 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv487
  %_argc486 = alloca i64
  store i64 %argc, i64* %_argc486
  %_490 = mul i64 3, -1
  %_489 = mul i64 4, -1
  %_488 = mul i64 5, -1
  %_491 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_488, i64 %_489, i64 %_490)
  ret i64 %_491
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
