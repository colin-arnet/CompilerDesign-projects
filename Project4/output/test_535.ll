; generated from: oatprograms/lib6.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2291 = alloca { i64, [0 x i64] }*
  %_2294 = alloca i8*
  %_2297 = alloca { i64, [0 x i64] }*
  %_2298 = alloca i64
  %_2299 = alloca i64
  %_argv2283 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2283
  %_argc2282 = alloca i64
  store i64 %argc, i64* %_argc2282
  %_raw_array2284 = call i64* @oat_alloc_array(i64 5)
  %_array2285 = bitcast i64* %_raw_array2284 to { i64, [0 x i64] }*
  %_2290 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2285, i32 0, i32 1, i32 4
  store i64 115, i64* %_2290
  %_2289 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2285, i32 0, i32 1, i32 3
  store i64 114, i64* %_2289
  %_2288 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2285, i32 0, i32 1, i32 2
  store i64 113, i64* %_2288
  %_2287 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2285, i32 0, i32 1, i32 1
  store i64 112, i64* %_2287
  %_2286 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2285, i32 0, i32 1, i32 0
  store i64 111, i64* %_2286
  store { i64, [0 x i64] }* %_array2285, { i64, [0 x i64] }** %_2291
  %_2292 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2291
  %_2293 = call i8* @string_of_array({ i64, [0 x i64] }* %_2292)
  store i8* %_2293, i8** %_2294
  %_2295 = load i8*, i8** %_2294
  %_2296 = call { i64, [0 x i64] }* @array_of_string(i8* %_2295)
  store { i64, [0 x i64] }* %_2296, { i64, [0 x i64] }** %_2297
  store i64 0, i64* %_2298
  store i64 0, i64* %_2299
  br label %_cnd2302
_cnd2302:
  %_2300 = load i64, i64* %_2299
  %_2301 = icmp slt i64 %_2300, 5
  br i1 %_2301, label %_loop2304, label %_end2303
_loop2304:
  %_2305 = load i64, i64* %_2298
  %_2306 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2297
  %_2307 = load i64, i64* %_2299
  %_2310 = bitcast { i64, [0 x i64] }* %_2306 to i64*
  %_2308 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2306, i32 0, i32 1, i64 %_2307
  %_2309 = load i64, i64* %_2308
  %_2311 = add i64 %_2305, %_2309
  store i64 %_2311, i64* %_2298
  %_2312 = load i64, i64* %_2299
  %_2313 = add i64 %_2312, 1
  store i64 %_2313, i64* %_2299
  br label %_cnd2302
_end2303:
  %_2314 = load i64, i64* %_2298
  call void @print_int(i64 %_2314)
  %_2316 = load i64, i64* %_2298
  ret i64 %_2316
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
