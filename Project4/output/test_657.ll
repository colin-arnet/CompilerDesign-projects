; generated from: oatprograms/josh_joyce_test.oat
target triple = "x86_64-unknown-linux"
@arr1 = global { i64, [4 x i64] }* @_garr4173
@_garr4173 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 4 ] }
@arr2 = global { i64, [4 x i64] }* @_garr4172
@_garr4172 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 5 ] }

define i64 @arrcheck({ i64, [0 x i64] }* %ar1, { i64, [0 x i64] }* %ar2, i64 %len) {
  %_4147 = alloca i64
  %_4148 = alloca i64
  %_len4146 = alloca i64
  store i64 %len, i64* %_len4146
  %_ar24145 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %ar2, { i64, [0 x i64] }** %_ar24145
  %_ar14144 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %ar1, { i64, [0 x i64] }** %_ar14144
  store i64 0, i64* %_4147
  store i64 0, i64* %_4148
  br label %_cnd4152
_cnd4152:
  %_4149 = load i64, i64* %_4148
  %_4150 = load i64, i64* %_len4146
  %_4151 = icmp slt i64 %_4149, %_4150
  br i1 %_4151, label %_loop4154, label %_end4153
_loop4154:
  %_4155 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar14144
  %_4156 = load i64, i64* %_4148
  %_4159 = bitcast { i64, [0 x i64] }* %_4155 to i64*
  %_4157 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4155, i32 0, i32 1, i64 %_4156
  %_4158 = load i64, i64* %_4157
  %_4160 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar24145
  %_4161 = load i64, i64* %_4148
  %_4164 = bitcast { i64, [0 x i64] }* %_4160 to i64*
  %_4162 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4160, i32 0, i32 1, i64 %_4161
  %_4163 = load i64, i64* %_4162
  %_4165 = icmp ne i64 %_4158, %_4163
  br i1 %_4165, label %_if4166, label %_else4167
_if4166:
  store i64 1, i64* %_4147
  br label %_else4167
_else4167:
  %_4169 = load i64, i64* %_4148
  %_4170 = add i64 %_4169, 1
  store i64 %_4170, i64* %_4148
  br label %_cnd4152
_end4153:
  %_4171 = load i64, i64* %_4147
  ret i64 %_4171
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_4133 = alloca i64
  %_argv4132 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4132
  %_argc4131 = alloca i64
  store i64 %argc, i64* %_argc4131
  store i64 1, i64* %_4133
  %_4136 = load { i64, [4 x i64] }*, { i64, [4 x i64] }** @arr2
  %_4137 = bitcast { i64, [4 x i64] }* %_4136 to { i64, [0 x i64] }*
  %_4134 = load { i64, [4 x i64] }*, { i64, [4 x i64] }** @arr1
  %_4135 = bitcast { i64, [4 x i64] }* %_4134 to { i64, [0 x i64] }*
  %_4138 = call i64 @arrcheck({ i64, [0 x i64] }* %_4135, { i64, [0 x i64] }* %_4137, i64 4)
  %_4139 = icmp eq i64 %_4138, 1
  br i1 %_4139, label %_if4140, label %_else4141
_if4140:
  store i64 0, i64* %_4133
  br label %_else4141
_else4141:
  %_4143 = load i64, i64* %_4133
  ret i64 %_4143
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
