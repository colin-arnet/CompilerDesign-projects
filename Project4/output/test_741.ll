; generated from: oatprograms/qsort.oat
target triple = "x86_64-unknown-linux"
define void @quick_sort({ i64, [0 x i64] }* %a, i64 %l, i64 %r) {
  %_2361 = alloca i64
  %_r2360 = alloca i64
  store i64 %r, i64* %_r2360
  %_l2359 = alloca i64
  store i64 %l, i64* %_l2359
  %_a2358 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a2358
  store i64 0, i64* %_2361
  %_2362 = load i64, i64* %_l2359
  %_2363 = load i64, i64* %_r2360
  %_2364 = icmp slt i64 %_2362, %_2363
  br i1 %_2364, label %_if2365, label %_else2366
_if2365:
  %_2370 = load i64, i64* %_r2360
  %_2369 = load i64, i64* %_l2359
  %_2368 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2358
  %_2371 = call i64 @partition({ i64, [0 x i64] }* %_2368, i64 %_2369, i64 %_2370)
  store i64 %_2371, i64* %_2361
  %_2374 = load i64, i64* %_2361
  %_2375 = sub i64 %_2374, 1
  %_2373 = load i64, i64* %_l2359
  %_2372 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2358
  call void @quick_sort({ i64, [0 x i64] }* %_2372, i64 %_2373, i64 %_2375)
  %_2380 = load i64, i64* %_r2360
  %_2378 = load i64, i64* %_2361
  %_2379 = add i64 %_2378, 1
  %_2377 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2358
  call void @quick_sort({ i64, [0 x i64] }* %_2377, i64 %_2379, i64 %_2380)
  br label %_else2366
_else2366:
  ret void
}

