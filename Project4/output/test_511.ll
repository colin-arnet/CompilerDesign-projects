; generated from: oatprograms/run7.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argv930 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv930
  %_argc929 = alloca i64
  store i64 %argc, i64* %_argc929
  %_raw_array931 = call i64* @oat_alloc_array(i64 3)
  %_array932 = bitcast i64* %_raw_array931 to { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*
  %_raw_array951 = call i64* @oat_alloc_array(i64 2)
  %_array952 = bitcast i64* %_raw_array951 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array957 = call i64* @oat_alloc_array(i64 2)
  %_array958 = bitcast i64* %_raw_array957 to { i64, [0 x i64] }*
  %_960 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array958, i32 0, i32 1, i32 1
  store i64 40, i64* %_960
  %_959 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array958, i32 0, i32 1, i32 0
  store i64 30, i64* %_959
  %_raw_array953 = call i64* @oat_alloc_array(i64 2)
  %_array954 = bitcast i64* %_raw_array953 to { i64, [0 x i64] }*
  %_956 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array954, i32 0, i32 1, i32 1
  store i64 20, i64* %_956
  %_955 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array954, i32 0, i32 1, i32 0
  store i64 10, i64* %_955
  %_962 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array952, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array958, { i64, [0 x i64] }** %_962
  %_961 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array952, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array954, { i64, [0 x i64] }** %_961
  %_raw_array945 = call i64* @oat_alloc_array(i64 1)
  %_array946 = bitcast i64* %_raw_array945 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array947 = call i64* @oat_alloc_array(i64 1)
  %_array948 = bitcast i64* %_raw_array947 to { i64, [0 x i64] }*
  %_949 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array948, i32 0, i32 1, i32 0
  store i64 5, i64* %_949
  %_950 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array946, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array948, { i64, [0 x i64] }** %_950
  %_raw_array933 = call i64* @oat_alloc_array(i64 2)
  %_array934 = bitcast i64* %_raw_array933 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array939 = call i64* @oat_alloc_array(i64 2)
  %_array940 = bitcast i64* %_raw_array939 to { i64, [0 x i64] }*
  %_942 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array940, i32 0, i32 1, i32 1
  store i64 4, i64* %_942
  %_941 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array940, i32 0, i32 1, i32 0
  store i64 3, i64* %_941
  %_raw_array935 = call i64* @oat_alloc_array(i64 2)
  %_array936 = bitcast i64* %_raw_array935 to { i64, [0 x i64] }*
  %_938 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array936, i32 0, i32 1, i32 1
  store i64 2, i64* %_938
  %_937 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array936, i32 0, i32 1, i32 0
  store i64 1, i64* %_937
  %_944 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array934, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array940, { i64, [0 x i64] }** %_944
  %_943 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array934, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array936, { i64, [0 x i64] }** %_943
  %_965 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array932, i32 0, i32 1, i32 2
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array952, { i64, [0 x { i64, [0 x i64] }*] }** %_965
  %_964 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array932, i32 0, i32 1, i32 1
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array946, { i64, [0 x { i64, [0 x i64] }*] }** %_964
  %_963 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array932, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array934, { i64, [0 x { i64, [0 x i64] }*] }** %_963
  store { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array932, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_966 = load { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* @arr
  %_969 = bitcast { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_966 to i64*
  %_967 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_966, i32 1, i32 2
  %_968 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_967
  %_972 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_968 to i64*
  %_970 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_968, i32 0, i32 1, i32 0
  %_971 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_970
  %_975 = bitcast { i64, [0 x i64] }* %_971 to i64*
  %_973 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_971, i32 0, i32 1, i32 1
  %_974 = load i64, i64* %_973
  ret i64 %_974
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
