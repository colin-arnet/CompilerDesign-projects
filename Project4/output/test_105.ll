; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_280 = alloca i64
  %_284 = alloca i64
  %_argv279 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv279
  %_argc278 = alloca i64
  store i64 %argc, i64* %_argc278
  store i64 9, i64* %_280
  %_281 = load i64, i64* %_280
  %_282 = load i64, i64* %_280
  %_283 = add i64 %_280, %_280
  store i64 %_283, i64* %_284
  %_285 = load i64, i64* %_280
  %_286 = load i64, i64* %_280
  %_287 = load i64, i64* %_280
  %_288 = mul i64 %_280, %_280
  %_289 = add i64 %_280, %_288
  %_290 = load i64, i64* %_284
  %_291 = sub i64 %_289, %_284
  %_292 = lshr i64 %_291, 2
  %_293 = shl i64 %_292, 2
  %_294 = ashr i64 %_293, 2
  ret i64 %_294
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
