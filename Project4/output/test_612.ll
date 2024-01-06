; generated from: oatprograms/run2.oat
target triple = "x86_64-unknown-linux"
@i = global i64 0

define i64 @f(i64 %x, i64 %y) {
  %_838 = alloca i64
  %_y837 = alloca i64
  store i64 %y, i64* %_y837
  %_x836 = alloca i64
  store i64 %x, i64* %_x836
  store i64 0, i64* %_838
  %_839 = load i64, i64* %_x836
  %_840 = icmp sge i64 %_839, 1
  br i1 %_840, label %_if841, label %_else842
_if841:
  %_846 = load i64, i64* %_y837
  %_844 = load i64, i64* %_x836
  %_845 = sub i64 %_844, 1
  %_847 = call i64 @f(i64 %_845, i64 %_846)
  %_848 = add i64 1, %_847
  store i64 %_848, i64* %_838
  br label %_end843
_else842:
  %_849 = load i64, i64* %_x836
  %_850 = load i64, i64* %_y837
  %_851 = add i64 %_849, %_850
  store i64 %_851, i64* %_838
  br label %_end843
_end843:
  %_852 = load i64, i64* %_838
  ret i64 %_852
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_829 = alloca i64
  %_830 = alloca i64
  %_argv828 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv828
  %_argc827 = alloca i64
  store i64 %argc, i64* %_argc827
  store i64 3, i64* %_829
  store i64 3, i64* %_830
  %_832 = load i64, i64* %_830
  %_831 = load i64, i64* %_829
  %_833 = call i64 @f(i64 %_831, i64 %_832)
  %_834 = load i64, i64* @i
  %_835 = add i64 %_833, %_834
  ret i64 %_835
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
