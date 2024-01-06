; generated from: oatprograms/run15.oat
target triple = "x86_64-unknown-linux"
define i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %a) {
  %_a1380 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a, { i64, [0 x { i64, [0 x i64] }*] }** %_a1380
  %_1381 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1380
  %_1384 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_1381 to i64*
  %_1382 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_1381, i32 0, i32 1, i32 1
  %_1383 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1382
  %_1387 = bitcast { i64, [0 x i64] }* %_1383 to i64*
  %_1385 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1383, i32 0, i32 1, i32 1
  %_1386 = load i64, i64* %_1385
  ret i64 %_1386
}

define i64 @g(i64 %x) {
  %_1372 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_x1342 = alloca i64
  store i64 %x, i64* %_x1342
  %_raw_array1343 = call i64* @oat_alloc_array(i64 3)
  %_array1344 = bitcast i64* %_raw_array1343 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1361 = call i64* @oat_alloc_array(i64 3)
  %_array1362 = bitcast i64* %_raw_array1361 to { i64, [0 x i64] }*
  %_1365 = load i64, i64* %_x1342
  %_1364 = load i64, i64* %_x1342
  %_1363 = load i64, i64* %_x1342
  %_1368 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1362, i32 0, i32 1, i32 2
  store i64 %_1365, i64* %_1368
  %_1367 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1362, i32 0, i32 1, i32 1
  store i64 %_1364, i64* %_1367
  %_1366 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1362, i32 0, i32 1, i32 0
  store i64 %_1363, i64* %_1366
  %_raw_array1353 = call i64* @oat_alloc_array(i64 3)
  %_array1354 = bitcast i64* %_raw_array1353 to { i64, [0 x i64] }*
  %_1357 = load i64, i64* %_x1342
  %_1356 = load i64, i64* %_x1342
  %_1355 = load i64, i64* %_x1342
  %_1360 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1354, i32 0, i32 1, i32 2
  store i64 %_1357, i64* %_1360
  %_1359 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1354, i32 0, i32 1, i32 1
  store i64 %_1356, i64* %_1359
  %_1358 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1354, i32 0, i32 1, i32 0
  store i64 %_1355, i64* %_1358
  %_raw_array1345 = call i64* @oat_alloc_array(i64 3)
  %_array1346 = bitcast i64* %_raw_array1345 to { i64, [0 x i64] }*
  %_1349 = load i64, i64* %_x1342
  %_1348 = load i64, i64* %_x1342
  %_1347 = load i64, i64* %_x1342
  %_1352 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1346, i32 0, i32 1, i32 2
  store i64 %_1349, i64* %_1352
  %_1351 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1346, i32 0, i32 1, i32 1
  store i64 %_1348, i64* %_1351
  %_1350 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1346, i32 0, i32 1, i32 0
  store i64 %_1347, i64* %_1350
  %_1371 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1344, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1362, { i64, [0 x i64] }** %_1371
  %_1370 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1344, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1354, { i64, [0 x i64] }** %_1370
  %_1369 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1344, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1346, { i64, [0 x i64] }** %_1369
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1344, { i64, [0 x { i64, [0 x i64] }*] }** %_1372
  %_1373 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1372
  %_1376 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_1373 to i64*
  %_1374 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_1373, i32 0, i32 1, i32 1
  %_1375 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1374
  %_1379 = bitcast { i64, [0 x i64] }* %_1375 to i64*
  %_1377 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1375, i32 0, i32 1, i32 1
  %_1378 = load i64, i64* %_1377
  ret i64 %_1378
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1236 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_1291 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_1321 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_argv1215 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1215
  %_argc1214 = alloca i64
  store i64 %argc, i64* %_argc1214
  %_raw_array1216 = call i64* @oat_alloc_array(i64 3)
  %_array1217 = bitcast i64* %_raw_array1216 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1228 = call i64* @oat_alloc_array(i64 3)
  %_array1229 = bitcast i64* %_raw_array1228 to { i64, [0 x i64] }*
  %_1232 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1229, i32 0, i32 1, i32 2
  store i64 2, i64* %_1232
  %_1231 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1229, i32 0, i32 1, i32 1
  store i64 1, i64* %_1231
  %_1230 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1229, i32 0, i32 1, i32 0
  store i64 0, i64* %_1230
  %_raw_array1223 = call i64* @oat_alloc_array(i64 3)
  %_array1224 = bitcast i64* %_raw_array1223 to { i64, [0 x i64] }*
  %_1227 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1224, i32 0, i32 1, i32 2
  store i64 2, i64* %_1227
  %_1226 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1224, i32 0, i32 1, i32 1
  store i64 1, i64* %_1226
  %_1225 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1224, i32 0, i32 1, i32 0
  store i64 0, i64* %_1225
  %_raw_array1218 = call i64* @oat_alloc_array(i64 3)
  %_array1219 = bitcast i64* %_raw_array1218 to { i64, [0 x i64] }*
  %_1222 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1219, i32 0, i32 1, i32 2
  store i64 2, i64* %_1222
  %_1221 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1219, i32 0, i32 1, i32 1
  store i64 1, i64* %_1221
  %_1220 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1219, i32 0, i32 1, i32 0
  store i64 0, i64* %_1220
  %_1235 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1217, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1229, { i64, [0 x i64] }** %_1235
  %_1234 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1217, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1224, { i64, [0 x i64] }** %_1234
  %_1233 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1217, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1219, { i64, [0 x i64] }** %_1233
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1217, { i64, [0 x { i64, [0 x i64] }*] }** %_1236
  %_raw_array1237 = call i64* @oat_alloc_array(i64 4)
  %_array1238 = bitcast i64* %_raw_array1237 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1275 = call i64* @oat_alloc_array(i64 5)
  %_array1276 = bitcast i64* %_raw_array1275 to { i64, [0 x i64] }*
  %_1281 = mul i64 3, 4
  %_1280 = mul i64 3, 3
  %_1279 = mul i64 3, 2
  %_1278 = mul i64 3, 1
  %_1277 = mul i64 3, 0
  %_1286 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1276, i32 0, i32 1, i32 4
  store i64 %_1281, i64* %_1286
  %_1285 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1276, i32 0, i32 1, i32 3
  store i64 %_1280, i64* %_1285
  %_1284 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1276, i32 0, i32 1, i32 2
  store i64 %_1279, i64* %_1284
  %_1283 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1276, i32 0, i32 1, i32 1
  store i64 %_1278, i64* %_1283
  %_1282 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1276, i32 0, i32 1, i32 0
  store i64 %_1277, i64* %_1282
  %_raw_array1263 = call i64* @oat_alloc_array(i64 5)
  %_array1264 = bitcast i64* %_raw_array1263 to { i64, [0 x i64] }*
  %_1269 = mul i64 2, 4
  %_1268 = mul i64 2, 3
  %_1267 = mul i64 2, 2
  %_1266 = mul i64 2, 1
  %_1265 = mul i64 2, 0
  %_1274 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1264, i32 0, i32 1, i32 4
  store i64 %_1269, i64* %_1274
  %_1273 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1264, i32 0, i32 1, i32 3
  store i64 %_1268, i64* %_1273
  %_1272 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1264, i32 0, i32 1, i32 2
  store i64 %_1267, i64* %_1272
  %_1271 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1264, i32 0, i32 1, i32 1
  store i64 %_1266, i64* %_1271
  %_1270 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1264, i32 0, i32 1, i32 0
  store i64 %_1265, i64* %_1270
  %_raw_array1251 = call i64* @oat_alloc_array(i64 5)
  %_array1252 = bitcast i64* %_raw_array1251 to { i64, [0 x i64] }*
  %_1257 = mul i64 1, 4
  %_1256 = mul i64 1, 3
  %_1255 = mul i64 1, 2
  %_1254 = mul i64 1, 1
  %_1253 = mul i64 1, 0
  %_1262 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1252, i32 0, i32 1, i32 4
  store i64 %_1257, i64* %_1262
  %_1261 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1252, i32 0, i32 1, i32 3
  store i64 %_1256, i64* %_1261
  %_1260 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1252, i32 0, i32 1, i32 2
  store i64 %_1255, i64* %_1260
  %_1259 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1252, i32 0, i32 1, i32 1
  store i64 %_1254, i64* %_1259
  %_1258 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1252, i32 0, i32 1, i32 0
  store i64 %_1253, i64* %_1258
  %_raw_array1239 = call i64* @oat_alloc_array(i64 5)
  %_array1240 = bitcast i64* %_raw_array1239 to { i64, [0 x i64] }*
  %_1245 = mul i64 0, 4
  %_1244 = mul i64 0, 3
  %_1243 = mul i64 0, 2
  %_1242 = mul i64 0, 1
  %_1241 = mul i64 0, 0
  %_1250 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1240, i32 0, i32 1, i32 4
  store i64 %_1245, i64* %_1250
  %_1249 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1240, i32 0, i32 1, i32 3
  store i64 %_1244, i64* %_1249
  %_1248 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1240, i32 0, i32 1, i32 2
  store i64 %_1243, i64* %_1248
  %_1247 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1240, i32 0, i32 1, i32 1
  store i64 %_1242, i64* %_1247
  %_1246 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1240, i32 0, i32 1, i32 0
  store i64 %_1241, i64* %_1246
  %_1290 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1238, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array1276, { i64, [0 x i64] }** %_1290
  %_1289 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1238, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1264, { i64, [0 x i64] }** %_1289
  %_1288 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1238, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1252, { i64, [0 x i64] }** %_1288
  %_1287 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1238, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1240, { i64, [0 x i64] }** %_1287
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1238, { i64, [0 x { i64, [0 x i64] }*] }** %_1291
  %_raw_array1292 = call i64* @oat_alloc_array(i64 3)
  %_array1293 = bitcast i64* %_raw_array1292 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1310 = call i64* @oat_alloc_array(i64 3)
  %_array1311 = bitcast i64* %_raw_array1310 to { i64, [0 x i64] }*
  %_1314 = mul i64 2, 2
  %_1313 = mul i64 2, 1
  %_1312 = mul i64 2, 0
  %_1317 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1311, i32 0, i32 1, i32 2
  store i64 %_1314, i64* %_1317
  %_1316 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1311, i32 0, i32 1, i32 1
  store i64 %_1313, i64* %_1316
  %_1315 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1311, i32 0, i32 1, i32 0
  store i64 %_1312, i64* %_1315
  %_raw_array1302 = call i64* @oat_alloc_array(i64 3)
  %_array1303 = bitcast i64* %_raw_array1302 to { i64, [0 x i64] }*
  %_1306 = mul i64 1, 2
  %_1305 = mul i64 1, 1
  %_1304 = mul i64 1, 0
  %_1309 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1303, i32 0, i32 1, i32 2
  store i64 %_1306, i64* %_1309
  %_1308 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1303, i32 0, i32 1, i32 1
  store i64 %_1305, i64* %_1308
  %_1307 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1303, i32 0, i32 1, i32 0
  store i64 %_1304, i64* %_1307
  %_raw_array1294 = call i64* @oat_alloc_array(i64 3)
  %_array1295 = bitcast i64* %_raw_array1294 to { i64, [0 x i64] }*
  %_1298 = mul i64 0, 2
  %_1297 = mul i64 0, 1
  %_1296 = mul i64 0, 0
  %_1301 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1295, i32 0, i32 1, i32 2
  store i64 %_1298, i64* %_1301
  %_1300 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1295, i32 0, i32 1, i32 1
  store i64 %_1297, i64* %_1300
  %_1299 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1295, i32 0, i32 1, i32 0
  store i64 %_1296, i64* %_1299
  %_1320 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1293, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1311, { i64, [0 x i64] }** %_1320
  %_1319 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1293, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1303, { i64, [0 x i64] }** %_1319
  %_1318 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1293, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1295, { i64, [0 x i64] }** %_1318
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1293, { i64, [0 x { i64, [0 x i64] }*] }** %_1321
  %_1322 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1291
  %_1325 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_1322 to i64*
  %_1323 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_1322, i32 0, i32 1, i32 3
  %_1324 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1323
  %_1328 = bitcast { i64, [0 x i64] }* %_1324 to i64*
  %_1326 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1324, i32 0, i32 1, i32 4
  %_1327 = load i64, i64* %_1326
  %_1329 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1236
  %_1332 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_1329 to i64*
  %_1330 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_1329, i32 0, i32 1, i32 1
  %_1331 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1330
  %_1335 = bitcast { i64, [0 x i64] }* %_1331 to i64*
  %_1333 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1331, i32 0, i32 1, i32 2
  %_1334 = load i64, i64* %_1333
  %_1336 = add i64 %_1327, %_1334
  %_1337 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1321
  %_1338 = call i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %_1337)
  %_1339 = add i64 %_1336, %_1338
  %_1340 = call i64 @g(i64 4)
  %_1341 = add i64 %_1339, %_1340
  ret i64 %_1341
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
