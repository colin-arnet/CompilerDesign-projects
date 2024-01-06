; generated from: oatprograms/fact.oat
target triple = "x86_64-unknown-linux"
define i64 @fact(i64 %x) {
  %_752 = alloca i64
  %_x751 = alloca i64
  store i64 %x, i64* %_x751
  store i64 1, i64* %_752
  br label %_cnd755
_cnd755:
  %_753 = load i64, i64* %_x751
  %_754 = icmp sgt i64 %_753, 0
  br i1 %_754, label %_loop757, label %_end756
_loop757:
  %_758 = load i64, i64* %_752
  %_759 = load i64, i64* %_x751
  %_760 = mul i64 %_758, %_759
  store i64 %_760, i64* %_752
  %_761 = load i64, i64* %_x751
  %_762 = sub i64 %_761, 1
  store i64 %_762, i64* %_x751
  br label %_cnd755
_end756:
  %_763 = load i64, i64* %_752
  ret i64 %_763
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argv747 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv747
  %_argc746 = alloca i64
  store i64 %argc, i64* %_argc746
  %_748 = call i64 @fact(i64 5)
  %_749 = call i8* @string_of_int(i64 %_748)
  call void @print_string(i8* %_749)
  ret i64 0
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
