package com.exercise.dao;

import java.sql.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.exercise.dto.register;
import com.exercise.model.AvoidMeat;


public interface RegisterRepository extends JpaRepository<register,Long>{
  
	
		public register findByStaffId(int staffId);
		public register findByEmail(String email);
		@Query("SELECT r FROM register r WHERE r.email = :email")
	    List<register> findAllByEmail(@Param("email") String email);
		public register findByDoorLogNo(String doorLogNo);
		List<String> findDoorlogNosByDate(Date doorlogTime);
		@Query("SELECT r.avoidMeatList FROM register r WHERE r.doorLogNo = :doorLogNo")
	    List<AvoidMeat> findAvoidMeatListByDoorLogNo(String doorLogNo);
		
		 @Query("SELECT d.date, COUNT(r) FROM register r LEFT JOIN r.date d WHERE d.date BETWEEN :SdateValue AND :EdateValue GROUP BY d.date ORDER BY d.date ASC")
		    List<Object[]> findAllWithDateCount5(@Param("SdateValue") String startDate,@Param("EdateValue") String endDate);
			    
	    
	    
	    @Query("SELECT a.name, COUNT(r) FROM register r LEFT JOIN r.avoidMeatList a  LEFT JOIN r.date d WHERE d.date= :date GROUP BY a.name")
	     List<Object[]> findAllWithAvoidCount(String date);
   
	    
	    
	     @Query("SELECT r FROM register r WHERE r.doorLogNo = :doorLogNo")
		    register findAvoidMeatListByDoorLogNo1(String doorLogNo);
			

		
	    
	    
}
