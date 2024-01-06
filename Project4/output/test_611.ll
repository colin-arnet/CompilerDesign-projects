; generated from: oatprograms/run1.oat
target triple = "x86_64-unknown-linux"
@i = global i64 42

define i64 @f(i64 %x) {
  %_x825 = alloca i64
  store i64 %x, i64* %_x825
  %_826 = load i64, i64* %_x825
  ret i64 %_826
}

define i64 @g({ i64, [0 x i64] }* %y) {
  %_y820 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y820
  %_821 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y820
  %_824 = bitcast { i64, [0 x i64] }* %_821 to i64*
  %_822 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_821, i32 0, i32 1, i32 2
  %_823 = load i64, i64* %_822
  ret i64 %_823
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_778 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_785 = alloca { i64, [0 x i64] }*
  %_786 = alloca i64
  %_787 = alloca i64
  %_argv765 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv765
  %_argc764 = alloca i64
  store i64 %argc, i64* %_argc764
  %_raw_array766 = call i64* @oat_alloc_array(i64 2)
  %_array767 = bitcast i64* %_raw_array766 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array772 = call i64* @oat_alloc_array(i64 2)
  %_array773 = bitcast i64* %_raw_array772 to { i64, [0 x i64] }*
  %_775 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array773, i32 0, i32 1, i32 1
  store i64 4, i64* %_775
  %_774 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array773, i32 0, i32 1, i32 0
  store i64 3, i64* %_774
  %_raw_array768 = call i64* @oat_alloc_array(i64 2)
  %_array769 = bitcast i64* %_raw_array768 to { i64, [0 x i64] }*
  %_771 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array769, i32 0, i32 1, i32 1
  store i64 2, i64* %_771
  %_770 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array769, i32 0, i32 1, i32 0
  store i64 1, i64* %_770
  %_777 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array767, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array773, { i64, [0 x i64] }** %_777
  %_776 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array767, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array769, { i64, [0 x i64] }** %_776
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array767, { i64, [0 x { i64, [0 x i64] }*] }** %_778
  %_raw_array779 = call i64* @oat_alloc_array(i64 4)
  %_array780 = bitcast i64* %_raw_array779 to { i64, [0 x i64] }*
  %_784 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array780, i32 0, i32 1, i32 3
  store i64 4, i64* %_784
  %_783 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array780, i32 0, i32 1, i32 2
  store i64 3, i64* %_783
  %_782 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array780, i32 0, i32 1, i32 1
  store i64 2, i64* %_782
  %_781 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array780, i32 0, i32 1, i32 0
  store i64 1, i64* %_781
  store { i64, [0 x i64] }* %_array780, { i64, [0 x i64] }** %_785
  store i64 0, i64* %_786
  store i64 0, i64* %_787
  br label %_cnd790
_cnd790:
  %_788 = load i64, i64* %_787
  %_789 = icmp slt i64 %_788, 100
  br i1 %_789, label %_loop792, label %_end791
_loop792:
  %_793 = load i64, i64* %_786
  %_794 = add i64 %_793, 1
  store i64 %_794, i64* %_786
  %_795 = load i64, i64* %_787
  %_796 = add i64 %_795, 1
  store i64 %_796, i64* %_787
  br label %_cnd790
_end791:
  %_797 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_785
  %_798 = call i64 @g({ i64, [0 x i64] }* %_797)
  %_799 = load i64, i64* @i
  %_800 = call i64 @f(i64 %_799)
  %_801 = add i64 %_798, %_800
  %_802 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_785
  %_805 = bitcast { i64, [0 x i64] }* %_802 to i64*
  %_803 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_802, i32 0, i32 1, i32 3
  %_804 = load i64, i64* %_803
  %_806 = call i64 @f(i64 %_804)
  %_807 = add i64 %_801, %_806
  %_808 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_778
  %_811 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_808 to i64*
  %_809 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_808, i32 0, i32 1, i32 1
  %_810 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_809
  %_814 = bitcast { i64, [0 x i64] }* %_810 to i64*
  %_812 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_810, i32 0, i32 1, i32 1
  %_813 = load i64, i64* %_812
  %_815 = call i64 @f(i64 %_813)
  %_816 = add i64 %_807, %_815
  %_817 = load i64, i64* %_786
  %_818 = call i64 @f(i64 %_817)
  %_819 = add i64 %_816, %_818
  ret i64 %_819
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
