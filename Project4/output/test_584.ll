; generated from: oatprograms/arrayargs.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_b270 = alloca i1
  store i1 %b, i1* %_b270
  %_y269 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y269
  %_x268 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x268
  %_271 = load i1, i1* %_b270
  br i1 %_271, label %_if272, label %_else273
_if272:
  %_275 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x268
  ret { i64, [0 x i64] }* %_275
_else273:
  %_276 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y269
  ret { i64, [0 x i64] }* %_276
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_231 = alloca { i64, [0 x i64] }*
  %_232 = alloca i64
  %_246 = alloca { i64, [0 x i64] }*
  %_247 = alloca i64
  %_argv228 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv228
  %_argc227 = alloca i64
  store i64 %argc, i64* %_argc227
  %_raw_array229 = call i64* @oat_alloc_array(i64 3)
  %_array230 = bitcast i64* %_raw_array229 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array230, { i64, [0 x i64] }** %_231
  store i64 0, i64* %_232
  br label %_cnd235
_cnd235:
  %_233 = load i64, i64* %_232
  %_234 = icmp slt i64 %_233, 3
  br i1 %_234, label %_loop237, label %_end236
_loop237:
  %_238 = load i64, i64* %_232
  %_239 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_231
  %_240 = load i64, i64* %_232
  %_241 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_239, i32 0, i32 1, i64 %_240
  store i64 %_238, i64* %_241
  %_242 = load i64, i64* %_232
  %_243 = add i64 %_242, 1
  store i64 %_243, i64* %_232
  br label %_cnd235
_end236:
  %_raw_array244 = call i64* @oat_alloc_array(i64 3)
  %_array245 = bitcast i64* %_raw_array244 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array245, { i64, [0 x i64] }** %_246
  store i64 0, i64* %_247
  br label %_cnd250
_cnd250:
  %_248 = load i64, i64* %_247
  %_249 = icmp slt i64 %_248, 3
  br i1 %_249, label %_loop252, label %_end251
_loop252:
  %_253 = load i64, i64* %_247
  %_254 = add i64 %_253, 3
  %_255 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_246
  %_256 = load i64, i64* %_247
  %_257 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_255, i32 0, i32 1, i64 %_256
  store i64 %_254, i64* %_257
  %_258 = load i64, i64* %_247
  %_259 = add i64 %_258, 1
  store i64 %_259, i64* %_247
  br label %_cnd250
_end251:
  %_261 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_246
  %_260 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_231
  %_262 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_260, { i64, [0 x i64] }* %_261, i1 1)
  %_263 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_262, i32 0, i32 1, i32 0
  store i64 17, i64* %_263
  %_264 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_231
  %_267 = bitcast { i64, [0 x i64] }* %_264 to i64*
  %_265 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_264, i32 0, i32 1, i32 0
  %_266 = load i64, i64* %_265
  ret i64 %_266
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
