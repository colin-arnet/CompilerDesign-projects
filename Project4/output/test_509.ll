; generated from: oatprograms/run5.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argv887 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv887
  %_argc886 = alloca i64
  store i64 %argc, i64* %_argc886
  %_raw_array888 = call i64* @oat_alloc_array(i64 2)
  %_array889 = bitcast i64* %_raw_array888 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array894 = call i64* @oat_alloc_array(i64 2)
  %_array895 = bitcast i64* %_raw_array894 to { i64, [0 x i64] }*
  %_897 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array895, i32 0, i32 1, i32 1
  store i64 4, i64* %_897
  %_896 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array895, i32 0, i32 1, i32 0
  store i64 3, i64* %_896
  %_raw_array890 = call i64* @oat_alloc_array(i64 2)
  %_array891 = bitcast i64* %_raw_array890 to { i64, [0 x i64] }*
  %_893 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array891, i32 0, i32 1, i32 1
  store i64 2, i64* %_893
  %_892 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array891, i32 0, i32 1, i32 0
  store i64 1, i64* %_892
  %_899 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array889, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array895, { i64, [0 x i64] }** %_899
  %_898 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array889, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array891, { i64, [0 x i64] }** %_898
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array889, { i64, [0 x { i64, [0 x i64] }*] }** @arr
  %_900 = load { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* @arr
  %_903 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_900 to i64*
  %_901 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_900, i32 1, i32 1
  %_902 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_901
  %_906 = bitcast { i64, [0 x i64] }* %_902 to i64*
  %_904 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_902, i32 0, i32 1, i32 1
  %_905 = load i64, i64* %_904
  ret i64 %_905
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
