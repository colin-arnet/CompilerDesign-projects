; generated from: oatprograms/run3.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argv867 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv867
  %_argc866 = alloca i64
  store i64 %argc, i64* %_argc866
  %_raw_array868 = call i64* @oat_alloc_array(i64 2)
  %_array869 = bitcast i64* %_raw_array868 to { i64, [0 x i64] }*
  %_871 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array869, i32 0, i32 1, i32 1
  store i64 2, i64* %_871
  %_870 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array869, i32 0, i32 1, i32 0
  store i64 1, i64* %_870
  store { i64, [0 x i64] }* %_array869, { i64, [0 x i64] }** @arr
  %_872 = load { i64, [0 x i64] }, { i64, [0 x i64] }* @arr
  %_875 = bitcast { i64, [0 x i64] }* %_872 to i64*
  %_873 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_872, i32 1, i32 1
  %_874 = load i64, i64* %_873
  ret i64 %_874
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
