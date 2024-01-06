; generated from: oatprograms/run34.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_471 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_472 = alloca i64
  %_473 = alloca i64
  %_479 = alloca i64
  %_argv447 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv447
  %_argc446 = alloca i64
  store i64 %argc, i64* %_argc446
  %_raw_array448 = call i64* @oat_alloc_array(i64 3)
  %_array449 = bitcast i64* %_raw_array448 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array462 = call i64* @oat_alloc_array(i64 4)
  %_array463 = bitcast i64* %_raw_array462 to { i64, [0 x i64] }*
  %_467 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array463, i32 0, i32 1, i32 3
  store i64 11, i64* %_467
  %_466 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array463, i32 0, i32 1, i32 2
  store i64 10, i64* %_466
  %_465 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array463, i32 0, i32 1, i32 1
  store i64 9, i64* %_465
  %_464 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array463, i32 0, i32 1, i32 0
  store i64 8, i64* %_464
  %_raw_array456 = call i64* @oat_alloc_array(i64 4)
  %_array457 = bitcast i64* %_raw_array456 to { i64, [0 x i64] }*
  %_461 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array457, i32 0, i32 1, i32 3
  store i64 7, i64* %_461
  %_460 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array457, i32 0, i32 1, i32 2
  store i64 6, i64* %_460
  %_459 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array457, i32 0, i32 1, i32 1
  store i64 5, i64* %_459
  %_458 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array457, i32 0, i32 1, i32 0
  store i64 4, i64* %_458
  %_raw_array450 = call i64* @oat_alloc_array(i64 4)
  %_array451 = bitcast i64* %_raw_array450 to { i64, [0 x i64] }*
  %_455 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array451, i32 0, i32 1, i32 3
  store i64 3, i64* %_455
  %_454 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array451, i32 0, i32 1, i32 2
  store i64 2, i64* %_454
  %_453 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array451, i32 0, i32 1, i32 1
  store i64 1, i64* %_453
  %_452 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array451, i32 0, i32 1, i32 0
  store i64 0, i64* %_452
  %_470 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array449, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array463, { i64, [0 x i64] }** %_470
  %_469 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array449, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array457, { i64, [0 x i64] }** %_469
  %_468 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array449, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array451, { i64, [0 x i64] }** %_468
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array449, { i64, [0 x { i64, [0 x i64] }*] }** %_471
  store i64 0, i64* %_472
  store i64 0, i64* %_473
  br label %_cnd476
_cnd476:
  %_474 = load i64, i64* %_473
  %_475 = icmp slt i64 %_474, 3
  br i1 %_475, label %_loop478, label %_end477
_loop478:
  store i64 0, i64* %_479
  br label %_cnd482
_cnd482:
  %_480 = load i64, i64* %_479
  %_481 = icmp slt i64 %_480, 4
  br i1 %_481, label %_loop484, label %_end483
_loop484:
  %_485 = load i64, i64* %_472
  %_486 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_471
  %_487 = load i64, i64* %_473
  %_490 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_486 to i64*
  %_488 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_486, i32 0, i32 1, i64 %_487
  %_489 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_488
  %_491 = load i64, i64* %_479
  %_494 = bitcast { i64, [0 x i64] }* %_489 to i64*
  %_492 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_489, i32 0, i32 1, i64 %_491
  %_493 = load i64, i64* %_492
  %_495 = add i64 %_485, %_493
  store i64 %_495, i64* %_472
  %_496 = load i64, i64* %_479
  %_497 = add i64 %_496, 1
  store i64 %_497, i64* %_479
  br label %_cnd482
_end483:
  %_498 = load i64, i64* %_473
  %_499 = add i64 %_498, 1
  store i64 %_499, i64* %_473
  br label %_cnd476
_end477:
  %_500 = load i64, i64* %_472
  ret i64 %_500
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
