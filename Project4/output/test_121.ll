; generated from: oatprograms/run25.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1134 = alloca { i64, [0 x i64] }*
  %_1137 = alloca i8*
  %_argv1128 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1128
  %_argc1127 = alloca i64
  store i64 %argc, i64* %_argc1127
  %_raw_array1129 = call i64* @oat_alloc_array(i64 3)
  %_array1130 = bitcast i64* %_raw_array1129 to { i64, [0 x i64] }*
  %_1133 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1130, i32 0, i32 1, i32 2
  store i64 110, i64* %_1133
  %_1132 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1130, i32 0, i32 1, i32 1
  store i64 110, i64* %_1132
  %_1131 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1130, i32 0, i32 1, i32 0
  store i64 110, i64* %_1131
  store { i64, [0 x i64] }* %_array1130, { i64, [0 x i64] }** %_1134
  %_1135 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1134
  %_1136 = call i8* @string_of_array({ i64, [0 x i64] }* %_1134)
  store i8* %_1136, i8** %_1137
  %_1138 = load i8*, i8** %_1137
  call void @print_string(i8* %_1137)
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
