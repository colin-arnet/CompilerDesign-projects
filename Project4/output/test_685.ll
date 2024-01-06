; generated from: oatprograms/arrayargs2.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_b318 = alloca i1
  store i1 %b, i1* %_b318
  %_y317 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y317
  %_x316 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x316
  %_319 = load i1, i1* %_b318
  br i1 %_319, label %_if320, label %_else321
_if320:
  %_323 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x316
  ret { i64, [0 x i64] }* %_323
_else321:
  %_324 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y317
  ret { i64, [0 x i64] }* %_324
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_304 = alloca { i64, [0 x i64] }*
  %_307 = alloca { i64, [0 x i64] }*
  %_argv301 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv301
  %_argc300 = alloca i64
  store i64 %argc, i64* %_argc300
  %_raw_array302 = call i64* @oat_alloc_array(i64 3)
  %_array303 = bitcast i64* %_raw_array302 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array303, { i64, [0 x i64] }** %_304
  %_raw_array305 = call i64* @oat_alloc_array(i64 3)
  %_array306 = bitcast i64* %_raw_array305 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array306, { i64, [0 x i64] }** %_307
  %_309 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_307
  %_308 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_304
  %_310 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_308, { i64, [0 x i64] }* %_309, i1 1)
  %_311 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_310, i32 0, i32 1, i32 0
  store i64 17, i64* %_311
  %_312 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_304
  %_315 = bitcast { i64, [0 x i64] }* %_312 to i64*
  %_313 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_312, i32 0, i32 1, i32 0
  %_314 = load i64, i64* %_313
  ret i64 %_314
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
