; generated from: oatprograms/life.oat
target triple = "x86_64-unknown-linux"
@len = global i64 4

define i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %board, i64 %i, i64 %j, i64 %count) {
  %_count4669 = alloca i64
  store i64 %count, i64* %_count4669
  %_j4668 = alloca i64
  store i64 %j, i64* %_j4668
  %_i4667 = alloca i64
  store i64 %i, i64* %_i4667
  %_board4666 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %board, { i64, [0 x { i64, [0 x i64] }*] }** %_board4666
  %_4670 = load i64, i64* %_i4667
  %_4671 = icmp sge i64 %_4670, 0
  %_4672 = load i64, i64* %_j4668
  %_4673 = icmp sge i64 %_4672, 0
  %_4674 = and i1 %_4671, %_4673
  %_4675 = load i64, i64* %_i4667
  %_4676 = load i64, i64* @len
  %_4677 = icmp slt i64 %_4675, %_4676
  %_4678 = and i1 %_4674, %_4677
  %_4679 = load i64, i64* %_j4668
  %_4680 = load i64, i64* @len
  %_4681 = icmp slt i64 %_4679, %_4680
  %_4682 = and i1 %_4678, %_4681
  br i1 %_4682, label %_if4683, label %_else4684
_if4683:
  %_4686 = load i64, i64* %_count4669
  %_4687 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4666
  %_4688 = load i64, i64* %_i4667
  %_4691 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_4687 to i64*
  %_4689 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_4687, i32 0, i32 1, i64 %_4688
  %_4690 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4689
  %_4692 = load i64, i64* %_j4668
  %_4695 = bitcast { i64, [0 x i64] }* %_4690 to i64*
  %_4693 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4690, i32 0, i32 1, i64 %_4692
  %_4694 = load i64, i64* %_4693
  %_4696 = add i64 %_4686, %_4694
  ret i64 %_4696
_else4684:
  %_4697 = load i64, i64* %_count4669
  ret i64 %_4697
}

define i64 @val_at({ i64, [0 x { i64, [0 x i64] }*] }* %board, i64 %i, i64 %j) {
  %_4592 = alloca i64
  %_4593 = alloca i64
  %_j4582 = alloca i64
  store i64 %j, i64* %_j4582
  %_i4581 = alloca i64
  store i64 %i, i64* %_i4581
  %_board4580 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %board, { i64, [0 x { i64, [0 x i64] }*] }** %_board4580
  %_4583 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4580
  %_4584 = load i64, i64* %_i4581
  %_4587 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_4583 to i64*
  %_4585 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_4583, i32 0, i32 1, i64 %_4584
  %_4586 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4585
  %_4588 = load i64, i64* %_j4582
  %_4591 = bitcast { i64, [0 x i64] }* %_4586 to i64*
  %_4589 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4586, i32 0, i32 1, i64 %_4588
  %_4590 = load i64, i64* %_4589
  store i64 %_4590, i64* %_4592
  store i64 0, i64* %_4593
  %_4599 = load i64, i64* %_4593
  %_4597 = load i64, i64* %_j4582
  %_4598 = sub i64 %_4597, 1
  %_4595 = load i64, i64* %_i4581
  %_4596 = sub i64 %_4595, 1
  %_4594 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4580
  %_4600 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_4594, i64 %_4596, i64 %_4598, i64 %_4599)
  store i64 %_4600, i64* %_4593
  %_4605 = load i64, i64* %_4593
  %_4604 = load i64, i64* %_j4582
  %_4602 = load i64, i64* %_i4581
  %_4603 = sub i64 %_4602, 1
  %_4601 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4580
  %_4606 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_4601, i64 %_4603, i64 %_4604, i64 %_4605)
  store i64 %_4606, i64* %_4593
  %_4612 = load i64, i64* %_4593
  %_4610 = load i64, i64* %_j4582
  %_4611 = add i64 %_4610, 1
  %_4608 = load i64, i64* %_i4581
  %_4609 = sub i64 %_4608, 1
  %_4607 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4580
  %_4613 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_4607, i64 %_4609, i64 %_4611, i64 %_4612)
  store i64 %_4613, i64* %_4593
  %_4618 = load i64, i64* %_4593
  %_4616 = load i64, i64* %_j4582
  %_4617 = sub i64 %_4616, 1
  %_4615 = load i64, i64* %_i4581
  %_4614 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4580
  %_4619 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_4614, i64 %_4615, i64 %_4617, i64 %_4618)
  store i64 %_4619, i64* %_4593
  %_4624 = load i64, i64* %_4593
  %_4622 = load i64, i64* %_j4582
  %_4623 = add i64 %_4622, 1
  %_4621 = load i64, i64* %_i4581
  %_4620 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4580
  %_4625 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_4620, i64 %_4621, i64 %_4623, i64 %_4624)
  store i64 %_4625, i64* %_4593
  %_4631 = load i64, i64* %_4593
  %_4629 = load i64, i64* %_j4582
  %_4630 = sub i64 %_4629, 1
  %_4627 = load i64, i64* %_i4581
  %_4628 = add i64 %_4627, 1
  %_4626 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4580
  %_4632 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_4626, i64 %_4628, i64 %_4630, i64 %_4631)
  store i64 %_4632, i64* %_4593
  %_4637 = load i64, i64* %_4593
  %_4636 = load i64, i64* %_j4582
  %_4634 = load i64, i64* %_i4581
  %_4635 = add i64 %_4634, 1
  %_4633 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4580
  %_4638 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_4633, i64 %_4635, i64 %_4636, i64 %_4637)
  store i64 %_4638, i64* %_4593
  %_4644 = load i64, i64* %_4593
  %_4642 = load i64, i64* %_j4582
  %_4643 = add i64 %_4642, 1
  %_4640 = load i64, i64* %_i4581
  %_4641 = add i64 %_4640, 1
  %_4639 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4580
  %_4645 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_4639, i64 %_4641, i64 %_4643, i64 %_4644)
  store i64 %_4645, i64* %_4593
  %_4646 = load i64, i64* %_4592
  %_4647 = icmp eq i64 %_4646, 1
  br i1 %_4647, label %_if4648, label %_else4649
