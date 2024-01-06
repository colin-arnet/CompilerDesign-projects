; generated from: oatprograms/lib15.oat
target triple = "x86_64-unknown-linux"
define i8* @sub(i8* %str, i64 %start, i64 %len) {
  %_2195 = alloca { i64, [0 x i64] }*
  %_2199 = alloca { i64, [0 x i64] }*
  %_2200 = alloca i64
  %_len2192 = alloca i64
  store i64 %len, i64* %_len2192
  %_start2191 = alloca i64
  store i64 %start, i64* %_start2191
  %_str2190 = alloca i8*
  store i8* %str, i8** %_str2190
  %_2193 = load i8*, i8** %_str2190
  %_2194 = call { i64, [0 x i64] }* @array_of_string(i8* %_2193)
  store { i64, [0 x i64] }* %_2194, { i64, [0 x i64] }** %_2195
  %_2196 = load i64, i64* %_len2192
  %_raw_array2197 = call i64* @oat_alloc_array(i64 %_2196)
  %_array2198 = bitcast i64* %_raw_array2197 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2198, { i64, [0 x i64] }** %_2199
  store i64 0, i64* %_2200
  br label %_cnd2204
_cnd2204:
  %_2201 = load i64, i64* %_2200
  %_2202 = load i64, i64* %_len2192
  %_2203 = icmp slt i64 %_2201, %_2202
  br i1 %_2203, label %_loop2206, label %_end2205
_loop2206:
  %_2207 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2195
  %_2208 = load i64, i64* %_2200
  %_2209 = load i64, i64* %_start2191
  %_2210 = add i64 %_2208, %_2209
  %_2213 = bitcast { i64, [0 x i64] }* %_2207 to i64*
  %_2211 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2207, i32 0, i32 1, i64 %_2210
  %_2212 = load i64, i64* %_2211
  %_2214 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2199
  %_2215 = load i64, i64* %_2200
  %_2216 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2214, i32 0, i32 1, i64 %_2215
  store i64 %_2212, i64* %_2216
  %_2217 = load i64, i64* %_2200
  %_2218 = add i64 %_2217, 1
  store i64 %_2218, i64* %_2200
  br label %_cnd2204
_end2205:
  %_2219 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2199
  %_2220 = call i8* @string_of_array({ i64, [0 x i64] }* %_2219)
  ret i8* %_2220
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argv2183 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2183
  %_argc2182 = alloca i64
  store i64 %argc, i64* %_argc2182
  %_2184 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_argv2183
  %_2187 = bitcast { i64, [0 x i8*] }* %_2184 to i64*
  %_2185 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_2184, i32 0, i32 1, i32 1
  %_2186 = load i8*, i8** %_2185
  %_2188 = call i8* @sub(i8* %_2186, i64 3, i64 5)
  call void @print_string(i8* %_2188)
  ret i64 0
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
