; generated from: oatprograms/lib5.oat
target triple = "x86_64-unknown-linux"
@_2259 = global [6 x i8] c"hello\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2261 = alloca i8*
  %_2264 = alloca { i64, [0 x i64] }*
  %_2265 = alloca i64
  %_2266 = alloca i64
  %_argv2258 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2258
  %_argc2257 = alloca i64
  store i64 %argc, i64* %_argc2257
  %_2260 = bitcast [6 x i8]* @_2259 to i8*
  store i8* %_2260, i8** %_2261
  %_2262 = load i8*, i8** %_2261
  %_2263 = call { i64, [0 x i64] }* @array_of_string(i8* %_2262)
  store { i64, [0 x i64] }* %_2263, { i64, [0 x i64] }** %_2264
  store i64 0, i64* %_2265
  store i64 0, i64* %_2266
  br label %_cnd2269
_cnd2269:
  %_2267 = load i64, i64* %_2266
  %_2268 = icmp slt i64 %_2267, 5
  br i1 %_2268, label %_loop2271, label %_end2270
_loop2271:
  %_2272 = load i64, i64* %_2265
  %_2273 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2264
  %_2274 = load i64, i64* %_2266
  %_2277 = bitcast { i64, [0 x i64] }* %_2273 to i64*
  %_2275 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2273, i32 0, i32 1, i64 %_2274
  %_2276 = load i64, i64* %_2275
  %_2278 = add i64 %_2272, %_2276
  store i64 %_2278, i64* %_2265
  %_2279 = load i64, i64* %_2266
  %_2280 = add i64 %_2279, 1
  store i64 %_2280, i64* %_2266
  br label %_cnd2269
_end2270:
  %_2281 = load i64, i64* %_2265
  ret i64 %_2281
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