_if4648:
  %_4651 = load i64, i64* %_4593
  %_4652 = icmp slt i64 %_4651, 2
  br i1 %_4652, label %_if4653, label %_else4654
_if4653:
  ret i64 0
_else4654:
  %_4656 = load i64, i64* %_4593
  %_4657 = icmp slt i64 %_4656, 4
  br i1 %_4657, label %_if4658, label %_else4659
_if4658:
  ret i64 1
_else4659:
  br label %_end4655
_end4655:
  ret i64 0
_else4649:
  %_4661 = load i64, i64* %_4593
  %_4662 = icmp eq i64 %_4661, 3
  br i1 %_4662, label %_if4663, label %_else4664
_if4663:
  ret i64 1
_else4664:
  ret i64 0
_end4665:
  ret i64 0
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_4488 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_4519 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_4520 = alloca i64
  %_4531 = alloca i64
  %_4552 = alloca i64
  %_4559 = alloca i64
  %_argv4457 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4457
  %_argc4456 = alloca i64
  store i64 %argc, i64* %_argc4456
  %_raw_array4458 = call i64* @oat_alloc_array(i64 4)
  %_array4459 = bitcast i64* %_raw_array4458 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array4478 = call i64* @oat_alloc_array(i64 4)
  %_array4479 = bitcast i64* %_raw_array4478 to { i64, [0 x i64] }*
  %_4483 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4479, i32 0, i32 1, i32 3
  store i64 0, i64* %_4483
  %_4482 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4479, i32 0, i32 1, i32 2
  store i64 0, i64* %_4482
  %_4481 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4479, i32 0, i32 1, i32 1
  store i64 0, i64* %_4481
  %_4480 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4479, i32 0, i32 1, i32 0
  store i64 0, i64* %_4480
  %_raw_array4472 = call i64* @oat_alloc_array(i64 4)
  %_array4473 = bitcast i64* %_raw_array4472 to { i64, [0 x i64] }*
  %_4477 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4473, i32 0, i32 1, i32 3
  store i64 0, i64* %_4477
  %_4476 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4473, i32 0, i32 1, i32 2
  store i64 1, i64* %_4476
  %_4475 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4473, i32 0, i32 1, i32 1
  store i64 1, i64* %_4475
  %_4474 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4473, i32 0, i32 1, i32 0
  store i64 1, i64* %_4474
  %_raw_array4466 = call i64* @oat_alloc_array(i64 4)
  %_array4467 = bitcast i64* %_raw_array4466 to { i64, [0 x i64] }*
  %_4471 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4467, i32 0, i32 1, i32 3
  store i64 1, i64* %_4471
  %_4470 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4467, i32 0, i32 1, i32 2
  store i64 1, i64* %_4470
  %_4469 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4467, i32 0, i32 1, i32 1
  store i64 1, i64* %_4469
  %_4468 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4467, i32 0, i32 1, i32 0
  store i64 0, i64* %_4468
  %_raw_array4460 = call i64* @oat_alloc_array(i64 4)
  %_array4461 = bitcast i64* %_raw_array4460 to { i64, [0 x i64] }*
  %_4465 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4461, i32 0, i32 1, i32 3
  store i64 0, i64* %_4465
  %_4464 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4461, i32 0, i32 1, i32 2
  store i64 0, i64* %_4464
  %_4463 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4461, i32 0, i32 1, i32 1
  store i64 0, i64* %_4463
  %_4462 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4461, i32 0, i32 1, i32 0
  store i64 0, i64* %_4462
  %_4487 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4459, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array4479, { i64, [0 x i64] }** %_4487
  %_4486 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4459, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array4473, { i64, [0 x i64] }** %_4486
  %_4485 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4459, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array4467, { i64, [0 x i64] }** %_4485
  %_4484 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4459, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array4461, { i64, [0 x i64] }** %_4484
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4459, { i64, [0 x { i64, [0 x i64] }*] }** %_4488
  %_raw_array4489 = call i64* @oat_alloc_array(i64 4)
  %_array4490 = bitcast i64* %_raw_array4489 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array4509 = call i64* @oat_alloc_array(i64 4)
  %_array4510 = bitcast i64* %_raw_array4509 to { i64, [0 x i64] }*
  %_4514 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4510, i32 0, i32 1, i32 3
  store i64 0, i64* %_4514
  %_4513 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4510, i32 0, i32 1, i32 2
  store i64 0, i64* %_4513
  %_4512 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4510, i32 0, i32 1, i32 1
  store i64 0, i64* %_4512
  %_4511 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4510, i32 0, i32 1, i32 0
  store i64 0, i64* %_4511
  %_raw_array4503 = call i64* @oat_alloc_array(i64 4)
  %_array4504 = bitcast i64* %_raw_array4503 to { i64, [0 x i64] }*
  %_4508 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4504, i32 0, i32 1, i32 3
  store i64 0, i64* %_4508
  %_4507 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4504, i32 0, i32 1, i32 2
  store i64 0, i64* %_4507
  %_4506 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4504, i32 0, i32 1, i32 1
  store i64 0, i64* %_4506
  %_4505 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4504, i32 0, i32 1, i32 0
  store i64 0, i64* %_4505
  %_raw_array4497 = call i64* @oat_alloc_array(i64 4)
  %_array4498 = bitcast i64* %_raw_array4497 to { i64, [0 x i64] }*
  %_4502 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4498, i32 0, i32 1, i32 3
  store i64 0, i64* %_4502
  %_4501 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4498, i32 0, i32 1, i32 2
  store i64 0, i64* %_4501
  %_4500 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4498, i32 0, i32 1, i32 1
  store i64 0, i64* %_4500
  %_4499 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4498, i32 0, i32 1, i32 0
  store i64 0, i64* %_4499
  %_raw_array4491 = call i64* @oat_alloc_array(i64 4)
  %_array4492 = bitcast i64* %_raw_array4491 to { i64, [0 x i64] }*
  %_4496 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4492, i32 0, i32 1, i32 3
  store i64 0, i64* %_4496
  %_4495 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4492, i32 0, i32 1, i32 2
  store i64 0, i64* %_4495
  %_4494 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4492, i32 0, i32 1, i32 1
  store i64 0, i64* %_4494
  %_4493 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4492, i32 0, i32 1, i32 0
  store i64 0, i64* %_4493
  %_4518 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4490, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array4510, { i64, [0 x i64] }** %_4518
  %_4517 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4490, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array4504, { i64, [0 x i64] }** %_4517
  %_4516 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4490, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array4498, { i64, [0 x i64] }** %_4516
  %_4515 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4490, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array4492, { i64, [0 x i64] }** %_4515
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4490, { i64, [0 x { i64, [0 x i64] }*] }** %_4519
  store i64 0, i64* %_4520
  br label %_cnd4523
