; generated from: oatprograms/arrayargs3.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [3 x i64] }* @_garr353
@_garr353 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@y = global { i64, [3 x i64] }* @_garr352
@_garr352 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_b356 = alloca i1
  store i1 %b, i1* %_b356
  %_y355 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y355
  %_x354 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x354
  %_357 = load i1, i1* %_b356
  br i1 %_357, label %_if358, label %_else359
_if358:
  %_361 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x354
  ret { i64, [0 x i64] }* %_361
_else359:
  %_362 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y355
  ret { i64, [0 x i64] }* %_362
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_350 = alloca i64
  %_argv326 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv326
  %_argc325 = alloca i64
  store i64 %argc, i64* %_argc325
  %_329 = load { i64, [3 x i64] }*, { i64, [3 x i64] }** @y
  %_330 = bitcast { i64, [3 x i64] }* %_329 to { i64, [0 x i64] }*
  %_327 = load { i64, [3 x i64] }*, { i64, [3 x i64] }** @x
  %_328 = bitcast { i64, [3 x i64] }* %_327 to { i64, [0 x i64] }*
  %_331 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_328, { i64, [0 x i64] }* %_330, i1 1)
  %_332 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_331, i32 0, i32 1, i32 0
  store i64 17, i64* %_332
  %_335 = load { i64, [3 x i64] }*, { i64, [3 x i64] }** @y
  %_336 = bitcast { i64, [3 x i64] }* %_335 to { i64, [0 x i64] }*
  %_333 = load { i64, [3 x i64] }*, { i64, [3 x i64] }** @x
  %_334 = bitcast { i64, [3 x i64] }* %_333 to { i64, [0 x i64] }*
  %_337 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_334, { i64, [0 x i64] }* %_336, i1 1)
  %_340 = bitcast { i64, [0 x i64] }* %_337 to i64*
  %_338 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_337, i32 0, i32 1, i32 0
  %_339 = load i64, i64* %_338
  %_343 = load { i64, [3 x i64] }*, { i64, [3 x i64] }** @x
  %_344 = bitcast { i64, [3 x i64] }* %_343 to { i64, [0 x i64] }*
  %_341 = load { i64, [3 x i64] }*, { i64, [3 x i64] }** @y
  %_342 = bitcast { i64, [3 x i64] }* %_341 to { i64, [0 x i64] }*
  %_345 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_342, { i64, [0 x i64] }* %_344, i1 0)
  %_348 = bitcast { i64, [0 x i64] }* %_345 to i64*
  %_346 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_345, i32 0, i32 1, i32 0
  %_347 = load i64, i64* %_346
  %_349 = add i64 %_339, %_347
  store i64 %_349, i64* %_350
  %_351 = load i64, i64* %_350
  ret i64 %_351
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
