package com.exercise.service;

import java.util.List;

import javax.transaction.Transactional;

import java.sql.Date;
import java.util.ArrayList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.exercise.dao.RegisterRepository;
import com.exercise.dto.DateRegister;
import com.exercise.dto.register;
import com.exercise.model.AvoidMeat;
import com.exercise.model.AvoidMeatResponse;
import com.exercise.model.RegisterResponse;
import com.exercise.repo.AvoidMeatRepository;
import com.exercise.repo.DateRegisterRepository;

import java.util.Optional;

//@Component
@Service
public class RegisterService {

	@Autowired
	AvoidMeatRepository avoidmeatRepo;
	@Autowired
	RegisterRepository registerRepo;
	@Autowired
	DateRegisterRepository dateRegisterRepo;
	public List<String> findDoorlogNoByDate(String date) {
        return dateRegisterRepo.findDoorlogNoByDate(date);
    }
	@Transactional
	  public void saveRegisterWithAvoidMeats(register regist,List<DateRegister> date, List<Integer> avoidMeatIds) {
	    List<AvoidMeat> avoidmeats = new ArrayList<>();
	    for (Integer avoid_meat_id : avoidMeatIds) {
	      Optional<AvoidMeat> optionalCourse = avoidmeatRepo.findById(avoid_meat_id);
	      if (optionalCourse.isPresent()) {
	    	  avoidmeats.add(optionalCourse.get());
	      }
	      
	    }
	    for(DateRegister A:date) {
    		A.setRegister(regist);
    	}
        
        regist.setDate(date);
	    regist.setAvoidMeatList(avoidmeats);
	    registerRepo.save(regist);
	  }
	public List<RegisterResponse> findByRegisterCount5(String startDate,String endDate) {
    	int amount=0;
    	List<Object[]> reg=registerRepo.findAllWithDateCount5(startDate,endDate);
    	List<RegisterResponse> B=new ArrayList<RegisterResponse>();
    	for (Object[] result : reg) {
    	    String date1 = (String) result[0];
    	    Long count = (Long) result[1];
    	    RegisterResponse A=new RegisterResponse();
    	    if(amount==0) {
    	    A.setCount(count);
    	    A.setDate(date1);
    	    }
    	    if(amount==1) {
    	    	A.setCount1(count);
	    	    A.setDate1(date1);
    	    }
    	    if(amount==2) {
    	    	A.setCount2(count);
	    	    A.setDate2(date1);
    	    }
    	    if(amount==3) {
    	    	A.setCount3(count);
	    	    A.setDate3(date1);
    	    }
    	    if(amount==4) {
    	    	A.setCount4(count);
	    	    A.setDate4(date1);
    	    }
    	    B.add(A);
    	    amount++;
    	    System.out.println("Date5: " + date1+ ", Count5: " + count);
    	}
    return B;
    }
	   
	    
	    public List<AvoidMeatResponse> findByAvoidCount(String date) {
	    	List<Object[]> reg=registerRepo.findAllWithAvoidCount(date);
	    	List<AvoidMeatResponse> B=new ArrayList<AvoidMeatResponse>();
	    	for (Object[] result : reg) {
	    	    String name1 = (String) result[0];
	    	    Long count = (Long) result[1];
	    	    AvoidMeatResponse A=new AvoidMeatResponse();
	    	    A.setCount(count);
	    	    A.setAvoidName(name1);
	    	    B.add(A);
	    	    System.out.println(": " + name1+ ", Count: " + count);
	    	}
	    return B;
	    }
	    
	    
	  
	    
	    @Transactional
	    public register updateStudent(register regist,List<DateRegister> date, List<Integer> avoidMeatIds) {
	    	dateRegisterRepo.deleteAllBeforeStaffId(regist);
	    	
	        register register1 = registerRepo.findByEmail(regist.getEmail());
	                

	        register1.setDoorLogNo(regist.getDoorLogNo());;;
	        register1.setEmail(regist.getEmail());
	        register1.setName(regist.getName());
	        register1.setStaffId(regist.getStaffId());
	        
	        List<AvoidMeat> avoidmeats = new ArrayList<>();
		    for (Integer avoid_meat_id : avoidMeatIds) {
		      Optional<AvoidMeat> optionalCourse = avoidmeatRepo.findById(avoid_meat_id);
		      if (optionalCourse.isPresent()) {
		    	  avoidmeats.add(optionalCourse.get());
		      }
		      
		    }
	        
	   
	       
	        
	        for (DateRegister dateRegister : date) {
	            dateRegister.setRegister(register1);
	            
	        }

	       register1.setDate(date);

	       register1.setAvoidMeatList(avoidmeats);
	       

	        return  registerRepo.save(register1);
	    }
	    
	    
	    
	    
	    

	//public register save(register reg,List<DateRegister> date,List<Integer>avoidMeatId);
	//public register findByEmployeeId(int employeeId);
	
	
}
