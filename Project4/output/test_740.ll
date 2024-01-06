; generated from: oatprograms/fac.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %i) {
  %_2225 = alloca i64
  %_i2224 = alloca i64
  store i64 %i, i64* %_i2224
  store i64 0, i64* %_2225
  %_2226 = load i64, i64* %_i2224
  %_2227 = icmp eq i64 %_2226, 0
  br i1 %_2227, label %_if2228, label %_else2229
_if2228:
  store i64 1, i64* %_2225
  br label %_end2230
_else2229:
  %_2231 = load i64, i64* %_i2224
  %_2232 = load i64, i64* %_i2224
  %_2233 = sub i64 %_2232, 1
  %_2234 = call i64 @f(i64 %_2233)
  %_2235 = mul i64 %_2231, %_2234
  store i64 %_2235, i64* %_2225
  br label %_end2230
_end2230:
  %_2236 = load i64, i64* %_2225
  ret i64 %_2236
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argv2222 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2222
  %_argc2221 = alloca i64
  store i64 %argc, i64* %_argc2221
  %_2223 = call i64 @f(i64 5)
  ret i64 %_2223
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
