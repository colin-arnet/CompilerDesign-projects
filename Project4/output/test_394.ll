; generated from: oatprograms/run37.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_580 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_argv567 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv567
  %_argc566 = alloca i64
  store i64 %argc, i64* %_argc566
  %_raw_array568 = call i64* @oat_alloc_array(i64 2)
  %_array569 = bitcast i64* %_raw_array568 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array574 = call i64* @oat_alloc_array(i64 2)
  %_array575 = bitcast i64* %_raw_array574 to { i64, [0 x i64] }*
  %_577 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array575, i32 0, i32 1, i32 1
  store i64 4, i64* %_577
  %_576 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array575, i32 0, i32 1, i32 0
  store i64 3, i64* %_576
  %_raw_array570 = call i64* @oat_alloc_array(i64 2)
  %_array571 = bitcast i64* %_raw_array570 to { i64, [0 x i64] }*
  %_573 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array571, i32 0, i32 1, i32 1
  store i64 2, i64* %_573
  %_572 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array571, i32 0, i32 1, i32 0
  store i64 1, i64* %_572
  %_579 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array569, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array575, { i64, [0 x i64] }** %_579
  %_578 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array569, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array571, { i64, [0 x i64] }** %_578
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array569, { i64, [0 x { i64, [0 x i64] }*] }** %_580
  %_581 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_580
  %_584 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_581 to i64*
  %_582 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_581, i32 0, i32 1, i32 0
  %_583 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_582
  %_587 = bitcast { i64, [0 x i64] }* %_583 to i64*
  %_585 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_583, i32 0, i32 1, i32 1
  %_586 = load i64, i64* %_585
  ret i64 %_586
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
