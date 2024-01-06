; generated from: oatprograms/lcs.oat
target triple = "x86_64-unknown-linux"
@buf = global { i64, [1 x i64] }* @_garr4798
@_garr4798 = global { i64, [1 x i64] } { i64 1, [1 x i64] [ i64 0 ] }
@_4722 = global [1 x i8] c"\00"
@_4700 = global [7 x i8] c"TOMATO\00"
@_4703 = global [8 x i8] c"ORATING\00"

define i8* @lcs(i64 %i, i64 %j, i8* %a, i8* %b) {
  %_4726 = alloca { i64, [0 x i64] }*
  %_4729 = alloca { i64, [0 x i64] }*
  %_4735 = alloca i64
  %_4741 = alloca i64
  %_4755 = alloca i8*
  %_4766 = alloca i8*
  %_4776 = alloca i8*
  %_4783 = alloca i8*
  %_4786 = alloca i64
  %_4789 = alloca i64
  %_b4713 = alloca i8*
  store i8* %b, i8** %_b4713
  %_a4712 = alloca i8*
  store i8* %a, i8** %_a4712
  %_j4711 = alloca i64
  store i64 %j, i64* %_j4711
  %_i4710 = alloca i64
  store i64 %i, i64* %_i4710
  %_4714 = load i64, i64* %_i4710
  %_4715 = icmp slt i64 %_4714, 0
  %_4716 = load i64, i64* %_j4711
  %_4717 = icmp slt i64 %_4716, 0
  %_4718 = or i1 %_4715, %_4717
  br i1 %_4718, label %_if4719, label %_else4720
_if4719:
  %_4723 = bitcast [1 x i8]* @_4722 to i8*
  ret i8* %_4723
_else4720:
  %_4724 = load i8*, i8** %_a4712
  %_4725 = call { i64, [0 x i64] }* @array_of_string(i8* %_4724)
  store { i64, [0 x i64] }* %_4725, { i64, [0 x i64] }** %_4726
  %_4727 = load i8*, i8** %_b4713
  %_4728 = call { i64, [0 x i64] }* @array_of_string(i8* %_4727)
  store { i64, [0 x i64] }* %_4728, { i64, [0 x i64] }** %_4729
  %_4730 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4726
  %_4731 = load i64, i64* %_i4710
  %_4734 = bitcast { i64, [0 x i64] }* %_4730 to i64*
  %_4732 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4730, i32 0, i32 1, i64 %_4731
  %_4733 = load i64, i64* %_4732
  store i64 %_4733, i64* %_4735
  %_4736 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4729
  %_4737 = load i64, i64* %_j4711
  %_4740 = bitcast { i64, [0 x i64] }* %_4736 to i64*
  %_4738 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4736, i32 0, i32 1, i64 %_4737
  %_4739 = load i64, i64* %_4738
  store i64 %_4739, i64* %_4741
  %_4742 = load i64, i64* %_4735
  %_4743 = load i64, i64* %_4741
  %_4744 = icmp eq i64 %_4742, %_4743
  br i1 %_4744, label %_if4745, label %_else4746
_if4745:
  %_4753 = load i8*, i8** %_b4713
  %_4752 = load i8*, i8** %_a4712
  %_4750 = load i64, i64* %_j4711
  %_4751 = sub i64 %_4750, 1
  %_4748 = load i64, i64* %_i4710
  %_4749 = sub i64 %_4748, 1
  %_4754 = call i8* @lcs(i64 %_4749, i64 %_4751, i8* %_4752, i8* %_4753)
  store i8* %_4754, i8** %_4755
  %_4756 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4726
  %_4757 = load i64, i64* %_i4710
  %_4760 = bitcast { i64, [0 x i64] }* %_4756 to i64*
  %_4758 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4756, i32 0, i32 1, i64 %_4757
  %_4759 = load i64, i64* %_4758
  %_4761 = load { i64, [1 x i64] }*, { i64, [1 x i64] }** @buf
  %_4762 = getelementptr { i64, [1 x i64] }, { i64, [1 x i64] }* %_4761, i32 0, i32 1, i32 0
  store i64 %_4759, i64* %_4762
  %_4763 = load { i64, [1 x i64] }*, { i64, [1 x i64] }** @buf
  %_4764 = bitcast { i64, [1 x i64] }* %_4763 to { i64, [0 x i64] }*
  %_4765 = call i8* @string_of_array({ i64, [0 x i64] }* %_4764)
  store i8* %_4765, i8** %_4766
  %_4768 = load i8*, i8** %_4766
  %_4767 = load i8*, i8** %_4755
  %_4769 = call i8* @string_cat(i8* %_4767, i8* %_4768)
  ret i8* %_4769
_else4746:
  %_4774 = load i8*, i8** %_b4713
  %_4773 = load i8*, i8** %_a4712
  %_4771 = load i64, i64* %_j4711
  %_4772 = sub i64 %_4771, 1
  %_4770 = load i64, i64* %_i4710
  %_4775 = call i8* @lcs(i64 %_4770, i64 %_4772, i8* %_4773, i8* %_4774)
  store i8* %_4775, i8** %_4776
  %_4781 = load i8*, i8** %_b4713
  %_4780 = load i8*, i8** %_a4712
  %_4779 = load i64, i64* %_j4711
  %_4777 = load i64, i64* %_i4710
  %_4778 = sub i64 %_4777, 1
  %_4782 = call i8* @lcs(i64 %_4778, i64 %_4779, i8* %_4780, i8* %_4781)
  store i8* %_4782, i8** %_4783
  %_4784 = load i8*, i8** %_4776
  %_4785 = call i64 @length_of_string(i8* %_4784)
  store i64 %_4785, i64* %_4786
  %_4787 = load i8*, i8** %_4783
  %_4788 = call i64 @length_of_string(i8* %_4787)
  store i64 %_4788, i64* %_4789
  %_4790 = load i64, i64* %_4786
  %_4791 = load i64, i64* %_4789
  %_4792 = icmp slt i64 %_4790, %_4791
  br i1 %_4792, label %_if4793, label %_else4794
_if4793:
  %_4796 = load i8*, i8** %_4783
  ret i8* %_4796
_else4794:
  %_4797 = load i8*, i8** %_4776
  ret i8* %_4797
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_4702 = alloca i8*
  %_4705 = alloca i8*
  %_argv4699 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4699
  %_argc4698 = alloca i64
  store i64 %argc, i64* %_argc4698
  %_4701 = bitcast [7 x i8]* @_4700 to i8*
  store i8* %_4701, i8** %_4702
  %_4704 = bitcast [8 x i8]* @_4703 to i8*
  store i8* %_4704, i8** %_4705
  %_4707 = load i8*, i8** %_4705
  %_4706 = load i8*, i8** %_4702
  %_4708 = call i8* @lcs(i64 5, i64 6, i8* %_4706, i8* %_4707)
  call void @print_string(i8* %_4708)
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
