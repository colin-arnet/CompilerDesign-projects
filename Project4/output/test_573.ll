; generated from: oatprograms/easyrun10.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_144 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_145 = alloca i64
  %_146 = alloca i64
  %_argv125 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv125
  %_argc124 = alloca i64
  store i64 %argc, i64* %_argc124
  %_raw_array126 = call i64* @oat_alloc_array(i64 4)
  %_array127 = bitcast i64* %_raw_array126 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array137 = call i64* @oat_alloc_array(i64 1)
  %_array138 = bitcast i64* %_raw_array137 to { i64, [0 x i64] }*
  %_139 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array138, i32 0, i32 1, i32 0
  store i64 4, i64* %_139
  %_raw_array134 = call i64* @oat_alloc_array(i64 1)
  %_array135 = bitcast i64* %_raw_array134 to { i64, [0 x i64] }*
  %_136 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array135, i32 0, i32 1, i32 0
  store i64 3, i64* %_136
  %_raw_array131 = call i64* @oat_alloc_array(i64 1)
  %_array132 = bitcast i64* %_raw_array131 to { i64, [0 x i64] }*
  %_133 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array132, i32 0, i32 1, i32 0
  store i64 2, i64* %_133
  %_raw_array128 = call i64* @oat_alloc_array(i64 1)
  %_array129 = bitcast i64* %_raw_array128 to { i64, [0 x i64] }*
  %_130 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array129, i32 0, i32 1, i32 0
  store i64 1, i64* %_130
  %_143 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array127, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array138, { i64, [0 x i64] }** %_143
  %_142 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array127, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array135, { i64, [0 x i64] }** %_142
  %_141 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array127, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array132, { i64, [0 x i64] }** %_141
  %_140 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array127, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array129, { i64, [0 x i64] }** %_140
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array127, { i64, [0 x { i64, [0 x i64] }*] }** %_144
  store i64 0, i64* %_145
  store i64 0, i64* %_146
  br label %_cnd149
_cnd149:
  %_147 = load i64, i64* %_146
  %_148 = icmp slt i64 %_147, 4
  br i1 %_148, label %_loop151, label %_end150
_loop151:
  %_152 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_144
  %_153 = load i64, i64* %_146
  %_156 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_152 to i64*
  %_154 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_152, i32 0, i32 1, i64 %_153
  %_155 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_154
  %_159 = bitcast { i64, [0 x i64] }* %_155 to i64*
  %_157 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_155, i32 0, i32 1, i32 0
  %_158 = load i64, i64* %_157
  %_160 = load i64, i64* %_145
  %_161 = sub i64 %_158, %_160
  store i64 %_161, i64* %_145
  %_162 = load i64, i64* %_146
  %_163 = add i64 %_162, 1
  store i64 %_163, i64* %_146
  br label %_cnd149
_end150:
  %_164 = xor i64 5, -1
  %_165 = and i64 5, %_164
  %_166 = or i64 %_165, 0
  %_167 = icmp ne i64 %_166, 0
  br i1 %_167, label %_if168, label %_else169
_if168:
  %_171 = load i64, i64* %_145
  ret i64 %_171
_else169:
  %_172 = load i64, i64* %_145
  %_173 = mul i64 %_172, -1
  ret i64 %_173
_end170:
  %_174 = load i64, i64* %_145
  ret i64 %_174
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
