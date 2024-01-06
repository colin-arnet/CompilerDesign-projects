; generated from: oatprograms/run47.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1

define i64 @f() {
  %_2193 = load i64, i64* @a
  %_2194 = add i64 %_2193, 1
  store i64 %_2194, i64* @a
  %_2195 = load i64, i64* @a
  ret i64 %_2195
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2177 = alloca { i64, [0 x i64] }*
  %_argv2173 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2173
  %_argc2172 = alloca i64
  store i64 %argc, i64* %_argc2172
  %_2174 = call i64 @f()
  %_raw_array2175 = call i64* @oat_alloc_array(i64 %_2174)
  %_array2176 = bitcast i64* %_raw_array2175 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2176, { i64, [0 x i64] }** %_2177
  %_2178 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2177
  %_2179 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2178, i32 0, i32 1, i32 0
  store i64 0, i64* %_2179
  %_2180 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2177
  %_2181 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2180, i32 0, i32 1, i32 1
  store i64 1, i64* %_2181
  %_2182 = load i64, i64* @a
  %_2183 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2177
  %_2186 = bitcast { i64, [0 x i64] }* %_2183 to i64*
  %_2184 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2183, i32 0, i32 1, i32 0
  %_2185 = load i64, i64* %_2184
  %_2187 = add i64 %_2182, %_2185
  %_2188 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2177
  %_2191 = bitcast { i64, [0 x i64] }* %_2188 to i64*
  %_2189 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2188, i32 0, i32 1, i32 1
  %_2190 = load i64, i64* %_2189
  %_2192 = add i64 %_2187, %_2190
  ret i64 %_2192
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
