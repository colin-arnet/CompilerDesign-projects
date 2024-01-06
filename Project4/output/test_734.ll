; generated from: oatprograms/lib7.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2080 = alloca { i64, [0 x i64] }*
  %_2083 = alloca i8*
  %_2086 = alloca { i64, [0 x i64] }*
  %_2087 = alloca i64
  %_2088 = alloca i64
  %_argv2072 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2072
  %_argc2071 = alloca i64
  store i64 %argc, i64* %_argc2071
  %_raw_array2073 = call i64* @oat_alloc_array(i64 5)
  %_array2074 = bitcast i64* %_raw_array2073 to { i64, [0 x i64] }*
  %_2079 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2074, i32 0, i32 1, i32 4
  store i64 115, i64* %_2079
  %_2078 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2074, i32 0, i32 1, i32 3
  store i64 114, i64* %_2078
  %_2077 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2074, i32 0, i32 1, i32 2
  store i64 113, i64* %_2077
  %_2076 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2074, i32 0, i32 1, i32 1
  store i64 112, i64* %_2076
  %_2075 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2074, i32 0, i32 1, i32 0
  store i64 111, i64* %_2075
  store { i64, [0 x i64] }* %_array2074, { i64, [0 x i64] }** %_2080
  %_2081 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2080
  %_2082 = call i8* @string_of_array({ i64, [0 x i64] }* %_2081)
  store i8* %_2082, i8** %_2083
  %_2084 = load i8*, i8** %_2083
  %_2085 = call { i64, [0 x i64] }* @array_of_string(i8* %_2084)
  store { i64, [0 x i64] }* %_2085, { i64, [0 x i64] }** %_2086
  store i64 0, i64* %_2087
  store i64 0, i64* %_2088
  br label %_cnd2091
_cnd2091:
  %_2089 = load i64, i64* %_2088
  %_2090 = icmp slt i64 %_2089, 5
  br i1 %_2090, label %_loop2093, label %_end2092
_loop2093:
  %_2094 = load i64, i64* %_2087
  %_2095 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2086
  %_2096 = load i64, i64* %_2088
  %_2099 = bitcast { i64, [0 x i64] }* %_2095 to i64*
  %_2097 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2095, i32 0, i32 1, i64 %_2096
  %_2098 = load i64, i64* %_2097
  %_2100 = add i64 %_2094, %_2098
  store i64 %_2100, i64* %_2087
  %_2101 = load i64, i64* %_2088
  %_2102 = add i64 %_2101, 1
  store i64 %_2102, i64* %_2088
  br label %_cnd2091
_end2092:
  %_2103 = load i64, i64* %_2087
  ret i64 %_2103
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
