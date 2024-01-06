; generated from: oatprograms/fact.oat
target triple = "x86_64-unknown-linux"
define i64 @fact(i64 %x) {
  %_765 = alloca i64
  %_x764 = alloca i64
  store i64 %x, i64* %_x764
  store i64 1, i64* %_765
  br label %_cnd768
_cnd768:
  %_766 = load i64, i64* %_x764
  %_767 = icmp sgt i64 %_766, 0
  br i1 %_767, label %_loop770, label %_end769
_loop770:
  %_771 = load i64, i64* %_765
  %_772 = load i64, i64* %_x764
  %_773 = mul i64 %_771, %_772
  store i64 %_773, i64* %_765
  %_774 = load i64, i64* %_x764
  %_775 = sub i64 %_774, 1
  store i64 %_775, i64* %_x764
  br label %_cnd768
_end769:
  %_776 = load i64, i64* %_765
  ret i64 %_776
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argv760 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv760
  %_argc759 = alloca i64
  store i64 %argc, i64* %_argc759
  %_761 = call i64 @fact(i64 5)
  %_762 = call i8* @string_of_int(i64 %_761)
  call void @print_string(i8* %_762)
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
