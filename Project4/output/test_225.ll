; generated from: oatprograms/run38.oat
target triple = "x86_64-unknown-linux"
define i64 @f1() {
  %_293 = call i64 @f2()
  ret i64 %_293
}

define i64 @f2() {
  %_292 = call i64 @f3()
  ret i64 %_292
}

define i64 @f3() {
  %_291 = call i64 @f4()
  ret i64 %_291
}

define i64 @f4() {
  %_290 = call i64 @f5()
  ret i64 %_290
}

define i64 @f5() {
  %_289 = call i64 @f6()
  ret i64 %_289
}

define i64 @f6() {
  %_288 = call i64 @f7()
  ret i64 %_288
}

define i64 @f7() {
  %_287 = call i64 @f8()
  ret i64 %_287
}

define i64 @f8() {
  %_286 = call i64 @f9()
  ret i64 %_286
}

define i64 @f9() {
  ret i64 31
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argv284 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv284
  %_argc283 = alloca i64
  store i64 %argc, i64* %_argc283
  %_285 = call i64 @f1()
  ret i64 %_285
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
