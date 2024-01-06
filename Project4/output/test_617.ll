; generated from: oatprograms/run11.oat
target triple = "x86_64-unknown-linux"
@i = global i64 1

define i64 @f({ i64, [0 x i64] }* %arr) {
  %_arr1086 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr1086
  %_1087 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1086
  %_1090 = bitcast { i64, [0 x i64] }* %_1087 to i64*
  %_1088 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1087, i32 0, i32 1, i32 3
  %_1089 = load i64, i64* %_1088
  ret i64 %_1089
}

define { i64, [0 x i64] }* @g() {
  %_1084 = alloca { i64, [0 x i64] }*
  %_raw_array1078 = call i64* @oat_alloc_array(i64 4)
  %_array1079 = bitcast i64* %_raw_array1078 to { i64, [0 x i64] }*
  %_1083 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1079, i32 0, i32 1, i32 3
  store i64 99, i64* %_1083
  %_1082 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1079, i32 0, i32 1, i32 2
  store i64 99, i64* %_1082
  %_1081 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1079, i32 0, i32 1, i32 1
  store i64 1, i64* %_1081
  %_1080 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1079, i32 0, i32 1, i32 0
  store i64 99, i64* %_1080
  store { i64, [0 x i64] }* %_array1079, { i64, [0 x i64] }** %_1084
  %_1085 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1084
  ret { i64, [0 x i64] }* %_1085
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1011 = alloca { i64, [0 x i64] }*
  %_1032 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_1033 = alloca i64
  %_1035 = alloca { i64, [0 x i64] }*
  %_1042 = alloca { i64, [0 x i64] }*
  %_argv1005 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1005
  %_argc1004 = alloca i64
  store i64 %argc, i64* %_argc1004
  %_raw_array1006 = call i64* @oat_alloc_array(i64 3)
  %_array1007 = bitcast i64* %_raw_array1006 to { i64, [0 x i64] }*
  %_1010 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1007, i32 0, i32 1, i32 2
  store i64 99, i64* %_1010
  %_1009 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1007, i32 0, i32 1, i32 1
  store i64 1, i64* %_1009
  %_1008 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1007, i32 0, i32 1, i32 0
  store i64 99, i64* %_1008
  store { i64, [0 x i64] }* %_array1007, { i64, [0 x i64] }** %_1011
  %_raw_array1012 = call i64* @oat_alloc_array(i64 3)
  %_array1013 = bitcast i64* %_raw_array1012 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1024 = call i64* @oat_alloc_array(i64 3)
  %_array1025 = bitcast i64* %_raw_array1024 to { i64, [0 x i64] }*
  %_1028 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1025, i32 0, i32 1, i32 2
  store i64 99, i64* %_1028
  %_1027 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1025, i32 0, i32 1, i32 1
  store i64 99, i64* %_1027
  %_1026 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1025, i32 0, i32 1, i32 0
  store i64 99, i64* %_1026
  %_raw_array1019 = call i64* @oat_alloc_array(i64 3)
  %_array1020 = bitcast i64* %_raw_array1019 to { i64, [0 x i64] }*
  %_1023 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1020, i32 0, i32 1, i32 2
  store i64 99, i64* %_1023
  %_1022 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1020, i32 0, i32 1, i32 1
  store i64 1, i64* %_1022
  %_1021 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1020, i32 0, i32 1, i32 0
  store i64 99, i64* %_1021
  %_raw_array1014 = call i64* @oat_alloc_array(i64 3)
  %_array1015 = bitcast i64* %_raw_array1014 to { i64, [0 x i64] }*
  %_1018 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1015, i32 0, i32 1, i32 2
  store i64 99, i64* %_1018
  %_1017 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1015, i32 0, i32 1, i32 1
  store i64 99, i64* %_1017
  %_1016 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1015, i32 0, i32 1, i32 0
  store i64 99, i64* %_1016
  %_1031 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1013, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1025, { i64, [0 x i64] }** %_1031
  %_1030 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1013, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1020, { i64, [0 x i64] }** %_1030
  %_1029 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1013, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1015, { i64, [0 x i64] }** %_1029
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1013, { i64, [0 x { i64, [0 x i64] }*] }** %_1032
  store i64 1, i64* %_1033
  %_1034 = call { i64, [0 x i64] }* @g()
  store { i64, [0 x i64] }* %_1034, { i64, [0 x i64] }** %_1035
  %_raw_array1036 = call i64* @oat_alloc_array(i64 4)
  %_array1037 = bitcast i64* %_raw_array1036 to { i64, [0 x i64] }*
  %_1041 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1037, i32 0, i32 1, i32 3
  store i64 1, i64* %_1041
  %_1040 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1037, i32 0, i32 1, i32 2
  store i64 99, i64* %_1040
  %_1039 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1037, i32 0, i32 1, i32 1
  store i64 99, i64* %_1039
  %_1038 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1037, i32 0, i32 1, i32 0
  store i64 99, i64* %_1038
  store { i64, [0 x i64] }* %_array1037, { i64, [0 x i64] }** %_1042
  %_1043 = load i64, i64* %_1033
  %_1044 = load i64, i64* @i
  %_1045 = add i64 %_1043, %_1044
  store i64 %_1045, i64* %_1033
  %_1046 = load i64, i64* %_1033
  %_1047 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1011
  %_1050 = bitcast { i64, [0 x i64] }* %_1047 to i64*
  %_1048 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1047, i32 0, i32 1, i32 1
  %_1049 = load i64, i64* %_1048
  %_1051 = add i64 %_1046, %_1049
  store i64 %_1051, i64* %_1033
  %_1052 = load i64, i64* %_1033
  %_1053 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1032
  %_1056 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_1053 to i64*
  %_1054 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_1053, i32 0, i32 1, i32 1
  %_1055 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1054
  %_1059 = bitcast { i64, [0 x i64] }* %_1055 to i64*
  %_1057 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1055, i32 0, i32 1, i32 1
  %_1058 = load i64, i64* %_1057
  %_1060 = add i64 %_1052, %_1058
  store i64 %_1060, i64* %_1033
  %_1061 = load i64, i64* %_1033
  %_1062 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1042
  %_1065 = bitcast { i64, [0 x i64] }* %_1062 to i64*
  %_1063 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1062, i32 0, i32 1, i32 3
  %_1064 = load i64, i64* %_1063
  %_1066 = add i64 %_1061, %_1064
  store i64 %_1066, i64* %_1033
  %_1067 = load i64, i64* %_1033
  %_1068 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1042
  %_1069 = call i64 @f({ i64, [0 x i64] }* %_1068)
  %_1070 = add i64 %_1067, %_1069
  store i64 %_1070, i64* %_1033
  %_1071 = load i64, i64* %_1033
  %_1072 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1035
  %_1075 = bitcast { i64, [0 x i64] }* %_1072 to i64*
  %_1073 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1072, i32 0, i32 1, i32 1
  %_1074 = load i64, i64* %_1073
  %_1076 = add i64 %_1071, %_1074
  store i64 %_1076, i64* %_1033
  %_1077 = load i64, i64* %_1033
  ret i64 %_1077
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
