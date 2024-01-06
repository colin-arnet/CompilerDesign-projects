; generated from: oatprograms/run6.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_896 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_argv883 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv883
  %_argc882 = alloca i64
  store i64 %argc, i64* %_argc882
  %_raw_array884 = call i64* @oat_alloc_array(i64 2)
  %_array885 = bitcast i64* %_raw_array884 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array890 = call i64* @oat_alloc_array(i64 2)
  %_array891 = bitcast i64* %_raw_array890 to { i64, [0 x i64] }*
  %_893 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array891, i32 0, i32 1, i32 1
  store i64 4, i64* %_893
  %_892 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array891, i32 0, i32 1, i32 0
  store i64 3, i64* %_892
  %_raw_array886 = call i64* @oat_alloc_array(i64 2)
  %_array887 = bitcast i64* %_raw_array886 to { i64, [0 x i64] }*
  %_889 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array887, i32 0, i32 1, i32 1
  store i64 2, i64* %_889
  %_888 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array887, i32 0, i32 1, i32 0
  store i64 1, i64* %_888
  %_895 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array885, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array891, { i64, [0 x i64] }** %_895
  %_894 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array885, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array887, { i64, [0 x i64] }** %_894
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array885, { i64, [0 x { i64, [0 x i64] }*] }** %_896
  %_897 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_896
  %_900 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_897 to i64*
  %_898 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_897, i32 0, i32 1, i32 0
  %_899 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_898
  %_903 = bitcast { i64, [0 x i64] }* %_899 to i64*
  %_901 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_899, i32 0, i32 1, i32 0
  %_902 = load i64, i64* %_901
  ret i64 %_902
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
