; generated from: oatprograms/insertion_sort.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @insert({ i64, [0 x i64] }* %partial, i64 %len, i64 %insertee) {
  %_4608 = alloca { i64, [0 x i64] }*
  %_4609 = alloca i64
  %_4623 = alloca i1
  %_4636 = alloca i64
  %_insertee4603 = alloca i64
  store i64 %insertee, i64* %_insertee4603
  %_len4602 = alloca i64
  store i64 %len, i64* %_len4602
  %_partial4601 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %partial, { i64, [0 x i64] }** %_partial4601
  %_4604 = load i64, i64* %_len4602
  %_4605 = add i64 %_4604, 1
  %_raw_array4606 = call i64* @oat_alloc_array(i64 %_4605)
  %_array4607 = bitcast i64* %_raw_array4606 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4607, { i64, [0 x i64] }** %_4608
  store i64 0, i64* %_4609
  br label %_cnd4614
_cnd4614:
  %_4610 = load i64, i64* %_4609
  %_4611 = load i64, i64* %_len4602
  %_4612 = add i64 %_4611, 1
  %_4613 = icmp slt i64 %_4610, %_4612
  br i1 %_4613, label %_loop4616, label %_end4615
_loop4616:
  %_4617 = mul i64 1, -1
  %_4618 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4608
  %_4619 = load i64, i64* %_4609
  %_4620 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4618, i32 0, i32 1, i64 %_4619
  store i64 %_4617, i64* %_4620
  %_4621 = load i64, i64* %_4609
  %_4622 = add i64 %_4621, 1
  store i64 %_4622, i64* %_4609
  br label %_cnd4614
_end4615:
  store i1 1, i1* %_4623
  %_4624 = load i64, i64* %_insertee4603
  %_4625 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial4601
  %_4628 = bitcast { i64, [0 x i64] }* %_4625 to i64*
  %_4626 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4625, i32 0, i32 1, i32 0
  %_4627 = load i64, i64* %_4626
  %_4629 = icmp slt i64 %_4624, %_4627
  br i1 %_4629, label %_if4630, label %_else4631
_if4630:
  store i1 0, i1* %_4623
  %_4633 = load i64, i64* %_insertee4603
  %_4634 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4608
  %_4635 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4634, i32 0, i32 1, i32 0
  store i64 %_4633, i64* %_4635
  br label %_else4631
_else4631:
  store i64 0, i64* %_4636
  br label %_cnd4640
_cnd4640:
  %_4637 = load i64, i64* %_4636
  %_4638 = load i64, i64* %_len4602
  %_4639 = icmp slt i64 %_4637, %_4638
  br i1 %_4639, label %_loop4642, label %_end4641
_loop4642:
  %_4643 = load i1, i1* %_4623
  br i1 %_4643, label %_if4644, label %_else4645
_if4644:
  %_4647 = load i64, i64* %_insertee4603
  %_4648 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial4601
  %_4649 = load i64, i64* %_4636
  %_4652 = bitcast { i64, [0 x i64] }* %_4648 to i64*
  %_4650 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4648, i32 0, i32 1, i64 %_4649
  %_4651 = load i64, i64* %_4650
  %_4653 = icmp sgt i64 %_4647, %_4651
  br i1 %_4653, label %_if4654, label %_else4655
_if4654:
  store i1 0, i1* %_4623
  %_4657 = load i64, i64* %_insertee4603
  %_4658 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4608
  %_4659 = load i64, i64* %_4636
  %_4660 = add i64 %_4659, 1
  %_4661 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4658, i32 0, i32 1, i64 %_4660
  store i64 %_4657, i64* %_4661
  %_4662 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial4601
  %_4663 = load i64, i64* %_4636
  %_4666 = bitcast { i64, [0 x i64] }* %_4662 to i64*
  %_4664 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4662, i32 0, i32 1, i64 %_4663
  %_4665 = load i64, i64* %_4664
  %_4667 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4608
  %_4668 = load i64, i64* %_4636
  %_4669 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4667, i32 0, i32 1, i64 %_4668
  store i64 %_4665, i64* %_4669
  br label %_end4656
_else4655:
  %_4670 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial4601
  %_4671 = load i64, i64* %_4636
  %_4674 = bitcast { i64, [0 x i64] }* %_4670 to i64*
  %_4672 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4670, i32 0, i32 1, i64 %_4671
  %_4673 = load i64, i64* %_4672
  %_4675 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4608
  %_4676 = load i64, i64* %_4636
  %_4677 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4675, i32 0, i32 1, i64 %_4676
  store i64 %_4673, i64* %_4677
  br label %_end4656
_end4656:
  br label %_end4646
_else4645:
  %_4678 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial4601
  %_4679 = load i64, i64* %_4636
  %_4682 = bitcast { i64, [0 x i64] }* %_4678 to i64*
  %_4680 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4678, i32 0, i32 1, i64 %_4679
  %_4681 = load i64, i64* %_4680
  %_4683 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4608
  %_4684 = load i64, i64* %_4636
  %_4685 = add i64 %_4684, 1
  %_4686 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4683, i32 0, i32 1, i64 %_4685
  store i64 %_4681, i64* %_4686
  br label %_end4646
_end4646:
  %_4687 = load i64, i64* %_4636
  %_4688 = add i64 %_4687, 1
  store i64 %_4688, i64* %_4636
  br label %_cnd4640
_end4641:
  %_4689 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4608
  ret { i64, [0 x i64] }* %_4689
}

