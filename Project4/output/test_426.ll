; generated from: oatprograms/lib4.oat
target triple = "x86_64-unknown-linux"
@str = global [6 x i8] c"hello\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2237 = alloca { i64, [0 x i64] }*
  %_2238 = alloca i64
  %_2239 = alloca i64
  %_argv2234 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2234
  %_argc2233 = alloca i64
  store i64 %argc, i64* %_argc2233
  %_2235 = bitcast [6 x i8]* @str to i8*
  %_2236 = call { i64, [0 x i64] }* @array_of_string(i8* %_2235)
  store { i64, [0 x i64] }* %_2236, { i64, [0 x i64] }** %_2237
  store i64 0, i64* %_2238
  store i64 0, i64* %_2239
  br label %_cnd2242
_cnd2242:
  %_2240 = load i64, i64* %_2239
  %_2241 = icmp slt i64 %_2240, 5
  br i1 %_2241, label %_loop2244, label %_end2243
_loop2244:
  %_2245 = load i64, i64* %_2238
  %_2246 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2237
  %_2247 = load i64, i64* %_2239
  %_2250 = bitcast { i64, [0 x i64] }* %_2246 to i64*
  %_2248 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2246, i32 0, i32 1, i64 %_2247
  %_2249 = load i64, i64* %_2248
  %_2251 = add i64 %_2245, %_2249
  store i64 %_2251, i64* %_2238
  %_2252 = load i64, i64* %_2239
  %_2253 = add i64 %_2252, 1
  store i64 %_2253, i64* %_2239
  br label %_cnd2242
_end2243:
  %_2254 = load i64, i64* %_2238
  call void @print_int(i64 %_2254)
  %_2256 = load i64, i64* %_2238
  ret i64 %_2256
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
