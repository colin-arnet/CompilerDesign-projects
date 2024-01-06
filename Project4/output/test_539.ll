; generated from: oatprograms/lib11.oat
target triple = "x86_64-unknown-linux"
@_2377 = global [11 x i8] c"1234967890\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2380 = alloca { i64, [0 x i64] }*
  %_2381 = alloca i64
  %_2382 = alloca i64
  %_2394 = alloca i64
  %_argv2376 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2376
  %_argc2375 = alloca i64
  store i64 %argc, i64* %_argc2375
  %_2378 = bitcast [11 x i8]* @_2377 to i8*
  %_2379 = call { i64, [0 x i64] }* @array_of_string(i8* %_2378)
  store { i64, [0 x i64] }* %_2379, { i64, [0 x i64] }** %_2380
  store i64 0, i64* %_2381
  store i64 0, i64* %_2382
  br label %_cnd2385
_cnd2385:
  %_2383 = load i64, i64* %_2382
  %_2384 = icmp slt i64 %_2383, 10
  br i1 %_2384, label %_loop2387, label %_end2386
_loop2387:
  %_2388 = load i64, i64* %_2382
  %_2389 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2380
  %_2390 = load i64, i64* %_2382
  %_2391 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2389, i32 0, i32 1, i64 %_2390
  store i64 %_2388, i64* %_2391
  %_2392 = load i64, i64* %_2382
  %_2393 = add i64 %_2392, 1
  store i64 %_2393, i64* %_2382
  br label %_cnd2385
_end2386:
  store i64 0, i64* %_2394
  br label %_cnd2397
_cnd2397:
  %_2395 = load i64, i64* %_2394
  %_2396 = icmp slt i64 %_2395, 10
  br i1 %_2396, label %_loop2399, label %_end2398
_loop2399:
  %_2400 = load i64, i64* %_2381
  %_2401 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2380
  %_2402 = load i64, i64* %_2394
  %_2405 = bitcast { i64, [0 x i64] }* %_2401 to i64*
  %_2403 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2401, i32 0, i32 1, i64 %_2402
  %_2404 = load i64, i64* %_2403
  %_2406 = add i64 %_2400, %_2404
  store i64 %_2406, i64* %_2381
  %_2407 = load i64, i64* %_2394
  %_2408 = add i64 %_2407, 1
  store i64 %_2408, i64* %_2394
  br label %_cnd2397
_end2398:
  %_2409 = load i64, i64* %_2381
  ret i64 %_2409
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
