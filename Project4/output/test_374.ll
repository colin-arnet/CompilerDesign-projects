; generated from: oatprograms/globals7.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] }* @_garr208
@_garr208 = global { i64, [0 x i64] } { i64 0, [0 x i64] [  ] }

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_200 = alloca { i64, [0 x i64] }*
  %_argv197 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv197
  %_argc196 = alloca i64
  store i64 %argc, i64* %_argc196
  %_raw_array198 = call i64* @oat_alloc_array(i64 3)
  %_array199 = bitcast i64* %_raw_array198 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array199, { i64, [0 x i64] }** %_200
  %_201 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_200
  store { i64, [0 x i64] }* %_201, { i64, [0 x i64] }** @arr
  %_202 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_200
  %_203 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_202, i32 0, i32 1, i32 2
  store i64 3, i64* %_203
  %_204 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr
  %_207 = bitcast { i64, [0 x i64] }* %_204 to i64*
  %_205 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_204, i32 0, i32 1, i32 2
  %_206 = load i64, i64* %_205
  ret i64 %_206
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
