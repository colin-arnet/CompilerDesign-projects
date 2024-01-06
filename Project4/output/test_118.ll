; generated from: oatprograms/fact.oat
target triple = "x86_64-unknown-linux"
define i64 @fact(i64 %x) {
  %_598 = alloca i64
  %_x597 = alloca i64
  store i64 %x, i64* %_x597
  store i64 1, i64* %_598
  br label %_cnd601
_cnd601:
  %_599 = load i64, i64* %_x597
  %_600 = icmp sgt i64 %_x597, 0
  br i1 %_600, label %_loop603, label %_end602
_loop603:
  %_604 = load i64, i64* %_598
  %_605 = load i64, i64* %_x597
  %_606 = mul i64 %_598, %_x597
  store i64 %_606, i64* %_598
  %_607 = load i64, i64* %_x597
  %_608 = sub i64 %_x597, 1
  store i64 %_608, i64* %_x597
  br label %_cnd601
_end602:
  %_609 = load i64, i64* %_598
  ret i64 %_598
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argv593 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv593
  %_argc592 = alloca i64
  store i64 %argc, i64* %_argc592
  %_594 = call i64 @fact(i64 5)
  %_595 = call i8* @string_of_int(i64 %_594)
  call void @print_string(i8* %_595)
  ret i64 0
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
