; generated from: oatprograms/gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @gcd(i64 %a, i64 %b) {
  %_2292 = alloca i64
  %_b2285 = alloca i64
  store i64 %b, i64* %_b2285
  %_a2284 = alloca i64
  store i64 %a, i64* %_a2284
  br label %_cnd2288
_cnd2288:
  %_2286 = load i64, i64* %_b2285
  %_2287 = icmp ne i64 %_2286, 0
  br i1 %_2287, label %_loop2290, label %_end2289
_loop2290:
  %_2291 = load i64, i64* %_b2285
  store i64 %_2291, i64* %_2292
  %_2294 = load i64, i64* %_b2285
  %_2293 = load i64, i64* %_a2284
  %_2295 = call i64 @mod(i64 %_2293, i64 %_2294)
  store i64* %_2295, i64** %_b2285
  %_2296 = load i64, i64* %_2292
  store i64* %_2296, i64** %_a2284
  br label %_cnd2288
_end2289:
  %_2297 = load i64, i64* %_a2284
  ret i64 %_2297
}

define i64 @mod(i64 %a, i64 %b) {
  %_2272 = alloca i64
  %_b2270 = alloca i64
  store i64 %b, i64* %_b2270
  %_a2269 = alloca i64
  store i64 %a, i64* %_a2269
  %_2271 = load i64, i64* %_a2269
  store i64 %_2271, i64* %_2272
  br label %_cnd2277
_cnd2277:
  %_2273 = load i64, i64* %_2272
  %_2274 = load i64, i64* %_b2270
  %_2275 = sub i64 %_2273, %_2274
  %_2276 = icmp sge i64 %_2275, 0
  br i1 %_2276, label %_loop2279, label %_end2278
_loop2279:
  %_2280 = load i64, i64* %_2272
  %_2281 = load i64, i64* %_b2270
  %_2282 = sub i64 %_2280, %_2281
  store i64* %_2282, i64** %_2272
  br label %_cnd2277
_end2278:
  %_2283 = load i64, i64* %_2272
  ret i64 %_2283
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2264 = alloca i64
  %_2265 = alloca i64
  %_argv2263 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2263
  %_argc2262 = alloca i64
  store i64 %argc, i64* %_argc2262
  store i64 64, i64* %_2264
  store i64 48, i64* %_2265
  %_2267 = load i64, i64* %_2265
  %_2266 = load i64, i64* %_2264
  %_2268 = call i64 @gcd(i64 %_2266, i64 %_2267)
  ret i64 %_2268
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
