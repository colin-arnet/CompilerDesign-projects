; generated from: oatprograms/run2.oat
target triple = "x86_64-unknown-linux"
@i = global i64 0

define i64 @f(i64 %x, i64 %y) {
  %_851 = alloca i64
  %_y850 = alloca i64
  store i64 %y, i64* %_y850
  %_x849 = alloca i64
  store i64 %x, i64* %_x849
  store i64 0, i64* %_851
  %_852 = load i64, i64* %_x849
  %_853 = icmp sge i64 %_852, 1
  br i1 %_853, label %_if854, label %_else855
_if854:
  %_859 = load i64, i64* %_y850
  %_857 = load i64, i64* %_x849
  %_858 = sub i64 %_857, 1
  %_860 = call i64 @f(i64 %_858, i64 %_859)
  %_861 = add i64 1, %_860
  store i64 %_861, i64* %_851
  br label %_end856
_else855:
  %_862 = load i64, i64* %_x849
  %_863 = load i64, i64* %_y850
  %_864 = add i64 %_862, %_863
  store i64 %_864, i64* %_851
  br label %_end856
_end856:
  %_865 = load i64, i64* %_851
  ret i64 %_865
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_842 = alloca i64
  %_843 = alloca i64
  %_argv841 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv841
  %_argc840 = alloca i64
  store i64 %argc, i64* %_argc840
  store i64 3, i64* %_842
  store i64 3, i64* %_843
  %_845 = load i64, i64* %_843
  %_844 = load i64, i64* %_842
  %_846 = call i64 @f(i64 %_844, i64 %_845)
  %_847 = load i64, i64* @i
  %_848 = add i64 %_846, %_847
  ret i64 %_848
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
