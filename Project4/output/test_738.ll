; generated from: oatprograms/lib14.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2178 = alloca { i64, [0 x i64] }*
  %_argv2165 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2165
  %_argc2164 = alloca i64
  store i64 %argc, i64* %_argc2164
  %_raw_array2166 = call i64* @oat_alloc_array(i64 10)
  %_array2167 = bitcast i64* %_raw_array2166 to { i64, [0 x i64] }*
  %_2177 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2167, i32 0, i32 1, i32 9
  store i64 117, i64* %_2177
  %_2176 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2167, i32 0, i32 1, i32 8
  store i64 118, i64* %_2176
  %_2175 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2167, i32 0, i32 1, i32 7
  store i64 119, i64* %_2175
  %_2174 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2167, i32 0, i32 1, i32 6
  store i64 120, i64* %_2174
  %_2173 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2167, i32 0, i32 1, i32 5
  store i64 121, i64* %_2173
  %_2172 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2167, i32 0, i32 1, i32 4
  store i64 122, i64* %_2172
  %_2171 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2167, i32 0, i32 1, i32 3
  store i64 123, i64* %_2171
  %_2170 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2167, i32 0, i32 1, i32 2
  store i64 124, i64* %_2170
  %_2169 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2167, i32 0, i32 1, i32 1
  store i64 125, i64* %_2169
  %_2168 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2167, i32 0, i32 1, i32 0
  store i64 126, i64* %_2168
  store { i64, [0 x i64] }* %_array2167, { i64, [0 x i64] }** %_2178
  %_2179 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2178
  %_2180 = call i8* @string_of_array({ i64, [0 x i64] }* %_2179)
  call void @print_string(i8* %_2180)
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
