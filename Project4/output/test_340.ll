; generated from: oatprograms/run39.oat
target triple = "x86_64-unknown-linux"
define i64 @f1(i64 %i) {
  %_i476 = alloca i64
  store i64 %i, i64* %_i476
  %_477 = load i64, i64* %_i476
  %_478 = call i64 @f2(i64 %_477)
  ret i64 %_478
}

define i64 @f2(i64 %i) {
  %_i473 = alloca i64
  store i64 %i, i64* %_i473
  %_474 = load i64, i64* %_i473
  %_475 = call i64 @f3(i64 %_474)
  ret i64 %_475
}

define i64 @f3(i64 %i) {
  %_i470 = alloca i64
  store i64 %i, i64* %_i470
  %_471 = load i64, i64* %_i470
  %_472 = call i64 @f4(i64 %_471)
  ret i64 %_472
}

define i64 @f4(i64 %i) {
  %_i467 = alloca i64
  store i64 %i, i64* %_i467
  %_468 = load i64, i64* %_i467
  %_469 = call i64 @f5(i64 %_468)
  ret i64 %_469
}

define i64 @f5(i64 %i) {
  %_i464 = alloca i64
  store i64 %i, i64* %_i464
  %_465 = load i64, i64* %_i464
  %_466 = call i64 @f6(i64 %_465)
  ret i64 %_466
}

define i64 @f6(i64 %i) {
  %_i461 = alloca i64
  store i64 %i, i64* %_i461
  %_462 = load i64, i64* %_i461
  %_463 = call i64 @f7(i64 %_462)
  ret i64 %_463
}

define i64 @f7(i64 %i) {
  %_i458 = alloca i64
  store i64 %i, i64* %_i458
  %_459 = load i64, i64* %_i458
  %_460 = call i64 @f8(i64 %_459)
  ret i64 %_460
}

define i64 @f8(i64 %i) {
  %_i455 = alloca i64
  store i64 %i, i64* %_i455
  %_456 = load i64, i64* %_i455
  %_457 = call i64 @f9(i64 %_456)
  ret i64 %_457
}

define i64 @f9(i64 %i) {
  %_i453 = alloca i64
  store i64 %i, i64* %_i453
  %_454 = load i64, i64* %_i453
  ret i64 %_454
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argv450 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv450
  %_argc449 = alloca i64
  store i64 %argc, i64* %_argc449
  %_451 = load i64, i64* %_argc449
  %_452 = call i64 @f1(i64 %_451)
  ret i64 %_452
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
