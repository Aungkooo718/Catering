package com.exercise.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;


import com.exercise.dto.WeeklyVoucher;

public interface WeeklyVoucherRepository extends JpaRepository<WeeklyVoucher,Integer> {

	
	@Query("SELECT w  FROM WeeklyVoucher w where w.startDate BETWEEN :startDateValue AND :endDateValue")
	List<WeeklyVoucher> findByVoucher(@Param("startDateValue") String startDate,@Param("endDateValue") String endDate);
	
	WeeklyVoucher findById(int id);
	
	WeeklyVoucher findByStartDate(String startDate);
	
	List<WeeklyVoucher> findByStatus(String status);
	
	@Query("SELECT w  FROM WeeklyVoucher w where w.status =:status AND w.startDate BETWEEN :startDateValue AND :endDateValue")
	List<WeeklyVoucher> findByVoucherPage(@Param("status") String status,@Param("startDateValue") String startDate,@Param("endDateValue") String endDate);
}
