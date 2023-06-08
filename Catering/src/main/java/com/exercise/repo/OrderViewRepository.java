package com.exercise.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.exercise.model.OrderView;

public interface OrderViewRepository extends JpaRepository<OrderView, String> {
//	@Query(value = "SELECT people, date FROM order_view WHERE date BETWEEN :startDate AND :endDate", nativeQuery = true)
//    List<Object[]> findOrderByDateRange(String startDate, String endDate);
//    
    @Query(value = "SELECT people, date, com_price, emp_price FROM lunch_order_view WHERE date BETWEEN :startDate AND :endDate", nativeQuery = true)
    List<Object[]> findOrderByDateRange(String startDate, String endDate);

}

