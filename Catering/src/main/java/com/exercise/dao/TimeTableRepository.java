package com.exercise.dao;

import java.sql.Time;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.exercise.model.TimeTable;



@Repository
public interface TimeTableRepository extends JpaRepository<TimeTable, Integer> {

	@Query("SELECT t FROM TimeTable t WHERE t.id = 1")
    TimeTable findTime();
	
	@Modifying
	@Transactional
	@Query("Update TimeTable t Set t.date=?1,t.time=?2 WHERE t.id = ?3")
	int UpdateTime(String date, Time time,int id);
}
