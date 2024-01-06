; generated from: oatprograms/insertion_sort.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @insert({ i64, [0 x i64] }* %partial, i64 %len, i64 %insertee) {
  %_4854 = alloca { i64, [0 x i64] }*
  %_4855 = alloca i64
  %_4869 = alloca i1
  %_4882 = alloca i64
  %_insertee4849 = alloca i64
  store i64 %insertee, i64* %_insertee4849
  %_len4848 = alloca i64
  store i64 %len, i64* %_len4848
  %_partial4847 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %partial, { i64, [0 x i64] }** %_partial4847
  %_4850 = load i64, i64* %_len4848
  %_4851 = add i64 %_4850, 1
  %_raw_array4852 = call i64* @oat_alloc_array(i64 %_4851)
  %_array4853 = bitcast i64* %_raw_array4852 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4853, { i64, [0 x i64] }** %_4854
  store i64 0, i64* %_4855
  br label %_cnd4860
_cnd4860:
  %_4856 = load i64, i64* %_4855
  %_4857 = load i64, i64* %_len4848
  %_4858 = add i64 %_4857, 1
  %_4859 = icmp slt i64 %_4856, %_4858
  br i1 %_4859, label %_loop4862, label %_end4861
_loop4862:
  %_4863 = mul i64 1, -1
  %_4864 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4854
  %_4865 = load i64, i64* %_4855
  %_4866 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4864, i32 0, i32 1, i64 %_4865
  store i64 %_4863, i64* %_4866
  %_4867 = load i64, i64* %_4855
  %_4868 = add i64 %_4867, 1
  store i64 %_4868, i64* %_4855
  br label %_cnd4860
_end4861:
  store i1 1, i1* %_4869
  %_4870 = load i64, i64* %_insertee4849
  %_4871 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial4847
  %_4874 = bitcast { i64, [0 x i64] }* %_4871 to i64*
  %_4872 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4871, i32 0, i32 1, i32 0
  %_4873 = load i64, i64* %_4872
  %_4875 = icmp slt i64 %_4870, %_4873
  br i1 %_4875, label %_if4876, label %_else4877
_if4876:
  store i1 0, i1* %_4869
  %_4879 = load i64, i64* %_insertee4849
  %_4880 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4854
  %_4881 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4880, i32 0, i32 1, i32 0
  store i64 %_4879, i64* %_4881
  br label %_else4877
_else4877:
  store i64 0, i64* %_4882
  br label %_cnd4886
_cnd4886:
  %_4883 = load i64, i64* %_4882
  %_4884 = load i64, i64* %_len4848
  %_4885 = icmp slt i64 %_4883, %_4884
  br i1 %_4885, label %_loop4888, label %_end4887
_loop4888:
  %_4889 = load i1, i1* %_4869
  br i1 %_4889, label %_if4890, label %_else4891
_if4890:
  %_4893 = load i64, i64* %_insertee4849
  %_4894 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial4847
  %_4895 = load i64, i64* %_4882
  %_4898 = bitcast { i64, [0 x i64] }* %_4894 to i64*
  %_4896 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4894, i32 0, i32 1, i64 %_4895
  %_4897 = load i64, i64* %_4896
  %_4899 = icmp sgt i64 %_4893, %_4897
  br i1 %_4899, label %_if4900, label %_else4901
_if4900:
  store i1 0, i1* %_4869
  %_4903 = load i64, i64* %_insertee4849
  %_4904 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4854
  %_4905 = load i64, i64* %_4882
  %_4906 = add i64 %_4905, 1
  %_4907 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4904, i32 0, i32 1, i64 %_4906
  store i64 %_4903, i64* %_4907
  %_4908 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial4847
  %_4909 = load i64, i64* %_4882
  %_4912 = bitcast { i64, [0 x i64] }* %_4908 to i64*
  %_4910 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4908, i32 0, i32 1, i64 %_4909
  %_4911 = load i64, i64* %_4910
  %_4913 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4854
  %_4914 = load i64, i64* %_4882
  %_4915 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4913, i32 0, i32 1, i64 %_4914
  store i64 %_4911, i64* %_4915
  br label %_end4902
_else4901:
  %_4916 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial4847
  %_4917 = load i64, i64* %_4882
  %_4920 = bitcast { i64, [0 x i64] }* %_4916 to i64*
  %_4918 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4916, i32 0, i32 1, i64 %_4917
  %_4919 = load i64, i64* %_4918
  %_4921 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4854
  %_4922 = load i64, i64* %_4882
  %_4923 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4921, i32 0, i32 1, i64 %_4922
  store i64 %_4919, i64* %_4923
  br label %_end4902
_end4902:
  br label %_end4892
_else4891:
  %_4924 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial4847
  %_4925 = load i64, i64* %_4882
  %_4928 = bitcast { i64, [0 x i64] }* %_4924 to i64*
  %_4926 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4924, i32 0, i32 1, i64 %_4925
  %_4927 = load i64, i64* %_4926
  %_4929 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4854
  %_4930 = load i64, i64* %_4882
  %_4931 = add i64 %_4930, 1
  %_4932 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4929, i32 0, i32 1, i64 %_4931
  store i64 %_4927, i64* %_4932
  br label %_end4892
_end4892:
  %_4933 = load i64, i64* %_4882
  %_4934 = add i64 %_4933, 1
  store i64 %_4934, i64* %_4882
  br label %_cnd4886
_end4887:
  %_4935 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4854
  ret { i64, [0 x i64] }* %_4935
}

