; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_388 = alloca i64
  %_392 = alloca i64
  %_argv387 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv387
  %_argc386 = alloca i64
  store i64 %argc, i64* %_argc386
  store i64 9, i64* %_388
  %_389 = load i64, i64* %_388
  %_390 = load i64, i64* %_388
  %_391 = add i64 %_389, %_390
  store i64 %_391, i64* %_392
  %_393 = load i64, i64* %_388
  %_394 = load i64, i64* %_388
  %_395 = load i64, i64* %_388
  %_396 = mul i64 %_394, %_395
  %_397 = add i64 %_393, %_396
  %_398 = load i64, i64* %_392
  %_399 = sub i64 %_397, %_398
  %_400 = lshr i64 %_399, 2
  %_401 = shl i64 %_400, 2
  %_402 = ashr i64 %_401, 2
  ret i64 %_402
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
