; generated from: oatprograms/run1.oat
target triple = "x86_64-unknown-linux"
@i = global i64 42

define i64 @f(i64 %x) {
  %_x838 = alloca i64
  store i64 %x, i64* %_x838
  %_839 = load i64, i64* %_x838
  ret i64 %_839
}

define i64 @g({ i64, [0 x i64] }* %y) {
  %_y833 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y833
  %_834 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y833
  %_837 = bitcast { i64, [0 x i64] }* %_834 to i64*
  %_835 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_834, i32 0, i32 1, i32 2
  %_836 = load i64, i64* %_835
  ret i64 %_836
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_791 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_798 = alloca { i64, [0 x i64] }*
  %_799 = alloca i64
  %_800 = alloca i64
  %_argv778 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv778
  %_argc777 = alloca i64
  store i64 %argc, i64* %_argc777
  %_raw_array779 = call i64* @oat_alloc_array(i64 2)
  %_array780 = bitcast i64* %_raw_array779 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array785 = call i64* @oat_alloc_array(i64 2)
  %_array786 = bitcast i64* %_raw_array785 to { i64, [0 x i64] }*
  %_788 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array786, i32 0, i32 1, i32 1
  store i64 4, i64* %_788
  %_787 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array786, i32 0, i32 1, i32 0
  store i64 3, i64* %_787
  %_raw_array781 = call i64* @oat_alloc_array(i64 2)
  %_array782 = bitcast i64* %_raw_array781 to { i64, [0 x i64] }*
  %_784 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array782, i32 0, i32 1, i32 1
  store i64 2, i64* %_784
  %_783 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array782, i32 0, i32 1, i32 0
  store i64 1, i64* %_783
  %_790 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array780, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array786, { i64, [0 x i64] }** %_790
  %_789 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array780, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array782, { i64, [0 x i64] }** %_789
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array780, { i64, [0 x { i64, [0 x i64] }*] }** %_791
  %_raw_array792 = call i64* @oat_alloc_array(i64 4)
  %_array793 = bitcast i64* %_raw_array792 to { i64, [0 x i64] }*
  %_797 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array793, i32 0, i32 1, i32 3
  store i64 4, i64* %_797
  %_796 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array793, i32 0, i32 1, i32 2
  store i64 3, i64* %_796
  %_795 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array793, i32 0, i32 1, i32 1
  store i64 2, i64* %_795
  %_794 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array793, i32 0, i32 1, i32 0
  store i64 1, i64* %_794
  store { i64, [0 x i64] }* %_array793, { i64, [0 x i64] }** %_798
  store i64 0, i64* %_799
  store i64 0, i64* %_800
  br label %_cnd803
_cnd803:
  %_801 = load i64, i64* %_800
  %_802 = icmp slt i64 %_801, 100
  br i1 %_802, label %_loop805, label %_end804
_loop805:
  %_806 = load i64, i64* %_799
  %_807 = add i64 %_806, 1
  store i64 %_807, i64* %_799
  %_808 = load i64, i64* %_800
  %_809 = add i64 %_808, 1
  store i64 %_809, i64* %_800
  br label %_cnd803
_end804:
  %_810 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_798
  %_811 = call i64 @g({ i64, [0 x i64] }* %_810)
  %_812 = load i64, i64* @i
  %_813 = call i64 @f(i64 %_812)
  %_814 = add i64 %_811, %_813
  %_815 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_798
  %_818 = bitcast { i64, [0 x i64] }* %_815 to i64*
  %_816 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_815, i32 0, i32 1, i32 3
  %_817 = load i64, i64* %_816
  %_819 = call i64 @f(i64 %_817)
  %_820 = add i64 %_814, %_819
  %_821 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_791
  %_824 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_821 to i64*
  %_822 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_821, i32 0, i32 1, i32 1
  %_823 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_822
  %_827 = bitcast { i64, [0 x i64] }* %_823 to i64*
  %_825 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_823, i32 0, i32 1, i32 1
  %_826 = load i64, i64* %_825
  %_828 = call i64 @f(i64 %_826)
  %_829 = add i64 %_820, %_828
  %_830 = load i64, i64* %_799
  %_831 = call i64 @f(i64 %_830)
  %_832 = add i64 %_829, %_831
  ret i64 %_832
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
