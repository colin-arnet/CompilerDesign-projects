; generated from: oatprograms/binary_gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @binary_gcd(i64 %x, i64 %y) {
  %_y2124 = alloca i64
  store i64 %y, i64* %_y2124
  %_x2123 = alloca i64
  store i64 %x, i64* %_x2123
  %_2125 = load i64, i64* %_x2123
  %_2126 = load i64, i64* %_y2124
  %_2127 = icmp eq i64 %_x2123, %_y2124
  br i1 %_2127, label %_if2128, label %_else2129
_if2128:
  %_2131 = load i64, i64* %_x2123
  ret i64 %_x2123
_else2129:
  %_2132 = load i64, i64* %_x2123
  %_2133 = icmp eq i64 %_x2123, 0
  br i1 %_2133, label %_if2134, label %_else2135
_if2134:
  %_2137 = load i64, i64* %_y2124
  ret i64 %_y2124
_else2135:
  %_2138 = load i64, i64* %_y2124
  %_2139 = icmp eq i64 %_y2124, 0
  br i1 %_2139, label %_if2140, label %_else2141
_if2140:
  %_2143 = load i64, i64* %_x2123
  ret i64 %_x2123
_else2141:
  %_2144 = load i64, i64* %_x2123
  %_2145 = xor i64 %_x2123, -1
  %_2146 = and i64 %_2145, 1
  %_2147 = icmp eq i64 %_2146, 1
  br i1 %_2147, label %_if2148, label %_else2149
_if2148:
  %_2151 = load i64, i64* %_y2124
  %_2152 = and i64 %_y2124, 1
  %_2153 = icmp eq i64 %_2152, 1
  br i1 %_2153, label %_if2154, label %_else2155
_if2154:
  %_2159 = load i64, i64* %_y2124
  %_2157 = load i64, i64* %_x2123
  %_2158 = lshr i64 %_x2123, 1
  %_2160 = call i64 @binary_gcd(i64 %_2158, i64 %_y2124)
  ret i64 %_2160
_else2155:
  %_2163 = load i64, i64* %_y2124
  %_2164 = lshr i64 %_y2124, 1
  %_2161 = load i64, i64* %_x2123
  %_2162 = lshr i64 %_x2123, 1
  %_2165 = call i64 @binary_gcd(i64 %_2162, i64 %_2164)
  %_2166 = shl i64 %_2165, 1
  ret i64 %_2166
_end2156:
  br label %_else2149
_else2149:
  %_2167 = load i64, i64* %_y2124
  %_2168 = xor i64 %_y2124, -1
  %_2169 = and i64 %_2168, 1
  %_2170 = icmp eq i64 %_2169, 1
  br i1 %_2170, label %_if2171, label %_else2172
_if2171:
  %_2175 = load i64, i64* %_y2124
  %_2176 = lshr i64 %_y2124, 1
  %_2174 = load i64, i64* %_x2123
  %_2177 = call i64 @binary_gcd(i64 %_x2123, i64 %_2176)
  ret i64 %_2177
_else2172:
  %_2178 = load i64, i64* %_x2123
  %_2179 = load i64, i64* %_y2124
  %_2180 = icmp sgt i64 %_x2123, %_y2124
  br i1 %_2180, label %_if2181, label %_else2182
_if2181:
  %_2188 = load i64, i64* %_y2124
  %_2184 = load i64, i64* %_x2123
  %_2185 = load i64, i64* %_y2124
  %_2186 = sub i64 %_x2123, %_y2124
  %_2187 = lshr i64 %_2186, 1
  %_2189 = call i64 @binary_gcd(i64 %_2187, i64 %_y2124)
  ret i64 %_2189
_else2182:
  %_2194 = load i64, i64* %_x2123
  %_2190 = load i64, i64* %_y2124
  %_2191 = load i64, i64* %_x2123
  %_2192 = sub i64 %_y2124, %_x2123
  %_2193 = lshr i64 %_2192, 1
  %_2195 = call i64 @binary_gcd(i64 %_2193, i64 %_x2123)
  ret i64 %_2195
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2118 = alloca i64
  %_2119 = alloca i64
  %_argv2117 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2117
  %_argc2116 = alloca i64
  store i64 %argc, i64* %_argc2116
  store i64 21, i64* %_2118
  store i64 15, i64* %_2119
  %_2121 = load i64, i64* %_2119
  %_2120 = load i64, i64* %_2118
  %_2122 = call i64 @binary_gcd(i64 %_2118, i64 %_2119)
  ret i64 %_2122
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
