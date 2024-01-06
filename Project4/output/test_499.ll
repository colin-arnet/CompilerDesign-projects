; generated from: oatprograms/run42.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_678 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_690 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_702 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_714 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_720 = alloca { i64, [0 x i64] }*
  %_argv666 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv666
  %_argc665 = alloca i64
  store i64 %argc, i64* %_argc665
  %_raw_array667 = call i64* @oat_alloc_array(i64 3)
  %_array668 = bitcast i64* %_raw_array667 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array673 = call i64* @oat_alloc_array(i64 1)
  %_array674 = bitcast i64* %_raw_array673 to { i64, [0 x i64] }*
  %_raw_array671 = call i64* @oat_alloc_array(i64 1)
  %_array672 = bitcast i64* %_raw_array671 to { i64, [0 x i64] }*
  %_raw_array669 = call i64* @oat_alloc_array(i64 1)
  %_array670 = bitcast i64* %_raw_array669 to { i64, [0 x i64] }*
  %_677 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array668, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array674, { i64, [0 x i64] }** %_677
  %_676 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array668, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array672, { i64, [0 x i64] }** %_676
  %_675 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array668, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array670, { i64, [0 x i64] }** %_675
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array668, { i64, [0 x { i64, [0 x i64] }*] }** %_678
  %_raw_array679 = call i64* @oat_alloc_array(i64 3)
  %_array680 = bitcast i64* %_raw_array679 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array685 = call i64* @oat_alloc_array(i64 1)
  %_array686 = bitcast i64* %_raw_array685 to { i64, [0 x i64] }*
  %_raw_array683 = call i64* @oat_alloc_array(i64 1)
  %_array684 = bitcast i64* %_raw_array683 to { i64, [0 x i64] }*
  %_raw_array681 = call i64* @oat_alloc_array(i64 1)
  %_array682 = bitcast i64* %_raw_array681 to { i64, [0 x i64] }*
  %_689 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array680, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array686, { i64, [0 x i64] }** %_689
  %_688 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array680, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array684, { i64, [0 x i64] }** %_688
  %_687 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array680, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array682, { i64, [0 x i64] }** %_687
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array680, { i64, [0 x { i64, [0 x i64] }*] }** %_690
  %_raw_array691 = call i64* @oat_alloc_array(i64 3)
  %_array692 = bitcast i64* %_raw_array691 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array697 = call i64* @oat_alloc_array(i64 1)
  %_array698 = bitcast i64* %_raw_array697 to { i64, [0 x i64] }*
  %_raw_array695 = call i64* @oat_alloc_array(i64 1)
  %_array696 = bitcast i64* %_raw_array695 to { i64, [0 x i64] }*
  %_raw_array693 = call i64* @oat_alloc_array(i64 1)
  %_array694 = bitcast i64* %_raw_array693 to { i64, [0 x i64] }*
  %_701 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array692, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array698, { i64, [0 x i64] }** %_701
  %_700 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array692, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array696, { i64, [0 x i64] }** %_700
  %_699 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array692, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array694, { i64, [0 x i64] }** %_699
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array692, { i64, [0 x { i64, [0 x i64] }*] }** %_702
  %_raw_array703 = call i64* @oat_alloc_array(i64 3)
  %_array704 = bitcast i64* %_raw_array703 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array709 = call i64* @oat_alloc_array(i64 1)
  %_array710 = bitcast i64* %_raw_array709 to { i64, [0 x i64] }*
  %_raw_array707 = call i64* @oat_alloc_array(i64 1)
  %_array708 = bitcast i64* %_raw_array707 to { i64, [0 x i64] }*
  %_raw_array705 = call i64* @oat_alloc_array(i64 1)
  %_array706 = bitcast i64* %_raw_array705 to { i64, [0 x i64] }*
  %_713 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array704, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array710, { i64, [0 x i64] }** %_713
  %_712 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array704, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array708, { i64, [0 x i64] }** %_712
  %_711 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array704, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array706, { i64, [0 x i64] }** %_711
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array704, { i64, [0 x { i64, [0 x i64] }*] }** %_714
  %_raw_array715 = call i64* @oat_alloc_array(i64 3)
  %_array716 = bitcast i64* %_raw_array715 to { i64, [0 x i64] }*
  %_719 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array716, i32 0, i32 1, i32 2
  store i64 2, i64* %_719
  %_718 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array716, i32 0, i32 1, i32 1
  store i64 1, i64* %_718
  %_717 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array716, i32 0, i32 1, i32 0
  store i64 0, i64* %_717
  store { i64, [0 x i64] }* %_array716, { i64, [0 x i64] }** %_720
  %_721 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_720
  %_722 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_690
  %_723 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_722, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_721, { i64, [0 x i64] }** %_723
  %_724 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_690
  %_727 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_724 to i64*
  %_725 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_724, i32 0, i32 1, i32 0
  %_726 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_725
  %_728 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_726, i32 0, i32 1, i32 0
  store i64 2, i64* %_728
  %_729 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_690
  store { i64, [0 x { i64, [0 x i64] }*] }* %_729, { i64, [0 x { i64, [0 x i64] }*] }** %_678
  %_730 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_678
  store { i64, [0 x { i64, [0 x i64] }*] }* %_730, { i64, [0 x { i64, [0 x i64] }*] }** %_702
  %_731 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_714
  store { i64, [0 x { i64, [0 x i64] }*] }* %_731, { i64, [0 x { i64, [0 x i64] }*] }** %_678
  %_732 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_702
  store { i64, [0 x { i64, [0 x i64] }*] }* %_732, { i64, [0 x { i64, [0 x i64] }*] }** %_690
  %_733 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_690
  store { i64, [0 x { i64, [0 x i64] }*] }* %_733, { i64, [0 x { i64, [0 x i64] }*] }** %_714
  %_734 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_714
  store { i64, [0 x { i64, [0 x i64] }*] }* %_734, { i64, [0 x { i64, [0 x i64] }*] }** %_702
  %_735 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_702
  %_738 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_735 to i64*
  %_736 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_735, i32 0, i32 1, i32 0
  %_737 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_736
  %_741 = bitcast { i64, [0 x i64] }* %_737 to i64*
  %_739 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_737, i32 0, i32 1, i32 0
  %_740 = load i64, i64* %_739
  ret i64 %_740
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
