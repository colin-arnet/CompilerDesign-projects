; generated from: oatprograms/maxsubsequence.oat
target triple = "x86_64-unknown-linux"
define i64 @maxsum({ i64, [0 x i64] }* %arr, i64 %size) {
  %_4711 = alloca { i64, [0 x i64] }*
  %_4712 = alloca i64
  %_4719 = alloca i64
  %_4726 = alloca i64
  %_size4707 = alloca i64
  store i64 %size, i64* %_size4707
  %_arr4706 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr4706
  %_4708 = load i64, i64* %_size4707
  %_raw_array4709 = call i64* @oat_alloc_array(i64 %_4708)
  %_array4710 = bitcast i64* %_raw_array4709 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4710, { i64, [0 x i64] }** %_4711
  store i64 0, i64* %_4712
  %_4713 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4706
  %_4716 = bitcast { i64, [0 x i64] }* %_4713 to i64*
  %_4714 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4713, i32 0, i32 1, i32 0
  %_4715 = load i64, i64* %_4714
  %_4717 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4711
  %_4718 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4717, i32 0, i32 1, i32 0
  store i64 %_4715, i64* %_4718
  store i64 0, i64* %_4719
  br label %_cnd4723
_cnd4723:
  %_4720 = load i64, i64* %_4719
  %_4721 = load i64, i64* %_size4707
  %_4722 = icmp slt i64 %_4720, %_4721
  br i1 %_4722, label %_loop4725, label %_end4724
_loop4725:
  store i64 0, i64* %_4726
  br label %_cnd4730
_cnd4730:
  %_4727 = load i64, i64* %_4726
  %_4728 = load i64, i64* %_4719
  %_4729 = icmp slt i64 %_4727, %_4728
  br i1 %_4729, label %_loop4732, label %_end4731
_loop4732:
  %_4733 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4706
  %_4734 = load i64, i64* %_4719
  %_4737 = bitcast { i64, [0 x i64] }* %_4733 to i64*
  %_4735 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4733, i32 0, i32 1, i64 %_4734
  %_4736 = load i64, i64* %_4735
  %_4738 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4706
  %_4739 = load i64, i64* %_4726
  %_4742 = bitcast { i64, [0 x i64] }* %_4738 to i64*
  %_4740 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4738, i32 0, i32 1, i64 %_4739
  %_4741 = load i64, i64* %_4740
  %_4743 = icmp sgt i64 %_4736, %_4741
  %_4744 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4711
  %_4745 = load i64, i64* %_4719
  %_4748 = bitcast { i64, [0 x i64] }* %_4744 to i64*
  %_4746 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4744, i32 0, i32 1, i64 %_4745
  %_4747 = load i64, i64* %_4746
  %_4749 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4711
  %_4750 = load i64, i64* %_4726
  %_4753 = bitcast { i64, [0 x i64] }* %_4749 to i64*
  %_4751 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4749, i32 0, i32 1, i64 %_4750
  %_4752 = load i64, i64* %_4751
  %_4754 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4706
  %_4755 = load i64, i64* %_4719
  %_4758 = bitcast { i64, [0 x i64] }* %_4754 to i64*
  %_4756 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4754, i32 0, i32 1, i64 %_4755
  %_4757 = load i64, i64* %_4756
  %_4759 = add i64 %_4752, %_4757
  %_4760 = icmp slt i64 %_4747, %_4759
  %_4761 = and i1 %_4743, %_4760
  br i1 %_4761, label %_if4762, label %_else4763
_if4762:
  %_4765 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4711
  %_4766 = load i64, i64* %_4726
  %_4769 = bitcast { i64, [0 x i64] }* %_4765 to i64*
  %_4767 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4765, i32 0, i32 1, i64 %_4766
  %_4768 = load i64, i64* %_4767
  %_4770 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4706
  %_4771 = load i64, i64* %_4719
  %_4774 = bitcast { i64, [0 x i64] }* %_4770 to i64*
  %_4772 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4770, i32 0, i32 1, i64 %_4771
  %_4773 = load i64, i64* %_4772
  %_4775 = add i64 %_4768, %_4773
  %_4776 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4711
  %_4777 = load i64, i64* %_4719
  %_4778 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4776, i32 0, i32 1, i64 %_4777
  store i64 %_4775, i64* %_4778
  br label %_else4763
_else4763:
  %_4779 = load i64, i64* %_4726
  %_4780 = add i64 %_4779, 1
  store i64 %_4780, i64* %_4726
  br label %_cnd4730
_end4731:
  %_4781 = load i64, i64* %_4712
  %_4782 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4711
  %_4783 = load i64, i64* %_4719
  %_4786 = bitcast { i64, [0 x i64] }* %_4782 to i64*
  %_4784 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4782, i32 0, i32 1, i64 %_4783
  %_4785 = load i64, i64* %_4784
  %_4787 = icmp slt i64 %_4781, %_4785
  br i1 %_4787, label %_if4788, label %_else4789
_if4788:
  %_4791 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4711
  %_4792 = load i64, i64* %_4719
  %_4795 = bitcast { i64, [0 x i64] }* %_4791 to i64*
  %_4793 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4791, i32 0, i32 1, i64 %_4792
  %_4794 = load i64, i64* %_4793
  store i64 %_4794, i64* %_4712
  br label %_else4789
_else4789:
  %_4796 = load i64, i64* %_4719
  %_4797 = add i64 %_4796, 1
  store i64 %_4797, i64* %_4719
  br label %_cnd4723
_end4724:
  %_4798 = load i64, i64* %_4712
  ret i64 %_4798
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_4701 = alloca { i64, [0 x i64] }*
  %_4704 = alloca i64
  %_argv4691 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4691
  %_argc4690 = alloca i64
  store i64 %argc, i64* %_argc4690
  %_raw_array4692 = call i64* @oat_alloc_array(i64 7)
  %_array4693 = bitcast i64* %_raw_array4692 to { i64, [0 x i64] }*
  %_4700 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4693, i32 0, i32 1, i32 6
  store i64 5, i64* %_4700
  %_4699 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4693, i32 0, i32 1, i32 5
  store i64 4, i64* %_4699
  %_4698 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4693, i32 0, i32 1, i32 4
  store i64 101, i64* %_4698
  %_4697 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4693, i32 0, i32 1, i32 3
  store i64 3, i64* %_4697
  %_4696 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4693, i32 0, i32 1, i32 2
  store i64 2, i64* %_4696
  %_4695 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4693, i32 0, i32 1, i32 1
  store i64 101, i64* %_4695
  %_4694 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4693, i32 0, i32 1, i32 0
  store i64 1, i64* %_4694
  store { i64, [0 x i64] }* %_array4693, { i64, [0 x i64] }** %_4701
  %_4702 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4701
  %_4703 = call i64 @maxsum({ i64, [0 x i64] }* %_4702, i64 7)
  store i64 %_4703, i64* %_4704
  %_4705 = load i64, i64* %_4704
  ret i64 %_4705
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
