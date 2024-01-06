; generated from: oatprograms/run14.oat
target triple = "x86_64-unknown-linux"
define i64 @f({ i64, [0 x i64] }* %a) {
  %_a1209 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a1209
  %_1210 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1209
  %_1213 = bitcast { i64, [0 x i64] }* %_1210 to i64*
  %_1211 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1210, i32 0, i32 1, i32 1
  %_1212 = load i64, i64* %_1211
  ret i64 %_1212
}

define i64 @g(i64 %x) {
  %_1192 = alloca { i64, [0 x i64] }*
  %_1193 = alloca i64
  %_x1189 = alloca i64
  store i64 %x, i64* %_x1189
  %_raw_array1190 = call i64* @oat_alloc_array(i64 3)
  %_array1191 = bitcast i64* %_raw_array1190 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1191, { i64, [0 x i64] }** %_1192
  store i64 0, i64* %_1193
  br label %_cnd1196
_cnd1196:
  %_1194 = load i64, i64* %_1193
  %_1195 = icmp slt i64 %_1194, 3
  br i1 %_1195, label %_loop1198, label %_end1197
_loop1198:
  %_1199 = load i64, i64* %_x1189
  %_1200 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1192
  %_1201 = load i64, i64* %_1193
  %_1202 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1200, i32 0, i32 1, i64 %_1201
  store i64 %_1199, i64* %_1202
  %_1203 = load i64, i64* %_1193
  %_1204 = add i64 %_1203, 1
  store i64 %_1204, i64* %_1193
  br label %_cnd1196
_end1197:
  %_1205 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1192
  %_1208 = bitcast { i64, [0 x i64] }* %_1205 to i64*
  %_1206 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1205, i32 0, i32 1, i32 1
  %_1207 = load i64, i64* %_1206
  ret i64 %_1207
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1129 = alloca { i64, [0 x i64] }*
  %_1130 = alloca i64
  %_1144 = alloca { i64, [0 x i64] }*
  %_1145 = alloca i64
  %_1161 = alloca { i64, [0 x i64] }*
  %_1162 = alloca i64
  %_argv1126 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1126
  %_argc1125 = alloca i64
  store i64 %argc, i64* %_argc1125
  %_raw_array1127 = call i64* @oat_alloc_array(i64 3)
  %_array1128 = bitcast i64* %_raw_array1127 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1128, { i64, [0 x i64] }** %_1129
  store i64 0, i64* %_1130
  br label %_cnd1133
_cnd1133:
  %_1131 = load i64, i64* %_1130
  %_1132 = icmp slt i64 %_1131, 3
  br i1 %_1132, label %_loop1135, label %_end1134
_loop1135:
  %_1136 = load i64, i64* %_1130
  %_1137 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1129
  %_1138 = load i64, i64* %_1130
  %_1139 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1137, i32 0, i32 1, i64 %_1138
  store i64 %_1136, i64* %_1139
  %_1140 = load i64, i64* %_1130
  %_1141 = add i64 %_1140, 1
  store i64 %_1141, i64* %_1130
  br label %_cnd1133
_end1134:
  %_raw_array1142 = call i64* @oat_alloc_array(i64 4)
  %_array1143 = bitcast i64* %_raw_array1142 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1143, { i64, [0 x i64] }** %_1144
  store i64 0, i64* %_1145
  br label %_cnd1148
_cnd1148:
  %_1146 = load i64, i64* %_1145
  %_1147 = icmp slt i64 %_1146, 4
  br i1 %_1147, label %_loop1150, label %_end1149
_loop1150:
  %_1151 = load i64, i64* %_1145
  %_1152 = load i64, i64* %_1145
  %_1153 = mul i64 %_1151, %_1152
  %_1154 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1144
  %_1155 = load i64, i64* %_1145
  %_1156 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1154, i32 0, i32 1, i64 %_1155
  store i64 %_1153, i64* %_1156
  %_1157 = load i64, i64* %_1145
  %_1158 = add i64 %_1157, 1
  store i64 %_1158, i64* %_1145
  br label %_cnd1148
_end1149:
  %_raw_array1159 = call i64* @oat_alloc_array(i64 3)
  %_array1160 = bitcast i64* %_raw_array1159 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1160, { i64, [0 x i64] }** %_1161
  store i64 0, i64* %_1162
  br label %_cnd1165
_cnd1165:
  %_1163 = load i64, i64* %_1162
  %_1164 = icmp slt i64 %_1163, 3
  br i1 %_1164, label %_loop1167, label %_end1166
_loop1167:
  %_1168 = load i64, i64* %_1162
  %_1169 = mul i64 2, %_1168
  %_1170 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1161
  %_1171 = load i64, i64* %_1162
  %_1172 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1170, i32 0, i32 1, i64 %_1171
  store i64 %_1169, i64* %_1172
  %_1173 = load i64, i64* %_1162
  %_1174 = add i64 %_1173, 1
  store i64 %_1174, i64* %_1162
  br label %_cnd1165
_end1166:
  %_1175 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1144
  %_1178 = bitcast { i64, [0 x i64] }* %_1175 to i64*
  %_1176 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1175, i32 0, i32 1, i32 3
  %_1177 = load i64, i64* %_1176
  %_1179 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1129
  %_1182 = bitcast { i64, [0 x i64] }* %_1179 to i64*
  %_1180 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1179, i32 0, i32 1, i32 1
  %_1181 = load i64, i64* %_1180
  %_1183 = add i64 %_1177, %_1181
  %_1184 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1161
  %_1185 = call i64 @f({ i64, [0 x i64] }* %_1184)
  %_1186 = add i64 %_1183, %_1185
  %_1187 = call i64 @g(i64 4)
  %_1188 = add i64 %_1186, %_1187
  ret i64 %_1188
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
