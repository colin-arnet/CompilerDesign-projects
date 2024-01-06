; generated from: oatprograms/run42.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_665 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_677 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_689 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_701 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_707 = alloca { i64, [0 x i64] }*
  %_argv653 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv653
  %_argc652 = alloca i64
  store i64 %argc, i64* %_argc652
  %_raw_array654 = call i64* @oat_alloc_array(i64 3)
  %_array655 = bitcast i64* %_raw_array654 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array660 = call i64* @oat_alloc_array(i64 1)
  %_array661 = bitcast i64* %_raw_array660 to { i64, [0 x i64] }*
  %_raw_array658 = call i64* @oat_alloc_array(i64 1)
  %_array659 = bitcast i64* %_raw_array658 to { i64, [0 x i64] }*
  %_raw_array656 = call i64* @oat_alloc_array(i64 1)
  %_array657 = bitcast i64* %_raw_array656 to { i64, [0 x i64] }*
  %_664 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array655, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array661, { i64, [0 x i64] }** %_664
  %_663 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array655, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array659, { i64, [0 x i64] }** %_663
  %_662 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array655, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array657, { i64, [0 x i64] }** %_662
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array655, { i64, [0 x { i64, [0 x i64] }*] }** %_665
  %_raw_array666 = call i64* @oat_alloc_array(i64 3)
  %_array667 = bitcast i64* %_raw_array666 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array672 = call i64* @oat_alloc_array(i64 1)
  %_array673 = bitcast i64* %_raw_array672 to { i64, [0 x i64] }*
  %_raw_array670 = call i64* @oat_alloc_array(i64 1)
  %_array671 = bitcast i64* %_raw_array670 to { i64, [0 x i64] }*
  %_raw_array668 = call i64* @oat_alloc_array(i64 1)
  %_array669 = bitcast i64* %_raw_array668 to { i64, [0 x i64] }*
  %_676 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array667, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array673, { i64, [0 x i64] }** %_676
  %_675 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array667, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array671, { i64, [0 x i64] }** %_675
  %_674 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array667, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array669, { i64, [0 x i64] }** %_674
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array667, { i64, [0 x { i64, [0 x i64] }*] }** %_677
  %_raw_array678 = call i64* @oat_alloc_array(i64 3)
  %_array679 = bitcast i64* %_raw_array678 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array684 = call i64* @oat_alloc_array(i64 1)
  %_array685 = bitcast i64* %_raw_array684 to { i64, [0 x i64] }*
  %_raw_array682 = call i64* @oat_alloc_array(i64 1)
  %_array683 = bitcast i64* %_raw_array682 to { i64, [0 x i64] }*
  %_raw_array680 = call i64* @oat_alloc_array(i64 1)
  %_array681 = bitcast i64* %_raw_array680 to { i64, [0 x i64] }*
  %_688 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array679, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array685, { i64, [0 x i64] }** %_688
  %_687 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array679, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array683, { i64, [0 x i64] }** %_687
  %_686 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array679, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array681, { i64, [0 x i64] }** %_686
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array679, { i64, [0 x { i64, [0 x i64] }*] }** %_689
  %_raw_array690 = call i64* @oat_alloc_array(i64 3)
  %_array691 = bitcast i64* %_raw_array690 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array696 = call i64* @oat_alloc_array(i64 1)
  %_array697 = bitcast i64* %_raw_array696 to { i64, [0 x i64] }*
  %_raw_array694 = call i64* @oat_alloc_array(i64 1)
  %_array695 = bitcast i64* %_raw_array694 to { i64, [0 x i64] }*
  %_raw_array692 = call i64* @oat_alloc_array(i64 1)
  %_array693 = bitcast i64* %_raw_array692 to { i64, [0 x i64] }*
  %_700 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array691, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array697, { i64, [0 x i64] }** %_700
  %_699 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array691, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array695, { i64, [0 x i64] }** %_699
  %_698 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array691, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array693, { i64, [0 x i64] }** %_698
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array691, { i64, [0 x { i64, [0 x i64] }*] }** %_701
  %_raw_array702 = call i64* @oat_alloc_array(i64 3)
  %_array703 = bitcast i64* %_raw_array702 to { i64, [0 x i64] }*
  %_706 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array703, i32 0, i32 1, i32 2
  store i64 2, i64* %_706
  %_705 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array703, i32 0, i32 1, i32 1
  store i64 1, i64* %_705
  %_704 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array703, i32 0, i32 1, i32 0
  store i64 0, i64* %_704
  store { i64, [0 x i64] }* %_array703, { i64, [0 x i64] }** %_707
  %_708 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_707
  %_709 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_677
  %_710 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_709, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_708, { i64, [0 x i64] }** %_710
  %_711 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_677
  %_714 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_711 to i64*
  %_712 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_711, i32 0, i32 1, i32 0
  %_713 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_712
  %_715 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_713, i32 0, i32 1, i32 0
  store i64 2, i64* %_715
  %_716 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_677
  store { i64, [0 x { i64, [0 x i64] }*] }* %_716, { i64, [0 x { i64, [0 x i64] }*] }** %_665
  %_717 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_665
  store { i64, [0 x { i64, [0 x i64] }*] }* %_717, { i64, [0 x { i64, [0 x i64] }*] }** %_689
  %_718 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_701
  store { i64, [0 x { i64, [0 x i64] }*] }* %_718, { i64, [0 x { i64, [0 x i64] }*] }** %_665
  %_719 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_689
  store { i64, [0 x { i64, [0 x i64] }*] }* %_719, { i64, [0 x { i64, [0 x i64] }*] }** %_677
  %_720 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_677
  store { i64, [0 x { i64, [0 x i64] }*] }* %_720, { i64, [0 x { i64, [0 x i64] }*] }** %_701
  %_721 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_701
  store { i64, [0 x { i64, [0 x i64] }*] }* %_721, { i64, [0 x { i64, [0 x i64] }*] }** %_689
  %_722 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_689
  %_725 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_722 to i64*
  %_723 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_722, i32 0, i32 1, i32 0
  %_724 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_723
  %_728 = bitcast { i64, [0 x i64] }* %_724 to i64*
  %_726 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_724, i32 0, i32 1, i32 0
  %_727 = load i64, i64* %_726
  ret i64 %_727
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
