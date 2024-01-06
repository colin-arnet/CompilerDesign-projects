; generated from: oatprograms/easyrun9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_101 = alloca { i64, [0 x i64] }*
  %_102 = alloca i64
  %_103 = alloca i64
  %_argv94 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv94
  %_argc93 = alloca i64
  store i64 %argc, i64* %_argc93
  %_raw_array95 = call i64* @oat_alloc_array(i64 4)
  %_array96 = bitcast i64* %_raw_array95 to { i64, [0 x i64] }*
  %_100 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array96, i32 0, i32 1, i32 3
  store i64 4, i64* %_100
  %_99 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array96, i32 0, i32 1, i32 2
  store i64 3, i64* %_99
  %_98 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array96, i32 0, i32 1, i32 1
  store i64 2, i64* %_98
  %_97 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array96, i32 0, i32 1, i32 0
  store i64 1, i64* %_97
  store { i64, [0 x i64] }* %_array96, { i64, [0 x i64] }** %_101
  store i64 0, i64* %_102
  store i64 0, i64* %_103
  br label %_cnd106
_cnd106:
  %_104 = load i64, i64* %_103
  %_105 = icmp slt i64 %_104, 4
  br i1 %_105, label %_loop108, label %_end107
_loop108:
  %_109 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_101
  %_110 = load i64, i64* %_103
  %_113 = bitcast { i64, [0 x i64] }* %_109 to i64*
  %_111 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_109, i32 0, i32 1, i64 %_110
  %_112 = load i64, i64* %_111
  %_114 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_101
  %_115 = load i64, i64* %_103
  %_118 = bitcast { i64, [0 x i64] }* %_114 to i64*
  %_116 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_114, i32 0, i32 1, i64 %_115
  %_117 = load i64, i64* %_116
  %_119 = xor i64 %_117, -1
  %_120 = mul i64 %_112, %_119
  store i64 %_120, i64* %_102
  %_121 = load i64, i64* %_103
  %_122 = add i64 %_121, 1
  store i64 %_122, i64* %_103
  br label %_cnd106
_end107:
  %_123 = load i64, i64* %_102
  ret i64 %_123
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
