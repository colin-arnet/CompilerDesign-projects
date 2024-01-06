; generated from: oatprograms/lib6.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2045 = alloca { i64, [0 x i64] }*
  %_2048 = alloca i8*
  %_2051 = alloca { i64, [0 x i64] }*
  %_2052 = alloca i64
  %_2053 = alloca i64
  %_argv2037 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2037
  %_argc2036 = alloca i64
  store i64 %argc, i64* %_argc2036
  %_raw_array2038 = call i64* @oat_alloc_array(i64 5)
  %_array2039 = bitcast i64* %_raw_array2038 to { i64, [0 x i64] }*
  %_2044 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2039, i32 0, i32 1, i32 4
  store i64 115, i64* %_2044
  %_2043 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2039, i32 0, i32 1, i32 3
  store i64 114, i64* %_2043
  %_2042 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2039, i32 0, i32 1, i32 2
  store i64 113, i64* %_2042
  %_2041 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2039, i32 0, i32 1, i32 1
  store i64 112, i64* %_2041
  %_2040 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2039, i32 0, i32 1, i32 0
  store i64 111, i64* %_2040
  store { i64, [0 x i64] }* %_array2039, { i64, [0 x i64] }** %_2045
  %_2046 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2045
  %_2047 = call i8* @string_of_array({ i64, [0 x i64] }* %_2046)
  store i8* %_2047, i8** %_2048
  %_2049 = load i8*, i8** %_2048
  %_2050 = call { i64, [0 x i64] }* @array_of_string(i8* %_2049)
  store { i64, [0 x i64] }* %_2050, { i64, [0 x i64] }** %_2051
  store i64 0, i64* %_2052
  store i64 0, i64* %_2053
  br label %_cnd2056
_cnd2056:
  %_2054 = load i64, i64* %_2053
  %_2055 = icmp slt i64 %_2054, 5
  br i1 %_2055, label %_loop2058, label %_end2057
_loop2058:
  %_2059 = load i64, i64* %_2052
  %_2060 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2051
  %_2061 = load i64, i64* %_2053
  %_2064 = bitcast { i64, [0 x i64] }* %_2060 to i64*
  %_2062 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2060, i32 0, i32 1, i64 %_2061
  %_2063 = load i64, i64* %_2062
  %_2065 = add i64 %_2059, %_2063
  store i64 %_2065, i64* %_2052
  %_2066 = load i64, i64* %_2053
  %_2067 = add i64 %_2066, 1
  store i64 %_2067, i64* %_2053
  br label %_cnd2056
_end2057:
  %_2068 = load i64, i64* %_2052
  call void @print_int(i64 %_2068)
  %_2070 = load i64, i64* %_2052
  ret i64 %_2070
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
