; generated from: oatprograms/binary_gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @binary_gcd(i64 %x, i64 %y) {
  %_y2126 = alloca i64
  store i64 %y, i64* %_y2126
  %_x2125 = alloca i64
  store i64 %x, i64* %_x2125
  %_2127 = load i64, i64* %_x2125
  %_2128 = load i64, i64* %_y2126
  %_2129 = icmp eq i64 %_2127, %_2128
  br i1 %_2129, label %_if2130, label %_else2131
_if2130:
  %_2133 = load i64, i64* %_x2125
  ret i64 %_2133
_else2131:
  %_2134 = load i64, i64* %_x2125
  %_2135 = icmp eq i64 %_2134, 0
  br i1 %_2135, label %_if2136, label %_else2137
_if2136:
  %_2139 = load i64, i64* %_y2126
  ret i64 %_2139
_else2137:
  %_2140 = load i64, i64* %_y2126
  %_2141 = icmp eq i64 %_2140, 0
  br i1 %_2141, label %_if2142, label %_else2143
_if2142:
  %_2145 = load i64, i64* %_x2125
  ret i64 %_2145
_else2143:
  %_2146 = load i64, i64* %_x2125
  %_2147 = xor i64 %_2146, -1
  %_2148 = and i64 %_2147, 1
  %_2149 = icmp eq i64 %_2148, 1
  br i1 %_2149, label %_if2150, label %_else2151
_if2150:
  %_2153 = load i64, i64* %_y2126
  %_2154 = and i64 %_2153, 1
  %_2155 = icmp eq i64 %_2154, 1
  br i1 %_2155, label %_if2156, label %_else2157
_if2156:
  %_2161 = load i64, i64* %_y2126
  %_2159 = load i64, i64* %_x2125
  %_2160 = lshr i64 %_2159, 1
  %_2162 = call i64 @binary_gcd(i64 %_2160, i64 %_2161)
  ret i64 %_2162
_else2157:
  %_2165 = load i64, i64* %_y2126
  %_2166 = lshr i64 %_2165, 1
  %_2163 = load i64, i64* %_x2125
  %_2164 = lshr i64 %_2163, 1
  %_2167 = call i64 @binary_gcd(i64 %_2164, i64 %_2166)
  %_2168 = shl i64 %_2167, 1
  ret i64 %_2168
_end2158:
  br label %_else2151
_else2151:
  %_2169 = load i64, i64* %_y2126
  %_2170 = xor i64 %_2169, -1
  %_2171 = and i64 %_2170, 1
  %_2172 = icmp eq i64 %_2171, 1
  br i1 %_2172, label %_if2173, label %_else2174
_if2173:
  %_2177 = load i64, i64* %_y2126
  %_2178 = lshr i64 %_2177, 1
  %_2176 = load i64, i64* %_x2125
  %_2179 = call i64 @binary_gcd(i64 %_2176, i64 %_2178)
  ret i64 %_2179
_else2174:
  %_2180 = load i64, i64* %_x2125
  %_2181 = load i64, i64* %_y2126
  %_2182 = icmp sgt i64 %_2180, %_2181
  br i1 %_2182, label %_if2183, label %_else2184
_if2183:
  %_2190 = load i64, i64* %_y2126
  %_2186 = load i64, i64* %_x2125
  %_2187 = load i64, i64* %_y2126
  %_2188 = sub i64 %_2186, %_2187
  %_2189 = lshr i64 %_2188, 1
  %_2191 = call i64 @binary_gcd(i64 %_2189, i64 %_2190)
  ret i64 %_2191
_else2184:
  %_2196 = load i64, i64* %_x2125
  %_2192 = load i64, i64* %_y2126
  %_2193 = load i64, i64* %_x2125
  %_2194 = sub i64 %_2192, %_2193
  %_2195 = lshr i64 %_2194, 1
  %_2197 = call i64 @binary_gcd(i64 %_2195, i64 %_2196)
  ret i64 %_2197
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2120 = alloca i64
  %_2121 = alloca i64
  %_argv2119 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2119
  %_argc2118 = alloca i64
  store i64 %argc, i64* %_argc2118
  store i64 21, i64* %_2120
  store i64 15, i64* %_2121
  %_2123 = load i64, i64* %_2121
  %_2122 = load i64, i64* %_2120
  %_2124 = call i64 @binary_gcd(i64 %_2122, i64 %_2123)
  ret i64 %_2124
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
