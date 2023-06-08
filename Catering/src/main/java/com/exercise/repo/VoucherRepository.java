package com.exercise.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.exercise.dto.Vouchers;
import com.exercise.model.AvoidMeat;



public interface VoucherRepository extends JpaRepository<Vouchers,Integer> {

	
	Vouchers findById(int id);
	List<Vouchers> findByWeeklyVoucher(String weeklyVoucher);
}
