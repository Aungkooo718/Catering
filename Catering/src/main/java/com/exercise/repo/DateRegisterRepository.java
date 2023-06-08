package com.exercise.repo;

import java.time.LocalDate;
import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.exercise.dto.DateRegister;
import com.exercise.dto.register;

public interface DateRegisterRepository extends JpaRepository<DateRegister, Long> {
    List<String> findDoorLogNoByDate(String doorlogTime);
    @Query(value = "SELECT dr.door_log_no FROM date_register dr WHERE dr.date = :date", nativeQuery = true)
    List<String> findDoorlogNoByDate(@Param("date") String date);
    @Query(value = "SELECT COUNT(dr.door_log_no) FROM date_register dr WHERE dr.date = :date", nativeQuery = true)
    int getDoorlogNoCountByDate(@Param("date") String date);
    @Query(value = "SELECT dr.door_log_no, dr.date FROM date_register dr WHERE dr.date BETWEEN :startDate AND :endDate", nativeQuery = true)
    List<Object[]> findDoorLogNosAndDateByDateRange(String startDate, String endDate);
    @Query(value="SELECT d.date FROM date_register d WHERE d.door_log_no = ?1", nativeQuery = true)
    List<String> findDateByDoorLogNo(String doorLogNo);
    @Query(value="SELECT max(dr.date) FROM date_register dr WHERE dr.door_log_no = :doorLogNo",nativeQuery = true)
    String getLastDateByDoorLogNo(@Param("doorLogNo") String doorLogNo);
    
    @Modifying
    @Query("DELETE FROM DateRegister e WHERE e.register = :doorLogNo")
    void deleteAllBeforeStaffId(@Param("doorLogNo") register doorLogNo);

}