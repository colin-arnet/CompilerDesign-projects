; generated from: oatprograms/fibo.oat
target triple = "x86_64-unknown-linux"
define i64 @fibR(i64 %n) {
  %_n3675 = alloca i64
  store i64 %n, i64* %_n3675
  %_3676 = load i64, i64* %_n3675
  %_3677 = icmp eq i64 %_3676, 0
  br i1 %_3677, label %_if3678, label %_else3679
_if3678:
  ret i64 0
_else3679:
  %_3681 = load i64, i64* %_n3675
  %_3682 = icmp eq i64 %_3681, 1
  br i1 %_3682, label %_if3683, label %_else3684
_if3683:
  ret i64 1
_else3684:
  %_3686 = load i64, i64* %_n3675
  %_3687 = sub i64 %_3686, 1
  %_3688 = call i64 @fibR(i64 %_3687)
  %_3689 = load i64, i64* %_n3675
  %_3690 = sub i64 %_3689, 2
  %_3691 = call i64 @fibR(i64 %_3690)
  %_3692 = add i64 %_3688, %_3691
  ret i64 %_3692
}

define i64 @fibI(i64 %n) {
  %_3644 = alloca i64
  %_3645 = alloca i64
  %_3665 = alloca i64
  %_n3643 = alloca i64
  store i64 %n, i64* %_n3643
  store i64 0, i64* %_3644
  store i64 1, i64* %_3645
  %_3646 = load i64, i64* %_n3643
  %_3647 = icmp eq i64 %_3646, 0
  br i1 %_3647, label %_if3648, label %_else3649
_if3648:
  %_3651 = load i64, i64* %_3644
  ret i64 %_3651
_else3649:
  %_3652 = load i64, i64* %_n3643
  %_3653 = icmp eq i64 %_3652, 1
  br i1 %_3653, label %_if3654, label %_else3655
_if3654:
  %_3657 = load i64, i64* %_3645
  ret i64 %_3657
_else3655:
  br label %_cnd3661
_cnd3661:
  %_3658 = load i64, i64* %_n3643
  %_3659 = sub i64 %_3658, 2
  %_3660 = icmp sgt i64 %_3659, 0
  br i1 %_3660, label %_loop3663, label %_end3662
_loop3663:
  %_3664 = load i64, i64* %_3645
  store i64 %_3664, i64* %_3665
  %_3666 = load i64, i64* %_3645
  %_3667 = load i64, i64* %_3644
  %_3668 = add i64 %_3666, %_3667
  store i64 %_3668, i64* %_3645
  %_3669 = load i64, i64* %_3665
  store i64 %_3669, i64* %_3644
  %_3670 = load i64, i64* %_n3643
  %_3671 = sub i64 %_3670, 1
  store i64 %_3671, i64* %_n3643
  br label %_cnd3661
_end3662:
  %_3672 = load i64, i64* %_3644
  %_3673 = load i64, i64* %_3645
  %_3674 = add i64 %_3672, %_3673
  ret i64 %_3674
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3633 = alloca i64
  %_argv3632 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3632
  %_argc3631 = alloca i64
  store i64 %argc, i64* %_argc3631
  store i64 1, i64* %_3633
  %_3634 = call i64 @fibR(i64 12)
  %_3635 = icmp eq i64 %_3634, 144
  %_3636 = call i64 @fibI(i64 12)
  %_3637 = icmp eq i64 %_3636, 144
  %_3638 = and i1 %_3635, %_3637
  br i1 %_3638, label %_if3639, label %_else3640
_if3639:
  store i64 0, i64* %_3633
  br label %_else3640
_else3640:
  %_3642 = load i64, i64* %_3633
  ret i64 %_3642
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
