; generated from: oatprograms/lib7.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2326 = alloca { i64, [0 x i64] }*
  %_2329 = alloca i8*
  %_2332 = alloca { i64, [0 x i64] }*
  %_2333 = alloca i64
  %_2334 = alloca i64
  %_argv2318 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2318
  %_argc2317 = alloca i64
  store i64 %argc, i64* %_argc2317
  %_raw_array2319 = call i64* @oat_alloc_array(i64 5)
  %_array2320 = bitcast i64* %_raw_array2319 to { i64, [0 x i64] }*
  %_2325 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2320, i32 0, i32 1, i32 4
  store i64 115, i64* %_2325
  %_2324 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2320, i32 0, i32 1, i32 3
  store i64 114, i64* %_2324
  %_2323 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2320, i32 0, i32 1, i32 2
  store i64 113, i64* %_2323
  %_2322 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2320, i32 0, i32 1, i32 1
  store i64 112, i64* %_2322
  %_2321 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2320, i32 0, i32 1, i32 0
  store i64 111, i64* %_2321
  store { i64, [0 x i64] }* %_array2320, { i64, [0 x i64] }** %_2326
  %_2327 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2326
  %_2328 = call i8* @string_of_array({ i64, [0 x i64] }* %_2327)
  store i8* %_2328, i8** %_2329
  %_2330 = load i8*, i8** %_2329
  %_2331 = call { i64, [0 x i64] }* @array_of_string(i8* %_2330)
  store { i64, [0 x i64] }* %_2331, { i64, [0 x i64] }** %_2332
  store i64 0, i64* %_2333
  store i64 0, i64* %_2334
  br label %_cnd2337
_cnd2337:
  %_2335 = load i64, i64* %_2334
  %_2336 = icmp slt i64 %_2335, 5
  br i1 %_2336, label %_loop2339, label %_end2338
_loop2339:
  %_2340 = load i64, i64* %_2333
  %_2341 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2332
  %_2342 = load i64, i64* %_2334
  %_2345 = bitcast { i64, [0 x i64] }* %_2341 to i64*
  %_2343 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2341, i32 0, i32 1, i64 %_2342
  %_2344 = load i64, i64* %_2343
  %_2346 = add i64 %_2340, %_2344
  store i64 %_2346, i64* %_2333
  %_2347 = load i64, i64* %_2334
  %_2348 = add i64 %_2347, 1
  store i64 %_2348, i64* %_2334
  br label %_cnd2337
_end2338:
  %_2349 = load i64, i64* %_2333
  ret i64 %_2349
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
