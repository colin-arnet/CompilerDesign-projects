; generated from: oatprograms/run48.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1

define i64 @f() {
  %_2219 = load i64, i64* @a
  %_2220 = add i64 %_2219, 1
  store i64 %_2220, i64* @a
  %_2221 = load i64, i64* @a
  ret i64 %_2221
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2201 = alloca { i64, [0 x i64] }*
  %_argv2197 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2197
  %_argc2196 = alloca i64
  store i64 %argc, i64* %_argc2196
  %_2198 = call i64 @f()
  %_raw_array2199 = call i64* @oat_alloc_array(i64 %_2198)
  %_array2200 = bitcast i64* %_raw_array2199 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2200, { i64, [0 x i64] }** %_2201
  %_2202 = call i64 @f()
  %_2203 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2201
  %_2204 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2203, i32 0, i32 1, i32 0
  store i64 %_2202, i64* %_2204
  %_2205 = call i64 @f()
  %_2206 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2201
  %_2207 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2206, i32 0, i32 1, i32 1
  store i64 %_2205, i64* %_2207
  %_2208 = load i64, i64* @a
  %_2209 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2201
  %_2212 = bitcast { i64, [0 x i64] }* %_2209 to i64*
  %_2210 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2209, i32 0, i32 1, i32 0
  %_2211 = load i64, i64* %_2210
  %_2213 = add i64 %_2208, %_2211
  %_2214 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2201
  %_2217 = bitcast { i64, [0 x i64] }* %_2214 to i64*
  %_2215 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2214, i32 0, i32 1, i32 1
  %_2216 = load i64, i64* %_2215
  %_2218 = add i64 %_2213, %_2216
  ret i64 %_2218
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
