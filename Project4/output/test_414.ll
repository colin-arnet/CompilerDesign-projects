; generated from: oatprograms/run16.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1390 = alloca i64
  %_1438 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_1440 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_argv1389 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1389
  %_argc1388 = alloca i64
  store i64 %argc, i64* %_argc1388
  store i64 10, i64* %_1390
  %_raw_array1391 = call i64* @oat_alloc_array(i64 3)
  %_array1392 = bitcast i64* %_raw_array1391 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1421 = call i64* @oat_alloc_array(i64 3)
  %_array1422 = bitcast i64* %_raw_array1421 to { i64, [0 x i64] }*
  %_1429 = load i64, i64* %_1390
  %_1430 = add i64 %_1429, 2
  %_1431 = add i64 %_1430, 2
  %_1426 = load i64, i64* %_1390
  %_1427 = add i64 %_1426, 2
  %_1428 = add i64 %_1427, 1
  %_1423 = load i64, i64* %_1390
  %_1424 = add i64 %_1423, 2
  %_1425 = add i64 %_1424, 0
  %_1434 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1422, i32 0, i32 1, i32 2
  store i64 %_1431, i64* %_1434
  %_1433 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1422, i32 0, i32 1, i32 1
  store i64 %_1428, i64* %_1433
  %_1432 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1422, i32 0, i32 1, i32 0
  store i64 %_1425, i64* %_1432
  %_raw_array1407 = call i64* @oat_alloc_array(i64 3)
  %_array1408 = bitcast i64* %_raw_array1407 to { i64, [0 x i64] }*
  %_1415 = load i64, i64* %_1390
  %_1416 = add i64 %_1415, 1
  %_1417 = add i64 %_1416, 2
  %_1412 = load i64, i64* %_1390
  %_1413 = add i64 %_1412, 1
  %_1414 = add i64 %_1413, 1
  %_1409 = load i64, i64* %_1390
  %_1410 = add i64 %_1409, 1
  %_1411 = add i64 %_1410, 0
  %_1420 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1408, i32 0, i32 1, i32 2
  store i64 %_1417, i64* %_1420
  %_1419 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1408, i32 0, i32 1, i32 1
  store i64 %_1414, i64* %_1419
  %_1418 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1408, i32 0, i32 1, i32 0
  store i64 %_1411, i64* %_1418
  %_raw_array1393 = call i64* @oat_alloc_array(i64 3)
  %_array1394 = bitcast i64* %_raw_array1393 to { i64, [0 x i64] }*
  %_1401 = load i64, i64* %_1390
  %_1402 = add i64 %_1401, 0
  %_1403 = add i64 %_1402, 2
  %_1398 = load i64, i64* %_1390
  %_1399 = add i64 %_1398, 0
  %_1400 = add i64 %_1399, 1
  %_1395 = load i64, i64* %_1390
  %_1396 = add i64 %_1395, 0
  %_1397 = add i64 %_1396, 0
  %_1406 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1394, i32 0, i32 1, i32 2
  store i64 %_1403, i64* %_1406
  %_1405 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1394, i32 0, i32 1, i32 1
  store i64 %_1400, i64* %_1405
  %_1404 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1394, i32 0, i32 1, i32 0
  store i64 %_1397, i64* %_1404
  %_1437 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1392, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1422, { i64, [0 x i64] }** %_1437
  %_1436 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1392, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1408, { i64, [0 x i64] }** %_1436
  %_1435 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1392, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1394, { i64, [0 x i64] }** %_1435
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1392, { i64, [0 x { i64, [0 x i64] }*] }** %_1438
  %_1439 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1438
  store { i64, [0 x { i64, [0 x i64] }*] }* %_1439, { i64, [0 x { i64, [0 x i64] }*] }** %_1440
  %_1441 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1440
  %_1444 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_1441 to i64*
  %_1442 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_1441, i32 0, i32 1, i32 2
  %_1443 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1442
  %_1447 = bitcast { i64, [0 x i64] }* %_1443 to i64*
  %_1445 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1443, i32 0, i32 1, i32 1
  %_1446 = load i64, i64* %_1445
  ret i64 %_1446
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
