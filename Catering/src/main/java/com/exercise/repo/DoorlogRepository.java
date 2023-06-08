package com.exercise.repo;
import java.sql.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.exercise.model.*;

public interface DoorlogRepository extends JpaRepository<Doorlog,DoorlogKey>{
	@Query("SELECT d.id.doorlogno FROM Doorlog d ORDER BY d.id.doorlogtime DESC")
	String findDoorlogNoByOrderByDoorlogTimeDesc();

	@Query(value = "SELECT doorlogno FROM doorlog_tbl WHERE doorlogtime = (SELECT MAX(doorlogtime) FROM doorlog_tbl)", nativeQuery = true)
    List<String> findDoorlogNosWithMaxDoorlogTime();
	
	@Query(value = "SELECT MAX(doorlogtime) FROM doorlog_tbl", nativeQuery = true)
    String getMaxDoorlogtime();
	
	@Query(value = "SELECT doorlogno, doorlogtime FROM doorlog_tbl WHERE doorlogtime BETWEEN :startDate AND :endDate", nativeQuery = true)
    List<Object[]> findDoorlogNosByDateRange(String startDate,String endDate);
    
    @Query(value = "SELECT doorlogtime FROM doorlog_tbl WHERE doorlogtime = ?1", nativeQuery = true)
    List<String> findDoorlogtimeByDate(String date);
    
    @Query(value = "SELECT MAX(doorlogtime) FROM doorlog_tbl WHERE MONTH(doorlogtime) = MONTH(CURDATE())", nativeQuery = true)
    String findMaxDoorLogTimeOfCurrentMonth();
    
    @Query(value = "SELECT MAX(doorlogtime) FROM doorlog_tbl WHERE Week(doorlogtime) = Week(CURDATE())", nativeQuery = true)
    String findMaxDoorLogTimeOfCurrentWeek();
    
    
    @Query(value = "SELECT d.doorlogtime FROM doorlog_tbl AS d JOIN date_register AS dr ON d.doorlogno = dr.door_log_no AND DATE(d.doorlogtime) = dr.date "
            + "WHERE d.doorlogno = :doorlogno "
            + "AND DATE(d.doorlogtime) >= :startDate "
            + "AND DATE(d.doorlogtime) <= :endDate", nativeQuery = true)
    List<Object> findMatchingDates(String doorlogno, String startDate, String endDate);
    
    @Query(value = "SELECT d.doorlogtime FROM doorlog_tbl AS d "
            + "LEFT JOIN date_register AS dr ON d.doorlogno = dr.door_log_no AND d.doorlogtime = dr.date "
            + "WHERE d.doorlogno = :doorlogno AND d.doorlogtime >= :startDate "
            + "AND d.doorlogtime <= :endDate AND dr.date IS NULL", nativeQuery = true)
    List<Object> findMissingDates(String doorlogno,String startDate,String endDate);
    
    @Query(value = "SELECT dr.date FROM date_register AS dr WHERE dr.door_log_no = :doorlogno "
            + "    AND dr.date >= :startDate AND dr.date <= :endDate "
            + "    AND dr.date NOT IN (SELECT d.doorlogtime "
            + "        FROM doorlog_tbl AS d WHERE d.doorlogno = :doorlogno)", nativeQuery = true)
    List<Object> findMissingDatesFromReg(String doorlogno,String startDate,String endDate);
}
