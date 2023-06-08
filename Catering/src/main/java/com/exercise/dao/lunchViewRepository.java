package com.exercise.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.exercise.model.lunchView;
@Repository
public interface lunchViewRepository extends JpaRepository<lunchView,String> 
{
	 @Query(value = "SELECT * FROM lunch_view", nativeQuery = true)
		List<lunchView> findAll();
		
		@Query(value = "SELECT lv FROM lunchView lv WHERE lv.ldate = (SELECT MAX(ldate) FROM lunchView)")
	    lunchView findByMaxDate();
		
		 @Query(value = "SELECT lv FROM lunchView lv ORDER BY lv.ldate DESC")
		    List<lunchView> findLastFiveRows();
		    
		    List<lunchView> findTop5ByOrderByLdateDesc();
}