_cnd4523:
  %_4521 = load i64, i64* %_4520
  %_4522 = icmp slt i64 %_4521, 4
  br i1 %_4522, label %_loop4525, label %_end4524
_loop4525:
  %_raw_array4526 = call i64* @oat_alloc_array(i64 4)
  %_array4527 = bitcast i64* %_raw_array4526 to { i64, [0 x i64] }*
  %_4528 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_4519
  %_4529 = load i64, i64* %_4520
  %_4530 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_4528, i32 0, i32 1, i64 %_4529
  store { i64, [0 x i64] }* %_array4527, { i64, [0 x i64] }** %_4530
  store i64 0, i64* %_4531
  br label %_cnd4534
_cnd4534:
  %_4532 = load i64, i64* %_4531
  %_4533 = icmp slt i64 %_4532, 4
  br i1 %_4533, label %_loop4536, label %_end4535
_loop4536:
  %_4539 = load i64, i64* %_4531
  %_4538 = load i64, i64* %_4520
  %_4537 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_4488
  %_4540 = call i64 @val_at({ i64, [0 x { i64, [0 x i64] }*] }* %_4537, i64 %_4538, i64 %_4539)
  %_4541 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_4519
  %_4542 = load i64, i64* %_4520
  %_4545 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_4541 to i64*
  %_4543 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_4541, i32 0, i32 1, i64 %_4542
  %_4544 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4543
  %_4546 = load i64, i64* %_4531
  %_4547 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4544, i32 0, i32 1, i64 %_4546
  store i64 %_4540, i64* %_4547
  %_4548 = load i64, i64* %_4531
  %_4549 = add i64 %_4548, 1
  store i64 %_4549, i64* %_4531
  br label %_cnd4534
