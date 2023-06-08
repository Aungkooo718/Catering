package com.exercise.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.exercise.dto.Employee;
import com.exercise.dto.register;

public interface EmployeeRepository extends JpaRepository<Employee,Long>{
	Employee findById(Integer id);

	Employee findByDoorLogNo(String doorLogNo);
	Employee findByStaffId(String staffid);
	Employee findByEmail(String email);
	 public Employee findByResetPasswordToken(String token);
	 
	
	 @Query(value="select * from employee where door_log_no!='555555'",nativeQuery=true)
	 List<Employee> findAllEmployees();
	 @Query(value= "update Employee e set e.password=?1 where e.email=?2 ")
		int NewPasChange(String pas,String email);
	 
	 @Query( "SELECT e FROM Employee e WHERE e.emailNoti ='1'")
	    List<Employee> getREG(); 
	 
	 @Query(value = "SELECT name FROM employee where staff_id=:staffId", nativeQuery = true)
     String findEmpName(String staffId);
	 
	 @Query(value = "SELECT * FROM catering.employee WHERE door_log_no != '555555'", nativeQuery = true)
	 List<Employee> findAllExceptDoorlogno();
	 
	 List<Employee> findByRole(String role);
	 
	 List<Employee> findBydepartment(String department);
	 
	  @Modifying
	   @Transactional
	   @Query("UPDATE Employee e SET e.password = :newPassword WHERE e.id = :employeeId")
	   void updatePassword(int employeeId, String newPassword);
	  
	   @Modifying
	   @Transactional
	   @Query("UPDATE Employee e SET e.name=?1,e.email=?2 WHERE e.email = ?3")
	   int updateWithEmail1(String employeeName,String employeeEmail,String email);
	   
	   @Query("Update Employee e set e.enabled =?2 where e.email=?1 ")
		 @Modifying
		 public void updateEnabledStatus(@Param("email")String email,@Param("enabled")boolean enabled);
		 
		 @Query("Update Employee e set e.failedAttempt = ?1 where e.email= ?2 ")
		 @Modifying
		 public void updateFailedAttempt(int failedAttempt,String email);
		 
		 @Query("SELECT e FROM Employee e WHERE e.role = 'ADMIN'")
		    List<Employee> findAllAdminEmployees();

}
