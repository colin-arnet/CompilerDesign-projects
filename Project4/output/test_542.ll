; generated from: oatprograms/fac.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %i) {
  %_2471 = alloca i64
  %_i2470 = alloca i64
  store i64 %i, i64* %_i2470
  store i64 0, i64* %_2471
  %_2472 = load i64, i64* %_i2470
  %_2473 = icmp eq i64 %_2472, 0
  br i1 %_2473, label %_if2474, label %_else2475
_if2474:
  store i64 1, i64* %_2471
  br label %_end2476
_else2475:
  %_2477 = load i64, i64* %_i2470
  %_2478 = load i64, i64* %_i2470
  %_2479 = sub i64 %_2478, 1
  %_2480 = call i64 @f(i64 %_2479)
  %_2481 = mul i64 %_2477, %_2480
  store i64 %_2481, i64* %_2471
  br label %_end2476
_end2476:
  %_2482 = load i64, i64* %_2471
  ret i64 %_2482
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argv2468 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2468
  %_argc2467 = alloca i64
  store i64 %argc, i64* %_argc2467
  %_2469 = call i64 @f(i64 5)
  ret i64 %_2469
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
