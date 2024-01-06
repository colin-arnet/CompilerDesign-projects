; generated from: oatprograms/run33.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_436 = alloca { i64, [0 x i1] }*
  %_437 = alloca i64
  %_argv431 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv431
  %_argc430 = alloca i64
  store i64 %argc, i64* %_argc430
  %_raw_array432 = call i64* @oat_alloc_array(i64 2)
  %_array433 = bitcast i64* %_raw_array432 to { i64, [0 x i1] }*
  %_435 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array433, i32 0, i32 1, i32 1
  store i1 0, i1* %_435
  %_434 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array433, i32 0, i32 1, i32 0
  store i1 1, i1* %_434
  store { i64, [0 x i1] }* %_array433, { i64, [0 x i1] }** %_436
  store i64 0, i64* %_437
  %_438 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_436
  %_441 = bitcast { i64, [0 x i1] }* %_438 to i64*
  %_439 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_438, i32 0, i32 1, i32 0
  %_440 = load i1, i1* %_439
  br i1 %_440, label %_if442, label %_else443
_if442:
  store i64 1, i64* %_437
  br label %_else443
_else443:
  %_445 = load i64, i64* %_437
  ret i64 %_445
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
