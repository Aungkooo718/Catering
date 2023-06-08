package com.exercise.repo;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.exercise.model.AvoidMeat;


public interface AvoidMeatRepository extends JpaRepository<AvoidMeat,Integer>{
	AvoidMeat findById(int id);
	 @Query(value = "SELECT * FROM catering.avoid_meat u WHERE is_delete=0", nativeQuery = true)
	List<AvoidMeat> SelectAll();
	
	@Modifying
	@Transactional
	@Query(value= "update AvoidMeat u set u.isDelete = 1 where u.id=?1 ")
	 int softDelete(int id);
}
