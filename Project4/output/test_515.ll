; generated from: oatprograms/run11.oat
target triple = "x86_64-unknown-linux"
@i = global i64 1

define i64 @f({ i64, [0 x i64] }* %arr) {
  %_arr1120 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr1120
  %_1121 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1120
  %_1124 = bitcast { i64, [0 x i64] }* %_1121 to i64*
  %_1122 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1121, i32 0, i32 1, i32 3
  %_1123 = load i64, i64* %_1122
  ret i64 %_1123
}

define { i64, [0 x i64] }* @g() {
  %_1118 = alloca { i64, [0 x i64] }*
  %_raw_array1112 = call i64* @oat_alloc_array(i64 4)
  %_array1113 = bitcast i64* %_raw_array1112 to { i64, [0 x i64] }*
  %_1117 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1113, i32 0, i32 1, i32 3
  store i64 99, i64* %_1117
  %_1116 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1113, i32 0, i32 1, i32 2
  store i64 99, i64* %_1116
  %_1115 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1113, i32 0, i32 1, i32 1
  store i64 1, i64* %_1115
  %_1114 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1113, i32 0, i32 1, i32 0
  store i64 99, i64* %_1114
  store { i64, [0 x i64] }* %_array1113, { i64, [0 x i64] }** %_1118
  %_1119 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1118
  ret { i64, [0 x i64] }* %_1119
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1045 = alloca { i64, [0 x i64] }*
  %_1066 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_1067 = alloca i64
  %_1069 = alloca { i64, [0 x i64] }*
  %_1076 = alloca { i64, [0 x i64] }*
  %_argv1039 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1039
  %_argc1038 = alloca i64
  store i64 %argc, i64* %_argc1038
  %_raw_array1040 = call i64* @oat_alloc_array(i64 3)
  %_array1041 = bitcast i64* %_raw_array1040 to { i64, [0 x i64] }*
  %_1044 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1041, i32 0, i32 1, i32 2
  store i64 99, i64* %_1044
  %_1043 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1041, i32 0, i32 1, i32 1
  store i64 1, i64* %_1043
  %_1042 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1041, i32 0, i32 1, i32 0
  store i64 99, i64* %_1042
  store { i64, [0 x i64] }* %_array1041, { i64, [0 x i64] }** %_1045
  %_raw_array1046 = call i64* @oat_alloc_array(i64 3)
  %_array1047 = bitcast i64* %_raw_array1046 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1058 = call i64* @oat_alloc_array(i64 3)
  %_array1059 = bitcast i64* %_raw_array1058 to { i64, [0 x i64] }*
  %_1062 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1059, i32 0, i32 1, i32 2
  store i64 99, i64* %_1062
  %_1061 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1059, i32 0, i32 1, i32 1
  store i64 99, i64* %_1061
  %_1060 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1059, i32 0, i32 1, i32 0
  store i64 99, i64* %_1060
  %_raw_array1053 = call i64* @oat_alloc_array(i64 3)
  %_array1054 = bitcast i64* %_raw_array1053 to { i64, [0 x i64] }*
  %_1057 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1054, i32 0, i32 1, i32 2
  store i64 99, i64* %_1057
  %_1056 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1054, i32 0, i32 1, i32 1
  store i64 1, i64* %_1056
  %_1055 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1054, i32 0, i32 1, i32 0
  store i64 99, i64* %_1055
  %_raw_array1048 = call i64* @oat_alloc_array(i64 3)
  %_array1049 = bitcast i64* %_raw_array1048 to { i64, [0 x i64] }*
  %_1052 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1049, i32 0, i32 1, i32 2
  store i64 99, i64* %_1052
  %_1051 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1049, i32 0, i32 1, i32 1
  store i64 99, i64* %_1051
  %_1050 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1049, i32 0, i32 1, i32 0
  store i64 99, i64* %_1050
  %_1065 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1047, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1059, { i64, [0 x i64] }** %_1065
  %_1064 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1047, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1054, { i64, [0 x i64] }** %_1064
  %_1063 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1047, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1049, { i64, [0 x i64] }** %_1063
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1047, { i64, [0 x { i64, [0 x i64] }*] }** %_1066
  store i64 1, i64* %_1067
  %_1068 = call { i64, [0 x i64] }* @g()
  store { i64, [0 x i64] }* %_1068, { i64, [0 x i64] }** %_1069
  %_raw_array1070 = call i64* @oat_alloc_array(i64 4)
  %_array1071 = bitcast i64* %_raw_array1070 to { i64, [0 x i64] }*
  %_1075 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1071, i32 0, i32 1, i32 3
  store i64 1, i64* %_1075
  %_1074 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1071, i32 0, i32 1, i32 2
  store i64 99, i64* %_1074
  %_1073 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1071, i32 0, i32 1, i32 1
  store i64 99, i64* %_1073
  %_1072 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1071, i32 0, i32 1, i32 0
  store i64 99, i64* %_1072
  store { i64, [0 x i64] }* %_array1071, { i64, [0 x i64] }** %_1076
  %_1077 = load i64, i64* %_1067
  %_1078 = load i64, i64* @i
  %_1079 = add i64 %_1077, %_1078
  store i64 %_1079, i64* %_1067
  %_1080 = load i64, i64* %_1067
  %_1081 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1045
  %_1084 = bitcast { i64, [0 x i64] }* %_1081 to i64*
  %_1082 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1081, i32 0, i32 1, i32 1
  %_1083 = load i64, i64* %_1082
  %_1085 = add i64 %_1080, %_1083
  store i64 %_1085, i64* %_1067
  %_1086 = load i64, i64* %_1067
  %_1087 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1066
  %_1090 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_1087 to i64*
  %_1088 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_1087, i32 0, i32 1, i32 1
  %_1089 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1088
  %_1093 = bitcast { i64, [0 x i64] }* %_1089 to i64*
  %_1091 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1089, i32 0, i32 1, i32 1
  %_1092 = load i64, i64* %_1091
  %_1094 = add i64 %_1086, %_1092
  store i64 %_1094, i64* %_1067
  %_1095 = load i64, i64* %_1067
  %_1096 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1076
  %_1099 = bitcast { i64, [0 x i64] }* %_1096 to i64*
  %_1097 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1096, i32 0, i32 1, i32 3
  %_1098 = load i64, i64* %_1097
  %_1100 = add i64 %_1095, %_1098
  store i64 %_1100, i64* %_1067
  %_1101 = load i64, i64* %_1067
  %_1102 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1076
  %_1103 = call i64 @f({ i64, [0 x i64] }* %_1102)
  %_1104 = add i64 %_1101, %_1103
  store i64 %_1104, i64* %_1067
  %_1105 = load i64, i64* %_1067
  %_1106 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1069
  %_1109 = bitcast { i64, [0 x i64] }* %_1106 to i64*
  %_1107 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1106, i32 0, i32 1, i32 1
  %_1108 = load i64, i64* %_1107
  %_1110 = add i64 %_1105, %_1108
  store i64 %_1110, i64* %_1067
  %_1111 = load i64, i64* %_1067
  ret i64 %_1111
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
