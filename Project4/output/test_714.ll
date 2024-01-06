; generated from: oatprograms/run9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_967 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_argv954 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv954
  %_argc953 = alloca i64
  store i64 %argc, i64* %_argc953
  %_raw_array955 = call i64* @oat_alloc_array(i64 2)
  %_array956 = bitcast i64* %_raw_array955 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array961 = call i64* @oat_alloc_array(i64 2)
  %_array962 = bitcast i64* %_raw_array961 to { i64, [0 x i64] }*
  %_964 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array962, i32 0, i32 1, i32 1
  store i64 4, i64* %_964
  %_963 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array962, i32 0, i32 1, i32 0
  store i64 3, i64* %_963
  %_raw_array957 = call i64* @oat_alloc_array(i64 2)
  %_array958 = bitcast i64* %_raw_array957 to { i64, [0 x i64] }*
  %_960 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array958, i32 0, i32 1, i32 1
  store i64 2, i64* %_960
  %_959 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array958, i32 0, i32 1, i32 0
  store i64 1, i64* %_959
  %_966 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array956, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array962, { i64, [0 x i64] }** %_966
  %_965 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array956, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array958, { i64, [0 x i64] }** %_965
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array956, { i64, [0 x { i64, [0 x i64] }*] }** %_967
  %_968 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_967
  %_971 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_968 to i64*
  %_969 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_968, i32 0, i32 1, i32 1
  %_970 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_969
  %_974 = bitcast { i64, [0 x i64] }* %_970 to i64*
  %_972 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_970, i32 0, i32 1, i32 1
  %_973 = load i64, i64* %_972
  ret i64 %_973
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
