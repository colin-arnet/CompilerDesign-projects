; generated from: oatprograms/run32.oat
target triple = "x86_64-unknown-linux"
@i = global i64 11

define i64 @f() {
  %_320 = alloca i64
  store i64 12, i64* %_320
  %_321 = load i64, i64* %_320
  ret i64 %_321
}

define i64 @g() {
  %_318 = alloca i64
  store i64 10, i64* %_318
  %_319 = load i64, i64* %_318
  ret i64 %_319
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argv312 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv312
  %_argc311 = alloca i64
  store i64 %argc, i64* %_argc311
  %_313 = call i64 @f()
  %_314 = call i64 @g()
  %_315 = add i64 %_313, %_314
  %_316 = load i64, i64* @i
  %_317 = add i64 %_315, %_316
  ret i64 %_317
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
