; generated from: oatprograms/fibo.oat
target triple = "x86_64-unknown-linux"
define i64 @fibR(i64 %n) {
  %_n2057 = alloca i64
  store i64 %n, i64* %_n2057
  %_2058 = load i64, i64* %_n2057
  %_2059 = icmp eq i64 %_2058, 0
  br i1 %_2059, label %_if2060, label %_else2061
_if2060:
  ret i64 0
_else2061:
  %_2063 = load i64, i64* %_n2057
  %_2064 = icmp eq i64 %_2063, 1
  br i1 %_2064, label %_if2065, label %_else2066
_if2065:
  ret i64 1
_else2066:
  %_2068 = load i64, i64* %_n2057
  %_2069 = sub i64 %_2068, 1
  %_2070 = call i64 @fibR(i64 %_2069)
  %_2071 = load i64, i64* %_n2057
  %_2072 = sub i64 %_2071, 2
  %_2073 = call i64 @fibR(i64 %_2072)
  %_2074 = add i64 %_2070, %_2073
  ret i64 %_2074
}

define i64 @fibI(i64 %n) {
  %_2026 = alloca i64
  %_2027 = alloca i64
  %_2047 = alloca i64
  %_n2025 = alloca i64
  store i64 %n, i64* %_n2025
  store i64 0, i64* %_2026
  store i64 1, i64* %_2027
  %_2028 = load i64, i64* %_n2025
  %_2029 = icmp eq i64 %_2028, 0
  br i1 %_2029, label %_if2030, label %_else2031
_if2030:
  %_2033 = load i64, i64* %_2026
  ret i64 %_2033
_else2031:
  %_2034 = load i64, i64* %_n2025
  %_2035 = icmp eq i64 %_2034, 1
  br i1 %_2035, label %_if2036, label %_else2037
_if2036:
  %_2039 = load i64, i64* %_2027
  ret i64 %_2039
_else2037:
  br label %_cnd2043
_cnd2043:
  %_2040 = load i64, i64* %_n2025
  %_2041 = sub i64 %_2040, 2
  %_2042 = icmp sgt i64 %_2041, 0
  br i1 %_2042, label %_loop2045, label %_end2044
_loop2045:
  %_2046 = load i64, i64* %_2027
  store i64 %_2046, i64* %_2047
  %_2048 = load i64, i64* %_2027
  %_2049 = load i64, i64* %_2026
  %_2050 = add i64 %_2048, %_2049
  store i64* %_2050, i64** %_2027
  %_2051 = load i64, i64* %_2047
  store i64* %_2051, i64** %_2026
  %_2052 = load i64, i64* %_n2025
  %_2053 = sub i64 %_2052, 1
  store i64* %_2053, i64** %_n2025
  br label %_cnd2043
_end2044:
  %_2054 = load i64, i64* %_2026
  %_2055 = load i64, i64* %_2027
  %_2056 = add i64 %_2054, %_2055
  ret i64 %_2056
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2015 = alloca i64
  %_argv2014 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2014
  %_argc2013 = alloca i64
  store i64 %argc, i64* %_argc2013
  store i64 1, i64* %_2015
  %_2016 = call i64 @fibR(i64 12)
  %_2017 = icmp eq i64 %_2016, 144
  %_2018 = call i64 @fibI(i64 12)
  %_2019 = icmp eq i64 %_2018, 144
  %_2020 = and i1 %_2017, %_2019
  br i1 %_2020, label %_if2021, label %_else2022
_if2021:
  store i64* 0, i64** %_2015
  br label %_else2022
_else2022:
  %_2024 = load i64, i64* %_2015
  ret i64 %_2024
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
