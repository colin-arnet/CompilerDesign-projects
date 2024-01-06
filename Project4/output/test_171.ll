; generated from: oatprograms/gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @gcd(i64 %a, i64 %b) {
  %_2294 = alloca i64
  %_b2287 = alloca i64
  store i64 %b, i64* %_b2287
  %_a2286 = alloca i64
  store i64 %a, i64* %_a2286
  br label %_cnd2290
_cnd2290:
  %_2288 = load i64, i64* %_b2287
  %_2289 = icmp ne i64 %_2288, 0
  br i1 %_2289, label %_loop2292, label %_end2291
_loop2292:
  %_2293 = load i64, i64* %_b2287
  store i64 %_2293, i64* %_2294
  %_2296 = load i64, i64* %_b2287
  %_2295 = load i64, i64* %_a2286
  %_2297 = call i64 @mod(i64 %_2295, i64 %_2296)
  store i64 %_2297, i64* %_b2287
  %_2298 = load i64, i64* %_2294
  store i64 %_2298, i64* %_a2286
  br label %_cnd2290
_end2291:
  %_2299 = load i64, i64* %_a2286
  ret i64 %_2299
}

define i64 @mod(i64 %a, i64 %b) {
  %_2274 = alloca i64
  %_b2272 = alloca i64
  store i64 %b, i64* %_b2272
  %_a2271 = alloca i64
  store i64 %a, i64* %_a2271
  %_2273 = load i64, i64* %_a2271
  store i64 %_2273, i64* %_2274
  br label %_cnd2279
_cnd2279:
  %_2275 = load i64, i64* %_2274
  %_2276 = load i64, i64* %_b2272
  %_2277 = sub i64 %_2275, %_2276
  %_2278 = icmp sge i64 %_2277, 0
  br i1 %_2278, label %_loop2281, label %_end2280
_loop2281:
  %_2282 = load i64, i64* %_2274
  %_2283 = load i64, i64* %_b2272
  %_2284 = sub i64 %_2282, %_2283
  store i64 %_2284, i64* %_2274
  br label %_cnd2279
_end2280:
  %_2285 = load i64, i64* %_2274
  ret i64 %_2285
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2266 = alloca i64
  %_2267 = alloca i64
  %_argv2265 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2265
  %_argc2264 = alloca i64
  store i64 %argc, i64* %_argc2264
  store i64 64, i64* %_2266
  store i64 48, i64* %_2267
  %_2269 = load i64, i64* %_2267
  %_2268 = load i64, i64* %_2266
  %_2270 = call i64 @gcd(i64 %_2268, i64 %_2269)
  ret i64 %_2270
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
