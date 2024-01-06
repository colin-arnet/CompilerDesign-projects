; generated from: oatprograms/josh_joyce_test.oat
target triple = "x86_64-unknown-linux"
@arr1 = global { i64, [4 x i64] }* @_garr4419
@_garr4419 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 4 ] }
@arr2 = global { i64, [4 x i64] }* @_garr4418
@_garr4418 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 5 ] }

define i64 @arrcheck({ i64, [0 x i64] }* %ar1, { i64, [0 x i64] }* %ar2, i64 %len) {
  %_4393 = alloca i64
  %_4394 = alloca i64
  %_len4392 = alloca i64
  store i64 %len, i64* %_len4392
  %_ar24391 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %ar2, { i64, [0 x i64] }** %_ar24391
  %_ar14390 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %ar1, { i64, [0 x i64] }** %_ar14390
  store i64 0, i64* %_4393
  store i64 0, i64* %_4394
  br label %_cnd4398
_cnd4398:
  %_4395 = load i64, i64* %_4394
  %_4396 = load i64, i64* %_len4392
  %_4397 = icmp slt i64 %_4395, %_4396
  br i1 %_4397, label %_loop4400, label %_end4399
_loop4400:
  %_4401 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar14390
  %_4402 = load i64, i64* %_4394
  %_4405 = bitcast { i64, [0 x i64] }* %_4401 to i64*
  %_4403 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4401, i32 0, i32 1, i64 %_4402
  %_4404 = load i64, i64* %_4403
  %_4406 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar24391
  %_4407 = load i64, i64* %_4394
  %_4410 = bitcast { i64, [0 x i64] }* %_4406 to i64*
  %_4408 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4406, i32 0, i32 1, i64 %_4407
  %_4409 = load i64, i64* %_4408
  %_4411 = icmp ne i64 %_4404, %_4409
  br i1 %_4411, label %_if4412, label %_else4413
_if4412:
  store i64 1, i64* %_4393
  br label %_else4413
_else4413:
  %_4415 = load i64, i64* %_4394
  %_4416 = add i64 %_4415, 1
  store i64 %_4416, i64* %_4394
  br label %_cnd4398
_end4399:
  %_4417 = load i64, i64* %_4393
  ret i64 %_4417
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_4379 = alloca i64
  %_argv4378 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4378
  %_argc4377 = alloca i64
  store i64 %argc, i64* %_argc4377
  store i64 1, i64* %_4379
  %_4382 = load { i64, [4 x i64] }*, { i64, [4 x i64] }** @arr2
  %_4383 = bitcast { i64, [4 x i64] }* %_4382 to { i64, [0 x i64] }*
  %_4380 = load { i64, [4 x i64] }*, { i64, [4 x i64] }** @arr1
  %_4381 = bitcast { i64, [4 x i64] }* %_4380 to { i64, [0 x i64] }*
  %_4384 = call i64 @arrcheck({ i64, [0 x i64] }* %_4381, { i64, [0 x i64] }* %_4383, i64 4)
  %_4385 = icmp eq i64 %_4384, 1
  br i1 %_4385, label %_if4386, label %_else4387
_if4386:
  store i64 0, i64* %_4379
  br label %_else4387
_else4387:
  %_4389 = load i64, i64* %_4379
  ret i64 %_4389
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
