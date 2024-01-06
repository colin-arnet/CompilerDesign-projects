; generated from: oatprograms/lib11.oat
target triple = "x86_64-unknown-linux"
@_2131 = global [11 x i8] c"1234967890\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2134 = alloca { i64, [0 x i64] }*
  %_2135 = alloca i64
  %_2136 = alloca i64
  %_2148 = alloca i64
  %_argv2130 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2130
  %_argc2129 = alloca i64
  store i64 %argc, i64* %_argc2129
  %_2132 = bitcast [11 x i8]* @_2131 to i8*
  %_2133 = call { i64, [0 x i64] }* @array_of_string(i8* %_2132)
  store { i64, [0 x i64] }* %_2133, { i64, [0 x i64] }** %_2134
  store i64 0, i64* %_2135
  store i64 0, i64* %_2136
  br label %_cnd2139
_cnd2139:
  %_2137 = load i64, i64* %_2136
  %_2138 = icmp slt i64 %_2137, 10
  br i1 %_2138, label %_loop2141, label %_end2140
_loop2141:
  %_2142 = load i64, i64* %_2136
  %_2143 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2134
  %_2144 = load i64, i64* %_2136
  %_2145 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2143, i32 0, i32 1, i64 %_2144
  store i64 %_2142, i64* %_2145
  %_2146 = load i64, i64* %_2136
  %_2147 = add i64 %_2146, 1
  store i64 %_2147, i64* %_2136
  br label %_cnd2139
_end2140:
  store i64 0, i64* %_2148
  br label %_cnd2151
_cnd2151:
  %_2149 = load i64, i64* %_2148
  %_2150 = icmp slt i64 %_2149, 10
  br i1 %_2150, label %_loop2153, label %_end2152
_loop2153:
  %_2154 = load i64, i64* %_2135
  %_2155 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2134
  %_2156 = load i64, i64* %_2148
  %_2159 = bitcast { i64, [0 x i64] }* %_2155 to i64*
  %_2157 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2155, i32 0, i32 1, i64 %_2156
  %_2158 = load i64, i64* %_2157
  %_2160 = add i64 %_2154, %_2158
  store i64 %_2160, i64* %_2135
  %_2161 = load i64, i64* %_2148
  %_2162 = add i64 %_2161, 1
  store i64 %_2162, i64* %_2148
  br label %_cnd2151
_end2152:
  %_2163 = load i64, i64* %_2135
  ret i64 %_2163
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