_end4535:
  %_4550 = load i64, i64* %_4520
  %_4551 = add i64 %_4550, 1
  store i64 %_4551, i64* %_4520
  br label %_cnd4523
_end4524:
  store i64 0, i64* %_4552
  br label %_cnd4556
_cnd4556:
  %_4553 = load i64, i64* %_4552
  %_4554 = load i64, i64* @len
  %_4555 = icmp slt i64 %_4553, %_4554
  br i1 %_4555, label %_loop4558, label %_end4557
_loop4558:
  store i64 0, i64* %_4559
  br label %_cnd4563
_cnd4563:
  %_4560 = load i64, i64* %_4559
  %_4561 = load i64, i64* @len
  %_4562 = icmp slt i64 %_4560, %_4561
  br i1 %_4562, label %_loop4565, label %_end4564
_loop4565:
  %_4566 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_4519
  %_4567 = load i64, i64* %_4552
  %_4570 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_4566 to i64*
  %_4568 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_4566, i32 0, i32 1, i64 %_4567
  %_4569 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4568
  %_4571 = load i64, i64* %_4559
  %_4574 = bitcast { i64, [0 x i64] }* %_4569 to i64*
  %_4572 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4569, i32 0, i32 1, i64 %_4571
  %_4573 = load i64, i64* %_4572
  call void @print_int(i64 %_4573)
  %_4576 = load i64, i64* %_4559
  %_4577 = add i64 %_4576, 1
  store i64 %_4577, i64* %_4559
  br label %_cnd4563
_end4564:
  %_4578 = load i64, i64* %_4552
  %_4579 = add i64 %_4578, 1
  store i64 %_4579, i64* %_4552
  br label %_cnd4556
_end4557:
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
