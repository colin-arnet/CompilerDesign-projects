; generated from: oatprograms/maxsubsequence.oat
target triple = "x86_64-unknown-linux"
define i64 @maxsum({ i64, [0 x i64] }* %arr, i64 %size) {
  %_4957 = alloca { i64, [0 x i64] }*
  %_4958 = alloca i64
  %_4965 = alloca i64
  %_4972 = alloca i64
  %_size4953 = alloca i64
  store i64 %size, i64* %_size4953
  %_arr4952 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr4952
  %_4954 = load i64, i64* %_size4953
  %_raw_array4955 = call i64* @oat_alloc_array(i64 %_4954)
  %_array4956 = bitcast i64* %_raw_array4955 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4956, { i64, [0 x i64] }** %_4957
  store i64 0, i64* %_4958
  %_4959 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4952
  %_4962 = bitcast { i64, [0 x i64] }* %_4959 to i64*
  %_4960 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4959, i32 0, i32 1, i32 0
  %_4961 = load i64, i64* %_4960
  %_4963 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4957
  %_4964 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4963, i32 0, i32 1, i32 0
  store i64 %_4961, i64* %_4964
  store i64 0, i64* %_4965
  br label %_cnd4969
_cnd4969:
  %_4966 = load i64, i64* %_4965
  %_4967 = load i64, i64* %_size4953
  %_4968 = icmp slt i64 %_4966, %_4967
  br i1 %_4968, label %_loop4971, label %_end4970
_loop4971:
  store i64 0, i64* %_4972
  br label %_cnd4976
_cnd4976:
  %_4973 = load i64, i64* %_4972
  %_4974 = load i64, i64* %_4965
  %_4975 = icmp slt i64 %_4973, %_4974
  br i1 %_4975, label %_loop4978, label %_end4977
_loop4978:
  %_4979 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4952
  %_4980 = load i64, i64* %_4965
  %_4983 = bitcast { i64, [0 x i64] }* %_4979 to i64*
  %_4981 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4979, i32 0, i32 1, i64 %_4980
  %_4982 = load i64, i64* %_4981
  %_4984 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4952
  %_4985 = load i64, i64* %_4972
  %_4988 = bitcast { i64, [0 x i64] }* %_4984 to i64*
  %_4986 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4984, i32 0, i32 1, i64 %_4985
  %_4987 = load i64, i64* %_4986
  %_4989 = icmp sgt i64 %_4982, %_4987
  %_4990 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4957
  %_4991 = load i64, i64* %_4965
  %_4994 = bitcast { i64, [0 x i64] }* %_4990 to i64*
  %_4992 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4990, i32 0, i32 1, i64 %_4991
  %_4993 = load i64, i64* %_4992
  %_4995 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4957
  %_4996 = load i64, i64* %_4972
  %_4999 = bitcast { i64, [0 x i64] }* %_4995 to i64*
  %_4997 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4995, i32 0, i32 1, i64 %_4996
  %_4998 = load i64, i64* %_4997
  %_5000 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4952
  %_5001 = load i64, i64* %_4965
  %_5004 = bitcast { i64, [0 x i64] }* %_5000 to i64*
  %_5002 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5000, i32 0, i32 1, i64 %_5001
  %_5003 = load i64, i64* %_5002
  %_5005 = add i64 %_4998, %_5003
  %_5006 = icmp slt i64 %_4993, %_5005
  %_5007 = and i1 %_4989, %_5006
  br i1 %_5007, label %_if5008, label %_else5009
_if5008:
  %_5011 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4957
  %_5012 = load i64, i64* %_4972
  %_5015 = bitcast { i64, [0 x i64] }* %_5011 to i64*
  %_5013 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5011, i32 0, i32 1, i64 %_5012
  %_5014 = load i64, i64* %_5013
  %_5016 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4952
  %_5017 = load i64, i64* %_4965
  %_5020 = bitcast { i64, [0 x i64] }* %_5016 to i64*
  %_5018 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5016, i32 0, i32 1, i64 %_5017
  %_5019 = load i64, i64* %_5018
  %_5021 = add i64 %_5014, %_5019
  %_5022 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4957
  %_5023 = load i64, i64* %_4965
  %_5024 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5022, i32 0, i32 1, i64 %_5023
  store i64 %_5021, i64* %_5024
  br label %_else5009
_else5009:
  %_5025 = load i64, i64* %_4972
  %_5026 = add i64 %_5025, 1
  store i64 %_5026, i64* %_4972
  br label %_cnd4976
_end4977:
  %_5027 = load i64, i64* %_4958
  %_5028 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4957
  %_5029 = load i64, i64* %_4965
  %_5032 = bitcast { i64, [0 x i64] }* %_5028 to i64*
  %_5030 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5028, i32 0, i32 1, i64 %_5029
  %_5031 = load i64, i64* %_5030
  %_5033 = icmp slt i64 %_5027, %_5031
  br i1 %_5033, label %_if5034, label %_else5035
_if5034:
  %_5037 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4957
  %_5038 = load i64, i64* %_4965
  %_5041 = bitcast { i64, [0 x i64] }* %_5037 to i64*
  %_5039 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5037, i32 0, i32 1, i64 %_5038
  %_5040 = load i64, i64* %_5039
  store i64 %_5040, i64* %_4958
  br label %_else5035
_else5035:
  %_5042 = load i64, i64* %_4965
  %_5043 = add i64 %_5042, 1
  store i64 %_5043, i64* %_4965
  br label %_cnd4969
_end4970:
  %_5044 = load i64, i64* %_4958
  ret i64 %_5044
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_4947 = alloca { i64, [0 x i64] }*
  %_4950 = alloca i64
  %_argv4937 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4937
  %_argc4936 = alloca i64
  store i64 %argc, i64* %_argc4936
  %_raw_array4938 = call i64* @oat_alloc_array(i64 7)
  %_array4939 = bitcast i64* %_raw_array4938 to { i64, [0 x i64] }*
  %_4946 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4939, i32 0, i32 1, i32 6
  store i64 5, i64* %_4946
  %_4945 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4939, i32 0, i32 1, i32 5
  store i64 4, i64* %_4945
  %_4944 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4939, i32 0, i32 1, i32 4
  store i64 101, i64* %_4944
  %_4943 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4939, i32 0, i32 1, i32 3
  store i64 3, i64* %_4943
  %_4942 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4939, i32 0, i32 1, i32 2
  store i64 2, i64* %_4942
  %_4941 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4939, i32 0, i32 1, i32 1
  store i64 101, i64* %_4941
  %_4940 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4939, i32 0, i32 1, i32 0
  store i64 1, i64* %_4940
  store { i64, [0 x i64] }* %_array4939, { i64, [0 x i64] }** %_4947
  %_4948 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4947
  %_4949 = call i64 @maxsum({ i64, [0 x i64] }* %_4948, i64 7)
  store i64 %_4949, i64* %_4950
  %_4951 = load i64, i64* %_4950
  ret i64 %_4951
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
