; generated from: oatprograms/lib9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2359 = alloca i64
  %_argv2358 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2358
  %_argc2357 = alloca i64
  store i64 %argc, i64* %_argc2357
  store i64 1, i64* %_2359
  br label %_cnd2363
_cnd2363:
  %_2360 = load i64, i64* %_2359
  %_2361 = load i64, i64* %_argc2357
  %_2362 = icmp slt i64 %_2360, %_2361
  br i1 %_2362, label %_loop2365, label %_end2364
_loop2365:
  %_2366 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_argv2358
  %_2367 = load i64, i64* %_2359
  %_2370 = bitcast { i64, [0 x i8*] }* %_2366 to i64*
  %_2368 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_2366, i32 0, i32 1, i64 %_2367
  %_2369 = load i8*, i8** %_2368
  call void @print_string(i8* %_2369)
  %_2372 = load i64, i64* %_2359
  %_2373 = add i64 %_2372, 1
  store i64 %_2373, i64* %_2359
  br label %_cnd2363
_end2364:
  %_2374 = load i64, i64* %_argc2357
  ret i64 %_2374
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
