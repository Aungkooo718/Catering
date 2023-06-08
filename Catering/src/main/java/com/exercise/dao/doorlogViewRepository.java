package com.exercise.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.exercise.model.doorlogView;

@Repository
public interface doorlogViewRepository extends JpaRepository<doorlogView, String> 
{
	@Query(value = "SELECT * FROM doorlog_view", nativeQuery = true)
	List<doorlogView> findAll();
	
		
		 @Query("SELECT d.doorLogNo FROM doorlogView d WHERE d.date = ?1 AND d.eat = 'no' AND d.status = 'register'")
		 List<String> findRNE(String date);
		 
		 @Query("SELECT d.doorLogNo FROM doorlogView d WHERE d.date = ?1 AND d.eat = 'yes' AND d.status = 'register'")
		 List<String> findRE(String date);
		 
		 @Query("SELECT d.doorLogNo FROM doorlogView d WHERE d.date = ?1 AND d.eat = 'yes' AND d.status = 'unregister'")
		 List<String> findUE(String date);
		 
		 @Query("SELECT d.date FROM doorlogView d WHERE d.doorLogNo = ?1 AND d.eat = 'no' AND d.status = 'register'")
		 List<String> findRNEdate(String doorLogNo);
		 
		 @Query("SELECT d.date FROM doorlogView d WHERE d.doorLogNo = ?1 AND d.eat = 'yes' AND d.status = 'register'")
		 List<String> findREdate(String doorLogNo);
		 
		 @Query("SELECT d.date FROM doorlogView d WHERE d.doorLogNo = ?1 AND d.eat = 'yes' AND d.status = 'unregister'")
		 List<String> findUEdate(String doorLogNo);
}
