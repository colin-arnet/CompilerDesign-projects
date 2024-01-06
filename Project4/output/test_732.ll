; generated from: oatprograms/lib5.oat
target triple = "x86_64-unknown-linux"
@_2013 = global [6 x i8] c"hello\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2015 = alloca i8*
  %_2018 = alloca { i64, [0 x i64] }*
  %_2019 = alloca i64
  %_2020 = alloca i64
  %_argv2012 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2012
  %_argc2011 = alloca i64
  store i64 %argc, i64* %_argc2011
  %_2014 = bitcast [6 x i8]* @_2013 to i8*
  store i8* %_2014, i8** %_2015
  %_2016 = load i8*, i8** %_2015
  %_2017 = call { i64, [0 x i64] }* @array_of_string(i8* %_2016)
  store { i64, [0 x i64] }* %_2017, { i64, [0 x i64] }** %_2018
  store i64 0, i64* %_2019
  store i64 0, i64* %_2020
  br label %_cnd2023
_cnd2023:
  %_2021 = load i64, i64* %_2020
  %_2022 = icmp slt i64 %_2021, 5
  br i1 %_2022, label %_loop2025, label %_end2024
_loop2025:
  %_2026 = load i64, i64* %_2019
  %_2027 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2018
  %_2028 = load i64, i64* %_2020
  %_2031 = bitcast { i64, [0 x i64] }* %_2027 to i64*
  %_2029 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2027, i32 0, i32 1, i64 %_2028
  %_2030 = load i64, i64* %_2029
  %_2032 = add i64 %_2026, %_2030
  store i64 %_2032, i64* %_2019
  %_2033 = load i64, i64* %_2020
  %_2034 = add i64 %_2033, 1
  store i64 %_2034, i64* %_2020
  br label %_cnd2023
_end2024:
  %_2035 = load i64, i64* %_2019
  ret i64 %_2035
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
