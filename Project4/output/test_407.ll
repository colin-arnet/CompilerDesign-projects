; generated from: oatprograms/run6.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_921 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_argv908 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv908
  %_argc907 = alloca i64
  store i64 %argc, i64* %_argc907
  %_raw_array909 = call i64* @oat_alloc_array(i64 2)
  %_array910 = bitcast i64* %_raw_array909 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array915 = call i64* @oat_alloc_array(i64 2)
  %_array916 = bitcast i64* %_raw_array915 to { i64, [0 x i64] }*
  %_918 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array916, i32 0, i32 1, i32 1
  store i64 4, i64* %_918
  %_917 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array916, i32 0, i32 1, i32 0
  store i64 3, i64* %_917
  %_raw_array911 = call i64* @oat_alloc_array(i64 2)
  %_array912 = bitcast i64* %_raw_array911 to { i64, [0 x i64] }*
  %_914 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array912, i32 0, i32 1, i32 1
  store i64 2, i64* %_914
  %_913 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array912, i32 0, i32 1, i32 0
  store i64 1, i64* %_913
  %_920 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array910, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array916, { i64, [0 x i64] }** %_920
  %_919 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array910, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array912, { i64, [0 x i64] }** %_919
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array910, { i64, [0 x { i64, [0 x i64] }*] }** %_921
  %_922 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_921
  %_925 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_922 to i64*
  %_923 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_922, i32 0, i32 1, i32 0
  %_924 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_923
  %_928 = bitcast { i64, [0 x i64] }* %_924 to i64*
  %_926 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_924, i32 0, i32 1, i32 0
  %_927 = load i64, i64* %_926
  ret i64 %_927
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
