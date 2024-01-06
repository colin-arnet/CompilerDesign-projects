; generated from: oatprograms/fibo.oat
target triple = "x86_64-unknown-linux"
define i64 @fibR(i64 %n) {
  %_n2059 = alloca i64
  store i64 %n, i64* %_n2059
  %_2060 = load i64, i64* %_n2059
  %_2061 = icmp eq i64 %_2060, 0
  br i1 %_2061, label %_if2062, label %_else2063
_if2062:
  ret i64 0
_else2063:
  %_2065 = load i64, i64* %_n2059
  %_2066 = icmp eq i64 %_2065, 1
  br i1 %_2066, label %_if2067, label %_else2068
_if2067:
  ret i64 1
_else2068:
  %_2070 = load i64, i64* %_n2059
  %_2071 = sub i64 %_2070, 1
  %_2072 = call i64 @fibR(i64 %_2071)
  %_2073 = load i64, i64* %_n2059
  %_2074 = sub i64 %_2073, 2
  %_2075 = call i64 @fibR(i64 %_2074)
  %_2076 = add i64 %_2072, %_2075
  ret i64 %_2076
}

define i64 @fibI(i64 %n) {
  %_2028 = alloca i64
  %_2029 = alloca i64
  %_2049 = alloca i64
  %_n2027 = alloca i64
  store i64 %n, i64* %_n2027
  store i64 0, i64* %_2028
  store i64 1, i64* %_2029
  %_2030 = load i64, i64* %_n2027
  %_2031 = icmp eq i64 %_2030, 0
  br i1 %_2031, label %_if2032, label %_else2033
_if2032:
  %_2035 = load i64, i64* %_2028
  ret i64 %_2035
_else2033:
  %_2036 = load i64, i64* %_n2027
  %_2037 = icmp eq i64 %_2036, 1
  br i1 %_2037, label %_if2038, label %_else2039
_if2038:
  %_2041 = load i64, i64* %_2029
  ret i64 %_2041
_else2039:
  br label %_cnd2045
_cnd2045:
  %_2042 = load i64, i64* %_n2027
  %_2043 = sub i64 %_2042, 2
  %_2044 = icmp sgt i64 %_2043, 0
  br i1 %_2044, label %_loop2047, label %_end2046
_loop2047:
  %_2048 = load i64, i64* %_2029
  store i64 %_2048, i64* %_2049
  %_2050 = load i64, i64* %_2029
  %_2051 = load i64, i64* %_2028
  %_2052 = add i64 %_2050, %_2051
  store i64 %_2052, i64* %_2029
  %_2053 = load i64, i64* %_2049
  store i64 %_2053, i64* %_2028
  %_2054 = load i64, i64* %_n2027
  %_2055 = sub i64 %_2054, 1
  store i64 %_2055, i64* %_n2027
  br label %_cnd2045
_end2046:
  %_2056 = load i64, i64* %_2028
  %_2057 = load i64, i64* %_2029
  %_2058 = add i64 %_2056, %_2057
  ret i64 %_2058
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2017 = alloca i64
  %_argv2016 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2016
  %_argc2015 = alloca i64
  store i64 %argc, i64* %_argc2015
  store i64 1, i64* %_2017
  %_2018 = call i64 @fibR(i64 12)
  %_2019 = icmp eq i64 %_2018, 144
  %_2020 = call i64 @fibI(i64 12)
  %_2021 = icmp eq i64 %_2020, 144
  %_2022 = and i1 %_2019, %_2021
  br i1 %_2022, label %_if2023, label %_else2024
_if2023:
  store i64 0, i64* %_2017
  br label %_else2024
_else2024:
  %_2026 = load i64, i64* %_2017
  ret i64 %_2026
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
