; generated from: oatprograms/arrayargs1.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [3 x i64] }* @_garr290
@_garr290 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@y = global { i64, [3 x i64] }* @_garr289
@_garr289 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_b293 = alloca i1
  store i1 %b, i1* %_b293
  %_y292 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y292
  %_x291 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x291
  %_294 = load i1, i1* %_b293
  br i1 %_294, label %_if295, label %_else296
_if295:
  %_298 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x291
  ret { i64, [0 x i64] }* %_298
_else296:
  %_299 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y292
  ret { i64, [0 x i64] }* %_299
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argv278 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv278
  %_argc277 = alloca i64
  store i64 %argc, i64* %_argc277
  %_281 = load { i64, [3 x i64] }*, { i64, [3 x i64] }** @y
  %_282 = bitcast { i64, [3 x i64] }* %_281 to { i64, [0 x i64] }*
  %_279 = load { i64, [3 x i64] }*, { i64, [3 x i64] }** @x
  %_280 = bitcast { i64, [3 x i64] }* %_279 to { i64, [0 x i64] }*
  %_283 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_280, { i64, [0 x i64] }* %_282, i1 1)
  %_284 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_283, i32 0, i32 1, i32 0
  store i64 17, i64* %_284
  %_285 = load { i64, [3 x i64] }*, { i64, [3 x i64] }** @x
  %_288 = bitcast { i64, [3 x i64] }* %_285 to i64*
  %_286 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_285, i32 0, i32 1, i32 0
  %_287 = load i64, i64* %_286
  ret i64 %_287
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
