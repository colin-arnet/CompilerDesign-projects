; generated from: oatprograms/run25.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1135 = alloca { i64, [0 x i64] }*
  %_1138 = alloca i8*
  %_argv1129 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1129
  %_argc1128 = alloca i64
  store i64 %argc, i64* %_argc1128
  %_raw_array1130 = call i64* @oat_alloc_array(i64 3)
  %_array1131 = bitcast i64* %_raw_array1130 to { i64, [0 x i64] }*
  %_1134 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1131, i32 0, i32 1, i32 2
  store i64 110, i64* %_1134
  %_1133 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1131, i32 0, i32 1, i32 1
  store i64 110, i64* %_1133
  %_1132 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1131, i32 0, i32 1, i32 0
  store i64 110, i64* %_1132
  store { i64, [0 x i64] }* %_array1131, { i64, [0 x i64] }** %_1135
  %_1136 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1135
  %_1137 = call i8* @string_of_array({ i64, [0 x i64] }* %_1136)
  store i8* %_1137, i8** %_1138
  %_1139 = load i8*, i8** %_1138
  call void @print_string(i8* %_1139)
  ret i64 0
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