define { i64, [0 x i64] }* @insort({ i64, [0 x i64] }* %unsorted, i64 %len) {
  %_4822 = alloca { i64, [0 x i64] }*
  %_4829 = alloca i64
  %_len4818 = alloca i64
  store i64 %len, i64* %_len4818
  %_unsorted4817 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %unsorted, { i64, [0 x i64] }** %_unsorted4817
  %_raw_array4819 = call i64* @oat_alloc_array(i64 1)
  %_array4820 = bitcast i64* %_raw_array4819 to { i64, [0 x i64] }*
  %_4821 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4820, i32 0, i32 1, i32 0
  store i64 0, i64* %_4821
  store { i64, [0 x i64] }* %_array4820, { i64, [0 x i64] }** %_4822
  %_4823 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_unsorted4817
  %_4826 = bitcast { i64, [0 x i64] }* %_4823 to i64*
  %_4824 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4823, i32 0, i32 1, i32 0
  %_4825 = load i64, i64* %_4824
  %_4827 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4822
  %_4828 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4827, i32 0, i32 1, i32 0
  store i64 %_4825, i64* %_4828
  store i64 1, i64* %_4829
  br label %_cnd4833
_cnd4833:
  %_4830 = load i64, i64* %_4829
  %_4831 = load i64, i64* %_len4818
  %_4832 = icmp slt i64 %_4830, %_4831
  br i1 %_4832, label %_loop4835, label %_end4834
_loop4835:
  %_4838 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_unsorted4817
  %_4839 = load i64, i64* %_4829
  %_4842 = bitcast { i64, [0 x i64] }* %_4838 to i64*
  %_4840 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4838, i32 0, i32 1, i64 %_4839
  %_4841 = load i64, i64* %_4840
  %_4837 = load i64, i64* %_4829
  %_4836 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4822
  %_4843 = call { i64, [0 x i64] }* @insert({ i64, [0 x i64] }* %_4836, i64 %_4837, i64 %_4841)
  store { i64, [0 x i64] }* %_4843, { i64, [0 x i64] }** %_4822
  %_4844 = load i64, i64* %_4829
  %_4845 = add i64 %_4844, 1
  store i64 %_4845, i64* %_4829
  br label %_cnd4833
_end4834:
  %_4846 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4822
  ret { i64, [0 x i64] }* %_4846
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_4809 = alloca { i64, [0 x i64] }*
  %_4812 = alloca { i64, [0 x i64] }*
  %_argv4800 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4800
  %_argc4799 = alloca i64
  store i64 %argc, i64* %_argc4799
  %_raw_array4801 = call i64* @oat_alloc_array(i64 6)
  %_array4802 = bitcast i64* %_raw_array4801 to { i64, [0 x i64] }*
  %_4808 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4802, i32 0, i32 1, i32 5
  store i64 6, i64* %_4808
  %_4807 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4802, i32 0, i32 1, i32 4
  store i64 2, i64* %_4807
  %_4806 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4802, i32 0, i32 1, i32 3
  store i64 3, i64* %_4806
  %_4805 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4802, i32 0, i32 1, i32 2
  store i64 32, i64* %_4805
  %_4804 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4802, i32 0, i32 1, i32 1
  store i64 42, i64* %_4804
  %_4803 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4802, i32 0, i32 1, i32 0
  store i64 13, i64* %_4803
  store { i64, [0 x i64] }* %_array4802, { i64, [0 x i64] }** %_4809
  %_4810 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4809
  %_4811 = call { i64, [0 x i64] }* @insort({ i64, [0 x i64] }* %_4810, i64 6)
  store { i64, [0 x i64] }* %_4811, { i64, [0 x i64] }** %_4812
  %_4813 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4812
  %_4816 = bitcast { i64, [0 x i64] }* %_4813 to i64*
  %_4814 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4813, i32 0, i32 1, i32 5
  %_4815 = load i64, i64* %_4814
  ret i64 %_4815
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
