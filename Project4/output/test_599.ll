; generated from: oatprograms/run36.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_548 = alloca { i64, [0 x i64] }*
  %_argv543 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv543
  %_argc542 = alloca i64
  store i64 %argc, i64* %_argc542
  %_raw_array544 = call i64* @oat_alloc_array(i64 2)
  %_array545 = bitcast i64* %_raw_array544 to { i64, [0 x i64] }*
  %_547 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array545, i32 0, i32 1, i32 1
  store i64 0, i64* %_547
  %_546 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array545, i32 0, i32 1, i32 0
  store i64 0, i64* %_546
  store { i64, [0 x i64] }* %_array545, { i64, [0 x i64] }** %_548
  %_549 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_548
  %_552 = bitcast { i64, [0 x i64] }* %_549 to i64*
  %_550 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_549, i32 0, i32 1, i32 1
  %_551 = load i64, i64* %_550
  ret i64 %_551
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
