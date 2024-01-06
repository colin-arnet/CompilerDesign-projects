; generated from: oatprograms/run14.oat
target triple = "x86_64-unknown-linux"
define i64 @f({ i64, [0 x i64] }* %a) {
  %_a1175 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a1175
  %_1176 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1175
  %_1179 = bitcast { i64, [0 x i64] }* %_1176 to i64*
  %_1177 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1176, i32 0, i32 1, i32 1
  %_1178 = load i64, i64* %_1177
  ret i64 %_1178
}

define i64 @g(i64 %x) {
  %_1158 = alloca { i64, [0 x i64] }*
  %_1159 = alloca i64
  %_x1155 = alloca i64
  store i64 %x, i64* %_x1155
  %_raw_array1156 = call i64* @oat_alloc_array(i64 3)
  %_array1157 = bitcast i64* %_raw_array1156 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1157, { i64, [0 x i64] }** %_1158
  store i64 0, i64* %_1159
  br label %_cnd1162
_cnd1162:
  %_1160 = load i64, i64* %_1159
  %_1161 = icmp slt i64 %_1160, 3
  br i1 %_1161, label %_loop1164, label %_end1163
_loop1164:
  %_1165 = load i64, i64* %_x1155
  %_1166 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1158
  %_1167 = load i64, i64* %_1159
  %_1168 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1166, i32 0, i32 1, i64 %_1167
  store i64 %_1165, i64* %_1168
  %_1169 = load i64, i64* %_1159
  %_1170 = add i64 %_1169, 1
  store i64 %_1170, i64* %_1159
  br label %_cnd1162
_end1163:
  %_1171 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1158
  %_1174 = bitcast { i64, [0 x i64] }* %_1171 to i64*
  %_1172 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1171, i32 0, i32 1, i32 1
  %_1173 = load i64, i64* %_1172
  ret i64 %_1173
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1095 = alloca { i64, [0 x i64] }*
  %_1096 = alloca i64
  %_1110 = alloca { i64, [0 x i64] }*
  %_1111 = alloca i64
  %_1127 = alloca { i64, [0 x i64] }*
  %_1128 = alloca i64
  %_argv1092 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1092
  %_argc1091 = alloca i64
  store i64 %argc, i64* %_argc1091
  %_raw_array1093 = call i64* @oat_alloc_array(i64 3)
  %_array1094 = bitcast i64* %_raw_array1093 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1094, { i64, [0 x i64] }** %_1095
  store i64 0, i64* %_1096
  br label %_cnd1099
_cnd1099:
  %_1097 = load i64, i64* %_1096
  %_1098 = icmp slt i64 %_1097, 3
  br i1 %_1098, label %_loop1101, label %_end1100
_loop1101:
  %_1102 = load i64, i64* %_1096
  %_1103 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1095
  %_1104 = load i64, i64* %_1096
  %_1105 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1103, i32 0, i32 1, i64 %_1104
  store i64 %_1102, i64* %_1105
  %_1106 = load i64, i64* %_1096
  %_1107 = add i64 %_1106, 1
  store i64 %_1107, i64* %_1096
  br label %_cnd1099
_end1100:
  %_raw_array1108 = call i64* @oat_alloc_array(i64 4)
  %_array1109 = bitcast i64* %_raw_array1108 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1109, { i64, [0 x i64] }** %_1110
  store i64 0, i64* %_1111
  br label %_cnd1114
_cnd1114:
  %_1112 = load i64, i64* %_1111
  %_1113 = icmp slt i64 %_1112, 4
  br i1 %_1113, label %_loop1116, label %_end1115
_loop1116:
  %_1117 = load i64, i64* %_1111
  %_1118 = load i64, i64* %_1111
  %_1119 = mul i64 %_1117, %_1118
  %_1120 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1110
  %_1121 = load i64, i64* %_1111
  %_1122 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1120, i32 0, i32 1, i64 %_1121
  store i64 %_1119, i64* %_1122
  %_1123 = load i64, i64* %_1111
  %_1124 = add i64 %_1123, 1
  store i64 %_1124, i64* %_1111
  br label %_cnd1114
_end1115:
  %_raw_array1125 = call i64* @oat_alloc_array(i64 3)
  %_array1126 = bitcast i64* %_raw_array1125 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1126, { i64, [0 x i64] }** %_1127
  store i64 0, i64* %_1128
  br label %_cnd1131
_cnd1131:
  %_1129 = load i64, i64* %_1128
  %_1130 = icmp slt i64 %_1129, 3
  br i1 %_1130, label %_loop1133, label %_end1132
_loop1133:
  %_1134 = load i64, i64* %_1128
  %_1135 = mul i64 2, %_1134
  %_1136 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1127
  %_1137 = load i64, i64* %_1128
  %_1138 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1136, i32 0, i32 1, i64 %_1137
  store i64 %_1135, i64* %_1138
  %_1139 = load i64, i64* %_1128
  %_1140 = add i64 %_1139, 1
  store i64 %_1140, i64* %_1128
  br label %_cnd1131
_end1132:
  %_1141 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1110
  %_1144 = bitcast { i64, [0 x i64] }* %_1141 to i64*
  %_1142 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1141, i32 0, i32 1, i32 3
  %_1143 = load i64, i64* %_1142
  %_1145 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1095
  %_1148 = bitcast { i64, [0 x i64] }* %_1145 to i64*
  %_1146 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1145, i32 0, i32 1, i32 1
  %_1147 = load i64, i64* %_1146
  %_1149 = add i64 %_1143, %_1147
  %_1150 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1127
  %_1151 = call i64 @f({ i64, [0 x i64] }* %_1150)
  %_1152 = add i64 %_1149, %_1151
  %_1153 = call i64 @g(i64 4)
  %_1154 = add i64 %_1152, %_1153
  ret i64 %_1154
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
