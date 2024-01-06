; generated from: oatprograms/lib9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2113 = alloca i64
  %_argv2112 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2112
  %_argc2111 = alloca i64
  store i64 %argc, i64* %_argc2111
  store i64 1, i64* %_2113
  br label %_cnd2117
_cnd2117:
  %_2114 = load i64, i64* %_2113
  %_2115 = load i64, i64* %_argc2111
  %_2116 = icmp slt i64 %_2114, %_2115
  br i1 %_2116, label %_loop2119, label %_end2118
_loop2119:
  %_2120 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_argv2112
  %_2121 = load i64, i64* %_2113
  %_2124 = bitcast { i64, [0 x i8*] }* %_2120 to i64*
  %_2122 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_2120, i32 0, i32 1, i64 %_2121
  %_2123 = load i8*, i8** %_2122
  call void @print_string(i8* %_2123)
  %_2126 = load i64, i64* %_2113
  %_2127 = add i64 %_2126, 1
  store i64 %_2127, i64* %_2113
  br label %_cnd2117
_end2118:
  %_2128 = load i64, i64* %_argc2111
  ret i64 %_2128
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
