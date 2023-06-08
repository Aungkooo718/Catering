package com.exercise.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.exercise.model.Announce;


public interface AnnounceRepo extends JpaRepository<Announce,Long>{

	    Announce findFirstByOrderByIdDesc();
	    
	    
	    @Query("SELECT e FROM Announce e WHERE e.days <= CURRENT_DATE")
	    List<Announce> findAllExpired();
	    
	  }
