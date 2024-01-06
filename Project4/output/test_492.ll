; generated from: oatprograms/run35.oat
target triple = "x86_64-unknown-linux"
@a = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_526 = alloca i64
  %_527 = alloca i64
  %_533 = alloca i64
  %_argv502 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv502
  %_argc501 = alloca i64
  store i64 %argc, i64* %_argc501
  %_raw_array503 = call i64* @oat_alloc_array(i64 3)
  %_array504 = bitcast i64* %_raw_array503 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array517 = call i64* @oat_alloc_array(i64 4)
  %_array518 = bitcast i64* %_raw_array517 to { i64, [0 x i64] }*
  %_522 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array518, i32 0, i32 1, i32 3
  store i64 11, i64* %_522
  %_521 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array518, i32 0, i32 1, i32 2
  store i64 10, i64* %_521
  %_520 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array518, i32 0, i32 1, i32 1
  store i64 9, i64* %_520
  %_519 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array518, i32 0, i32 1, i32 0
  store i64 8, i64* %_519
  %_raw_array511 = call i64* @oat_alloc_array(i64 4)
  %_array512 = bitcast i64* %_raw_array511 to { i64, [0 x i64] }*
  %_516 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array512, i32 0, i32 1, i32 3
  store i64 7, i64* %_516
  %_515 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array512, i32 0, i32 1, i32 2
  store i64 6, i64* %_515
  %_514 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array512, i32 0, i32 1, i32 1
  store i64 5, i64* %_514
  %_513 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array512, i32 0, i32 1, i32 0
  store i64 4, i64* %_513
  %_raw_array505 = call i64* @oat_alloc_array(i64 4)
  %_array506 = bitcast i64* %_raw_array505 to { i64, [0 x i64] }*
  %_510 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array506, i32 0, i32 1, i32 3
  store i64 3, i64* %_510
  %_509 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array506, i32 0, i32 1, i32 2
  store i64 2, i64* %_509
  %_508 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array506, i32 0, i32 1, i32 1
  store i64 1, i64* %_508
  %_507 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array506, i32 0, i32 1, i32 0
  store i64 0, i64* %_507
  %_525 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array504, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array518, { i64, [0 x i64] }** %_525
  %_524 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array504, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array512, { i64, [0 x i64] }** %_524
  %_523 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array504, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array506, { i64, [0 x i64] }** %_523
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array504, { i64, [0 x { i64, [0 x i64] }*] }** @a
  store i64 0, i64* %_526
  store i64 0, i64* %_527
  br label %_cnd530
_cnd530:
  %_528 = load i64, i64* %_527
  %_529 = icmp slt i64 %_528, 3
  br i1 %_529, label %_loop532, label %_end531
_loop532:
  store i64 0, i64* %_533
  br label %_cnd536
_cnd536:
  %_534 = load i64, i64* %_533
  %_535 = icmp slt i64 %_534, 4
  br i1 %_535, label %_loop538, label %_end537
_loop538:
  %_539 = load i64, i64* %_526
  %_540 = load { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* @a
  %_541 = load i64, i64* %_527
  %_544 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_540 to i64*
  %_542 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_540, i32 1, i64 %_541
  %_543 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_542
  %_545 = load i64, i64* %_533
  %_548 = bitcast { i64, [0 x i64] }* %_543 to i64*
  %_546 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_543, i32 0, i32 1, i64 %_545
  %_547 = load i64, i64* %_546
  %_549 = add i64 %_539, %_547
  store i64 %_549, i64* %_526
  %_550 = load i64, i64* %_533
  %_551 = add i64 %_550, 1
  store i64 %_551, i64* %_533
  br label %_cnd536
_end537:
  %_552 = load i64, i64* %_527
  %_553 = add i64 %_552, 1
  store i64 %_553, i64* %_527
  br label %_cnd530
_end531:
  %_554 = load i64, i64* %_526
  ret i64 %_554
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
