; generated from: oatprograms/run16.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1356 = alloca i64
  %_1404 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_1406 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_argv1355 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1355
  %_argc1354 = alloca i64
  store i64 %argc, i64* %_argc1354
  store i64 10, i64* %_1356
  %_raw_array1357 = call i64* @oat_alloc_array(i64 3)
  %_array1358 = bitcast i64* %_raw_array1357 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1387 = call i64* @oat_alloc_array(i64 3)
  %_array1388 = bitcast i64* %_raw_array1387 to { i64, [0 x i64] }*
  %_1395 = load i64, i64* %_1356
  %_1396 = add i64 %_1395, 2
  %_1397 = add i64 %_1396, 2
  %_1392 = load i64, i64* %_1356
  %_1393 = add i64 %_1392, 2
  %_1394 = add i64 %_1393, 1
  %_1389 = load i64, i64* %_1356
  %_1390 = add i64 %_1389, 2
  %_1391 = add i64 %_1390, 0
  %_1400 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1388, i32 0, i32 1, i32 2
  store i64 %_1397, i64* %_1400
  %_1399 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1388, i32 0, i32 1, i32 1
  store i64 %_1394, i64* %_1399
  %_1398 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1388, i32 0, i32 1, i32 0
  store i64 %_1391, i64* %_1398
  %_raw_array1373 = call i64* @oat_alloc_array(i64 3)
  %_array1374 = bitcast i64* %_raw_array1373 to { i64, [0 x i64] }*
  %_1381 = load i64, i64* %_1356
  %_1382 = add i64 %_1381, 1
  %_1383 = add i64 %_1382, 2
  %_1378 = load i64, i64* %_1356
  %_1379 = add i64 %_1378, 1
  %_1380 = add i64 %_1379, 1
  %_1375 = load i64, i64* %_1356
  %_1376 = add i64 %_1375, 1
  %_1377 = add i64 %_1376, 0
  %_1386 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1374, i32 0, i32 1, i32 2
  store i64 %_1383, i64* %_1386
  %_1385 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1374, i32 0, i32 1, i32 1
  store i64 %_1380, i64* %_1385
  %_1384 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1374, i32 0, i32 1, i32 0
  store i64 %_1377, i64* %_1384
  %_raw_array1359 = call i64* @oat_alloc_array(i64 3)
  %_array1360 = bitcast i64* %_raw_array1359 to { i64, [0 x i64] }*
  %_1367 = load i64, i64* %_1356
  %_1368 = add i64 %_1367, 0
  %_1369 = add i64 %_1368, 2
  %_1364 = load i64, i64* %_1356
  %_1365 = add i64 %_1364, 0
  %_1366 = add i64 %_1365, 1
  %_1361 = load i64, i64* %_1356
  %_1362 = add i64 %_1361, 0
  %_1363 = add i64 %_1362, 0
  %_1372 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1360, i32 0, i32 1, i32 2
  store i64 %_1369, i64* %_1372
  %_1371 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1360, i32 0, i32 1, i32 1
  store i64 %_1366, i64* %_1371
  %_1370 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1360, i32 0, i32 1, i32 0
  store i64 %_1363, i64* %_1370
  %_1403 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1358, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1388, { i64, [0 x i64] }** %_1403
  %_1402 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1358, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1374, { i64, [0 x i64] }** %_1402
  %_1401 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1358, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1360, { i64, [0 x i64] }** %_1401
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1358, { i64, [0 x { i64, [0 x i64] }*] }** %_1404
  %_1405 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1404
  store { i64, [0 x { i64, [0 x i64] }*] }* %_1405, { i64, [0 x { i64, [0 x i64] }*] }** %_1406
  %_1407 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1406
  %_1410 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_1407 to i64*
  %_1408 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_1407, i32 0, i32 1, i32 2
  %_1409 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1408
  %_1413 = bitcast { i64, [0 x i64] }* %_1409 to i64*
  %_1411 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1409, i32 0, i32 1, i32 1
  %_1412 = load i64, i64* %_1411
  ret i64 %_1412
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
