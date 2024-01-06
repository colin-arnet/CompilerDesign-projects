; generated from: oatprograms/run4.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argv877 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv877
  %_argc876 = alloca i64
  store i64 %argc, i64* %_argc876
  %_raw_array878 = call i64* @oat_alloc_array(i64 2)
  %_array879 = bitcast i64* %_raw_array878 to { i64, [0 x i64] }*
  %_881 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array879, i32 0, i32 1, i32 1
  store i64 42, i64* %_881
  %_880 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array879, i32 0, i32 1, i32 0
  store i64 17, i64* %_880
  store { i64, [0 x i64] }* %_array879, { i64, [0 x i64] }** @arr
  %_882 = load { i64, [0 x i64] }, { i64, [0 x i64] }* @arr
  %_885 = bitcast { i64, [0 x i64] }* %_882 to i64*
  %_883 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_882, i32 1, i32 1
  %_884 = load i64, i64* %_883
  ret i64 %_884
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
