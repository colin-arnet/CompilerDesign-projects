; generated from: oatprograms/lib14.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1641 = alloca { i64, [0 x i64] }*
  %_argv1628 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1628
  %_argc1627 = alloca i64
  store i64 %argc, i64* %_argc1627
  %_raw_array1629 = call i64* @oat_alloc_array(i64 10)
  %_array1630 = bitcast i64* %_raw_array1629 to { i64, [0 x i64] }*
  %_1640 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1630, i32 0, i32 1, i32 9
  store i64 117, i64* %_1640
  %_1639 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1630, i32 0, i32 1, i32 8
  store i64 118, i64* %_1639
  %_1638 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1630, i32 0, i32 1, i32 7
  store i64 119, i64* %_1638
  %_1637 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1630, i32 0, i32 1, i32 6
  store i64 120, i64* %_1637
  %_1636 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1630, i32 0, i32 1, i32 5
  store i64 121, i64* %_1636
  %_1635 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1630, i32 0, i32 1, i32 4
  store i64 122, i64* %_1635
  %_1634 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1630, i32 0, i32 1, i32 3
  store i64 123, i64* %_1634
  %_1633 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1630, i32 0, i32 1, i32 2
  store i64 124, i64* %_1633
  %_1632 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1630, i32 0, i32 1, i32 1
  store i64 125, i64* %_1632
  %_1631 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1630, i32 0, i32 1, i32 0
  store i64 126, i64* %_1631
  store { i64, [0 x i64] }* %_array1630, { i64, [0 x i64] }** %_1641
  %_1642 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1641
  %_1643 = call i8* @string_of_array({ i64, [0 x i64] }* %_1641)
  call void @print_string(i8* %_1643)
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
