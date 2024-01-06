; generated from: oatprograms/run47.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1

define i64 @f() {
  %_1947 = load i64, i64* @a
  %_1948 = add i64 %_1947, 1
  store i64 %_1948, i64* @a
  %_1949 = load i64, i64* @a
  ret i64 %_1949
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1931 = alloca { i64, [0 x i64] }*
  %_argv1927 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1927
  %_argc1926 = alloca i64
  store i64 %argc, i64* %_argc1926
  %_1928 = call i64 @f()
  %_raw_array1929 = call i64* @oat_alloc_array(i64 %_1928)
  %_array1930 = bitcast i64* %_raw_array1929 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1930, { i64, [0 x i64] }** %_1931
  %_1932 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1931
  %_1933 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1932, i32 0, i32 1, i32 0
  store i64 0, i64* %_1933
  %_1934 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1931
  %_1935 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1934, i32 0, i32 1, i32 1
  store i64 1, i64* %_1935
  %_1936 = load i64, i64* @a
  %_1937 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1931
  %_1940 = bitcast { i64, [0 x i64] }* %_1937 to i64*
  %_1938 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1937, i32 0, i32 1, i32 0
  %_1939 = load i64, i64* %_1938
  %_1941 = add i64 %_1936, %_1939
  %_1942 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1931
  %_1945 = bitcast { i64, [0 x i64] }* %_1942 to i64*
  %_1943 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1942, i32 0, i32 1, i32 1
  %_1944 = load i64, i64* %_1943
  %_1946 = add i64 %_1941, %_1944
  ret i64 %_1946
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
