package com.exercise.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.exercise.model.PriceInfo;

public interface PriceInfoRepository extends JpaRepository<PriceInfo,Integer>{
	@Query("SELECT t FROM PriceInfo t WHERE t.id = 1")
    PriceInfo findPrice();
	
	@Query("SELECT p.companyPrice FROM PriceInfo p")
    Integer getCompanyPrice();
	@Query("SELECT e.employeePrice FROM PriceInfo e")
    Integer getEmployeePrice();
	
	
}
