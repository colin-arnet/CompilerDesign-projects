; generated from: oatprograms/run15.oat
target triple = "x86_64-unknown-linux"
define i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %a) {
  %_a1346 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a, { i64, [0 x { i64, [0 x i64] }*] }** %_a1346
  %_1347 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1346
  %_1350 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_1347 to i64*
  %_1348 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_1347, i32 0, i32 1, i32 1
  %_1349 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1348
  %_1353 = bitcast { i64, [0 x i64] }* %_1349 to i64*
  %_1351 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1349, i32 0, i32 1, i32 1
  %_1352 = load i64, i64* %_1351
  ret i64 %_1352
}

define i64 @g(i64 %x) {
  %_1338 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_x1308 = alloca i64
  store i64 %x, i64* %_x1308
  %_raw_array1309 = call i64* @oat_alloc_array(i64 3)
  %_array1310 = bitcast i64* %_raw_array1309 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1327 = call i64* @oat_alloc_array(i64 3)
  %_array1328 = bitcast i64* %_raw_array1327 to { i64, [0 x i64] }*
  %_1331 = load i64, i64* %_x1308
  %_1330 = load i64, i64* %_x1308
  %_1329 = load i64, i64* %_x1308
  %_1334 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1328, i32 0, i32 1, i32 2
  store i64 %_1331, i64* %_1334
  %_1333 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1328, i32 0, i32 1, i32 1
  store i64 %_1330, i64* %_1333
  %_1332 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1328, i32 0, i32 1, i32 0
  store i64 %_1329, i64* %_1332
  %_raw_array1319 = call i64* @oat_alloc_array(i64 3)
  %_array1320 = bitcast i64* %_raw_array1319 to { i64, [0 x i64] }*
  %_1323 = load i64, i64* %_x1308
  %_1322 = load i64, i64* %_x1308
  %_1321 = load i64, i64* %_x1308
  %_1326 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1320, i32 0, i32 1, i32 2
  store i64 %_1323, i64* %_1326
  %_1325 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1320, i32 0, i32 1, i32 1
  store i64 %_1322, i64* %_1325
  %_1324 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1320, i32 0, i32 1, i32 0
  store i64 %_1321, i64* %_1324
  %_raw_array1311 = call i64* @oat_alloc_array(i64 3)
  %_array1312 = bitcast i64* %_raw_array1311 to { i64, [0 x i64] }*
  %_1315 = load i64, i64* %_x1308
  %_1314 = load i64, i64* %_x1308
  %_1313 = load i64, i64* %_x1308
  %_1318 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1312, i32 0, i32 1, i32 2
  store i64 %_1315, i64* %_1318
  %_1317 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1312, i32 0, i32 1, i32 1
  store i64 %_1314, i64* %_1317
  %_1316 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1312, i32 0, i32 1, i32 0
  store i64 %_1313, i64* %_1316
  %_1337 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1310, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1328, { i64, [0 x i64] }** %_1337
  %_1336 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1310, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1320, { i64, [0 x i64] }** %_1336
  %_1335 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1310, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1312, { i64, [0 x i64] }** %_1335
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1310, { i64, [0 x { i64, [0 x i64] }*] }** %_1338
  %_1339 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1338
  %_1342 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_1339 to i64*
  %_1340 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_1339, i32 0, i32 1, i32 1
  %_1341 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1340
  %_1345 = bitcast { i64, [0 x i64] }* %_1341 to i64*
  %_1343 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1341, i32 0, i32 1, i32 1
  %_1344 = load i64, i64* %_1343
  ret i64 %_1344
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1202 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_1257 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_1287 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_argv1181 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1181
  %_argc1180 = alloca i64
  store i64 %argc, i64* %_argc1180
  %_raw_array1182 = call i64* @oat_alloc_array(i64 3)
  %_array1183 = bitcast i64* %_raw_array1182 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1194 = call i64* @oat_alloc_array(i64 3)
  %_array1195 = bitcast i64* %_raw_array1194 to { i64, [0 x i64] }*
  %_1198 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1195, i32 0, i32 1, i32 2
  store i64 2, i64* %_1198
  %_1197 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1195, i32 0, i32 1, i32 1
  store i64 1, i64* %_1197
  %_1196 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1195, i32 0, i32 1, i32 0
  store i64 0, i64* %_1196
  %_raw_array1189 = call i64* @oat_alloc_array(i64 3)
  %_array1190 = bitcast i64* %_raw_array1189 to { i64, [0 x i64] }*
  %_1193 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1190, i32 0, i32 1, i32 2
  store i64 2, i64* %_1193
  %_1192 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1190, i32 0, i32 1, i32 1
  store i64 1, i64* %_1192
  %_1191 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1190, i32 0, i32 1, i32 0
  store i64 0, i64* %_1191
  %_raw_array1184 = call i64* @oat_alloc_array(i64 3)
  %_array1185 = bitcast i64* %_raw_array1184 to { i64, [0 x i64] }*
  %_1188 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1185, i32 0, i32 1, i32 2
  store i64 2, i64* %_1188
  %_1187 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1185, i32 0, i32 1, i32 1
  store i64 1, i64* %_1187
  %_1186 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1185, i32 0, i32 1, i32 0
  store i64 0, i64* %_1186
  %_1201 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1183, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1195, { i64, [0 x i64] }** %_1201
  %_1200 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1183, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1190, { i64, [0 x i64] }** %_1200
  %_1199 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1183, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1185, { i64, [0 x i64] }** %_1199
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1183, { i64, [0 x { i64, [0 x i64] }*] }** %_1202
  %_raw_array1203 = call i64* @oat_alloc_array(i64 4)
  %_array1204 = bitcast i64* %_raw_array1203 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1241 = call i64* @oat_alloc_array(i64 5)
  %_array1242 = bitcast i64* %_raw_array1241 to { i64, [0 x i64] }*
  %_1247 = mul i64 3, 4
  %_1246 = mul i64 3, 3
  %_1245 = mul i64 3, 2
  %_1244 = mul i64 3, 1
  %_1243 = mul i64 3, 0
  %_1252 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1242, i32 0, i32 1, i32 4
  store i64 %_1247, i64* %_1252
  %_1251 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1242, i32 0, i32 1, i32 3
  store i64 %_1246, i64* %_1251
  %_1250 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1242, i32 0, i32 1, i32 2
  store i64 %_1245, i64* %_1250
  %_1249 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1242, i32 0, i32 1, i32 1
  store i64 %_1244, i64* %_1249
  %_1248 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1242, i32 0, i32 1, i32 0
  store i64 %_1243, i64* %_1248
  %_raw_array1229 = call i64* @oat_alloc_array(i64 5)
  %_array1230 = bitcast i64* %_raw_array1229 to { i64, [0 x i64] }*
  %_1235 = mul i64 2, 4
  %_1234 = mul i64 2, 3
  %_1233 = mul i64 2, 2
  %_1232 = mul i64 2, 1
  %_1231 = mul i64 2, 0
  %_1240 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1230, i32 0, i32 1, i32 4
  store i64 %_1235, i64* %_1240
  %_1239 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1230, i32 0, i32 1, i32 3
  store i64 %_1234, i64* %_1239
  %_1238 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1230, i32 0, i32 1, i32 2
  store i64 %_1233, i64* %_1238
  %_1237 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1230, i32 0, i32 1, i32 1
  store i64 %_1232, i64* %_1237
  %_1236 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1230, i32 0, i32 1, i32 0
  store i64 %_1231, i64* %_1236
  %_raw_array1217 = call i64* @oat_alloc_array(i64 5)
  %_array1218 = bitcast i64* %_raw_array1217 to { i64, [0 x i64] }*
  %_1223 = mul i64 1, 4
  %_1222 = mul i64 1, 3
  %_1221 = mul i64 1, 2
  %_1220 = mul i64 1, 1
  %_1219 = mul i64 1, 0
  %_1228 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1218, i32 0, i32 1, i32 4
  store i64 %_1223, i64* %_1228
  %_1227 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1218, i32 0, i32 1, i32 3
  store i64 %_1222, i64* %_1227
  %_1226 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1218, i32 0, i32 1, i32 2
  store i64 %_1221, i64* %_1226
  %_1225 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1218, i32 0, i32 1, i32 1
  store i64 %_1220, i64* %_1225
  %_1224 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1218, i32 0, i32 1, i32 0
  store i64 %_1219, i64* %_1224
  %_raw_array1205 = call i64* @oat_alloc_array(i64 5)
  %_array1206 = bitcast i64* %_raw_array1205 to { i64, [0 x i64] }*
  %_1211 = mul i64 0, 4
  %_1210 = mul i64 0, 3
  %_1209 = mul i64 0, 2
  %_1208 = mul i64 0, 1
  %_1207 = mul i64 0, 0
  %_1216 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1206, i32 0, i32 1, i32 4
  store i64 %_1211, i64* %_1216
  %_1215 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1206, i32 0, i32 1, i32 3
  store i64 %_1210, i64* %_1215
  %_1214 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1206, i32 0, i32 1, i32 2
  store i64 %_1209, i64* %_1214
  %_1213 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1206, i32 0, i32 1, i32 1
  store i64 %_1208, i64* %_1213
  %_1212 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1206, i32 0, i32 1, i32 0
  store i64 %_1207, i64* %_1212
  %_1256 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1204, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array1242, { i64, [0 x i64] }** %_1256
  %_1255 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1204, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1230, { i64, [0 x i64] }** %_1255
  %_1254 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1204, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1218, { i64, [0 x i64] }** %_1254
  %_1253 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1204, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1206, { i64, [0 x i64] }** %_1253
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1204, { i64, [0 x { i64, [0 x i64] }*] }** %_1257
  %_raw_array1258 = call i64* @oat_alloc_array(i64 3)
  %_array1259 = bitcast i64* %_raw_array1258 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1276 = call i64* @oat_alloc_array(i64 3)
  %_array1277 = bitcast i64* %_raw_array1276 to { i64, [0 x i64] }*
  %_1280 = mul i64 2, 2
  %_1279 = mul i64 2, 1
  %_1278 = mul i64 2, 0
  %_1283 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1277, i32 0, i32 1, i32 2
  store i64 %_1280, i64* %_1283
  %_1282 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1277, i32 0, i32 1, i32 1
  store i64 %_1279, i64* %_1282
  %_1281 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1277, i32 0, i32 1, i32 0
  store i64 %_1278, i64* %_1281
  %_raw_array1268 = call i64* @oat_alloc_array(i64 3)
  %_array1269 = bitcast i64* %_raw_array1268 to { i64, [0 x i64] }*
  %_1272 = mul i64 1, 2
  %_1271 = mul i64 1, 1
  %_1270 = mul i64 1, 0
  %_1275 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1269, i32 0, i32 1, i32 2
  store i64 %_1272, i64* %_1275
  %_1274 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1269, i32 0, i32 1, i32 1
  store i64 %_1271, i64* %_1274
  %_1273 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1269, i32 0, i32 1, i32 0
  store i64 %_1270, i64* %_1273
  %_raw_array1260 = call i64* @oat_alloc_array(i64 3)
  %_array1261 = bitcast i64* %_raw_array1260 to { i64, [0 x i64] }*
  %_1264 = mul i64 0, 2
  %_1263 = mul i64 0, 1
  %_1262 = mul i64 0, 0
  %_1267 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1261, i32 0, i32 1, i32 2
  store i64 %_1264, i64* %_1267
  %_1266 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1261, i32 0, i32 1, i32 1
  store i64 %_1263, i64* %_1266
  %_1265 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1261, i32 0, i32 1, i32 0
  store i64 %_1262, i64* %_1265
  %_1286 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1259, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1277, { i64, [0 x i64] }** %_1286
  %_1285 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1259, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1269, { i64, [0 x i64] }** %_1285
  %_1284 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1259, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1261, { i64, [0 x i64] }** %_1284
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1259, { i64, [0 x { i64, [0 x i64] }*] }** %_1287
  %_1288 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1257
  %_1291 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_1288 to i64*
  %_1289 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_1288, i32 0, i32 1, i32 3
  %_1290 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1289
  %_1294 = bitcast { i64, [0 x i64] }* %_1290 to i64*
  %_1292 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1290, i32 0, i32 1, i32 4
  %_1293 = load i64, i64* %_1292
  %_1295 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1202
  %_1298 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_1295 to i64*
  %_1296 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_1295, i32 0, i32 1, i32 1
  %_1297 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1296
  %_1301 = bitcast { i64, [0 x i64] }* %_1297 to i64*
  %_1299 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1297, i32 0, i32 1, i32 2
  %_1300 = load i64, i64* %_1299
  %_1302 = add i64 %_1293, %_1300
  %_1303 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1287
  %_1304 = call i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %_1303)
  %_1305 = add i64 %_1302, %_1304
  %_1306 = call i64 @g(i64 4)
  %_1307 = add i64 %_1305, %_1306
  ret i64 %_1307
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