define i64 @partition({ i64, [0 x i64] }* %a, i64 %l, i64 %r) {
  %_2267 = alloca i64
  %_2269 = alloca i64
  %_2272 = alloca i64
  %_2273 = alloca i64
  %_2274 = alloca i64
  %_r2261 = alloca i64
  store i64 %r, i64* %_r2261
  %_l2260 = alloca i64
  store i64 %l, i64* %_l2260
  %_a2259 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a2259
  %_2262 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2259
  %_2263 = load i64, i64* %_l2260
  %_2266 = bitcast { i64, [0 x i64] }* %_2262 to i64*
  %_2264 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2262, i32 0, i32 1, i64 %_2263
  %_2265 = load i64, i64* %_2264
  store i64 %_2265, i64* %_2267
  %_2268 = load i64, i64* %_l2260
  store i64 %_2268, i64* %_2269
  %_2270 = load i64, i64* %_r2261
  %_2271 = add i64 %_2270, 1
  store i64 %_2271, i64* %_2272
  store i64 0, i64* %_2273
  store i64 0, i64* %_2274
  br label %_cnd2277
_cnd2277:
  %_2275 = load i64, i64* %_2274
  %_2276 = icmp eq i64 %_2275, 0
  br i1 %_2276, label %_loop2279, label %_end2278
_loop2279:
  %_2280 = load i64, i64* %_2269
  %_2281 = add i64 %_2280, 1
  store i64 %_2281, i64* %_2269
  br label %_cnd2293
_cnd2293:
  %_2282 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2259
  %_2283 = load i64, i64* %_2269
  %_2286 = bitcast { i64, [0 x i64] }* %_2282 to i64*
  %_2284 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2282, i32 0, i32 1, i64 %_2283
  %_2285 = load i64, i64* %_2284
  %_2287 = load i64, i64* %_2267
  %_2288 = icmp sle i64 %_2285, %_2287
  %_2289 = load i64, i64* %_2269
  %_2290 = load i64, i64* %_r2261
  %_2291 = icmp sle i64 %_2289, %_2290
  %_2292 = and i1 %_2288, %_2291
  br i1 %_2292, label %_loop2295, label %_end2294
_loop2295:
  %_2296 = load i64, i64* %_2269
  %_2297 = add i64 %_2296, 1
  store i64 %_2297, i64* %_2269
  br label %_cnd2293
_end2294:
  %_2298 = load i64, i64* %_2272
  %_2299 = sub i64 %_2298, 1
  store i64 %_2299, i64* %_2272
  br label %_cnd2307
_cnd2307:
  %_2300 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2259
  %_2301 = load i64, i64* %_2272
  %_2304 = bitcast { i64, [0 x i64] }* %_2300 to i64*
  %_2302 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2300, i32 0, i32 1, i64 %_2301
  %_2303 = load i64, i64* %_2302
  %_2305 = load i64, i64* %_2267
  %_2306 = icmp sgt i64 %_2303, %_2305
  br i1 %_2306, label %_loop2309, label %_end2308
_loop2309:
  %_2310 = load i64, i64* %_2272
  %_2311 = sub i64 %_2310, 1
  store i64 %_2311, i64* %_2272
  br label %_cnd2307
_end2308:
  %_2312 = load i64, i64* %_2269
  %_2313 = load i64, i64* %_2272
  %_2314 = icmp sge i64 %_2312, %_2313
  br i1 %_2314, label %_if2315, label %_else2316
_if2315:
  store i64 1, i64* %_2274
  br label %_else2316
_else2316:
  %_2318 = load i64, i64* %_2274
  %_2319 = icmp eq i64 %_2318, 0
  br i1 %_2319, label %_if2320, label %_else2321
_if2320:
  %_2323 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2259
  %_2324 = load i64, i64* %_2269
  %_2327 = bitcast { i64, [0 x i64] }* %_2323 to i64*
  %_2325 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2323, i32 0, i32 1, i64 %_2324
  %_2326 = load i64, i64* %_2325
  store i64 %_2326, i64* %_2273
  %_2328 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2259
  %_2329 = load i64, i64* %_2272
  %_2332 = bitcast { i64, [0 x i64] }* %_2328 to i64*
  %_2330 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2328, i32 0, i32 1, i64 %_2329
  %_2331 = load i64, i64* %_2330
  %_2333 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2259
  %_2334 = load i64, i64* %_2269
  %_2335 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2333, i32 0, i32 1, i64 %_2334
  store i64 %_2331, i64* %_2335
  %_2336 = load i64, i64* %_2273
  %_2337 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2259
  %_2338 = load i64, i64* %_2272
  %_2339 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2337, i32 0, i32 1, i64 %_2338
  store i64 %_2336, i64* %_2339
  br label %_else2321
_else2321:
  br label %_cnd2277
_end2278:
  %_2340 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2259
  %_2341 = load i64, i64* %_l2260
  %_2344 = bitcast { i64, [0 x i64] }* %_2340 to i64*
  %_2342 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2340, i32 0, i32 1, i64 %_2341
  %_2343 = load i64, i64* %_2342
  store i64 %_2343, i64* %_2273
  %_2345 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2259
  %_2346 = load i64, i64* %_2272
  %_2349 = bitcast { i64, [0 x i64] }* %_2345 to i64*
  %_2347 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2345, i32 0, i32 1, i64 %_2346
  %_2348 = load i64, i64* %_2347
  %_2350 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2259
  %_2351 = load i64, i64* %_l2260
  %_2352 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2350, i32 0, i32 1, i64 %_2351
  store i64 %_2348, i64* %_2352
  %_2353 = load i64, i64* %_2273
  %_2354 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2259
  %_2355 = load i64, i64* %_2272
  %_2356 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2354, i32 0, i32 1, i64 %_2355
  store i64 %_2353, i64* %_2356
  %_2357 = load i64, i64* %_2272
  ret i64 %_2357
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2250 = alloca { i64, [0 x i64] }*
  %_argv2238 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2238
  %_argc2237 = alloca i64
  store i64 %argc, i64* %_argc2237
  %_raw_array2239 = call i64* @oat_alloc_array(i64 9)
  %_array2240 = bitcast i64* %_raw_array2239 to { i64, [0 x i64] }*
  %_2249 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2240, i32 0, i32 1, i32 8
  store i64 109, i64* %_2249
  %_2248 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2240, i32 0, i32 1, i32 7
  store i64 111, i64* %_2248
  %_2247 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2240, i32 0, i32 1, i32 6
  store i64 104, i64* %_2247
  %_2246 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2240, i32 0, i32 1, i32 5
  store i64 115, i64* %_2246
  %_2245 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2240, i32 0, i32 1, i32 4
  store i64 123, i64* %_2245
  %_2244 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2240, i32 0, i32 1, i32 3
  store i64 102, i64* %_2244
  %_2243 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2240, i32 0, i32 1, i32 2
  store i64 121, i64* %_2243
  %_2242 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2240, i32 0, i32 1, i32 1
  store i64 112, i64* %_2242
  %_2241 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2240, i32 0, i32 1, i32 0
  store i64 107, i64* %_2241
  store { i64, [0 x i64] }* %_array2240, { i64, [0 x i64] }** %_2250
  %_2251 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2250
  %_2252 = call i8* @string_of_array({ i64, [0 x i64] }* %_2251)
  call void @print_string(i8* %_2252)
  %_2254 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2250
  call void @quick_sort({ i64, [0 x i64] }* %_2254, i64 0, i64 8)
  %_2256 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2250
  %_2257 = call i8* @string_of_array({ i64, [0 x i64] }* %_2256)
  call void @print_string(i8* %_2257)
  ret i64 255
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