define { i64, [0 x i64] }* @insort({ i64, [0 x i64] }* %unsorted, i64 %len) {
  %_4576 = alloca { i64, [0 x i64] }*
  %_4583 = alloca i64
  %_len4572 = alloca i64
  store i64 %len, i64* %_len4572
  %_unsorted4571 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %unsorted, { i64, [0 x i64] }** %_unsorted4571
  %_raw_array4573 = call i64* @oat_alloc_array(i64 1)
  %_array4574 = bitcast i64* %_raw_array4573 to { i64, [0 x i64] }*
  %_4575 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4574, i32 0, i32 1, i32 0
  store i64 0, i64* %_4575
  store { i64, [0 x i64] }* %_array4574, { i64, [0 x i64] }** %_4576
  %_4577 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_unsorted4571
  %_4580 = bitcast { i64, [0 x i64] }* %_4577 to i64*
  %_4578 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4577, i32 0, i32 1, i32 0
  %_4579 = load i64, i64* %_4578
  %_4581 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4576
  %_4582 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4581, i32 0, i32 1, i32 0
  store i64 %_4579, i64* %_4582
  store i64 1, i64* %_4583
  br label %_cnd4587
_cnd4587:
  %_4584 = load i64, i64* %_4583
  %_4585 = load i64, i64* %_len4572
  %_4586 = icmp slt i64 %_4584, %_4585
  br i1 %_4586, label %_loop4589, label %_end4588
_loop4589:
  %_4592 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_unsorted4571
  %_4593 = load i64, i64* %_4583
  %_4596 = bitcast { i64, [0 x i64] }* %_4592 to i64*
  %_4594 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4592, i32 0, i32 1, i64 %_4593
  %_4595 = load i64, i64* %_4594
  %_4591 = load i64, i64* %_4583
  %_4590 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4576
  %_4597 = call { i64, [0 x i64] }* @insert({ i64, [0 x i64] }* %_4590, i64 %_4591, i64 %_4595)
  store { i64, [0 x i64] }* %_4597, { i64, [0 x i64] }** %_4576
  %_4598 = load i64, i64* %_4583
  %_4599 = add i64 %_4598, 1
  store i64 %_4599, i64* %_4583
  br label %_cnd4587
_end4588:
  %_4600 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4576
  ret { i64, [0 x i64] }* %_4600
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_4563 = alloca { i64, [0 x i64] }*
  %_4566 = alloca { i64, [0 x i64] }*
  %_argv4554 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4554
  %_argc4553 = alloca i64
  store i64 %argc, i64* %_argc4553
  %_raw_array4555 = call i64* @oat_alloc_array(i64 6)
  %_array4556 = bitcast i64* %_raw_array4555 to { i64, [0 x i64] }*
  %_4562 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4556, i32 0, i32 1, i32 5
  store i64 6, i64* %_4562
  %_4561 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4556, i32 0, i32 1, i32 4
  store i64 2, i64* %_4561
  %_4560 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4556, i32 0, i32 1, i32 3
  store i64 3, i64* %_4560
  %_4559 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4556, i32 0, i32 1, i32 2
  store i64 32, i64* %_4559
  %_4558 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4556, i32 0, i32 1, i32 1
  store i64 42, i64* %_4558
  %_4557 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4556, i32 0, i32 1, i32 0
  store i64 13, i64* %_4557
  store { i64, [0 x i64] }* %_array4556, { i64, [0 x i64] }** %_4563
  %_4564 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4563
  %_4565 = call { i64, [0 x i64] }* @insort({ i64, [0 x i64] }* %_4564, i64 6)
  store { i64, [0 x i64] }* %_4565, { i64, [0 x i64] }** %_4566
  %_4567 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4566
  %_4570 = bitcast { i64, [0 x i64] }* %_4567 to i64*
  %_4568 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4567, i32 0, i32 1, i32 5
  %_4569 = load i64, i64* %_4568
  ret i64 %_4569
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
