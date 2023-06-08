//package com.exercise.service;
//
//import java.util.ArrayList;
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//
//import com.exercise.repo.HolidayRepository;
//import com.exercise.dao.RegisterRepository;
//import com.exercise.dto.DateRegister;
//import com.exercise.dto.register;
//import com.exercise.model.AvoidMeat;
//import com.exercise.model.Holiday;
//
//
//
//@Service
//public  class RegisterServiceImpl implements RegisterService {
//
//    @Autowired
//    private RegisterRepository regRepository;
//    @Autowired
//	 HolidayRepository holidayRepo;
//
//    public register save(register reg,List<DateRegister> date,List<Integer> avoidMeat) {
//    	for(DateRegister A:date) {
//    		A.setRegister(reg);
//    	}
//        
//        reg.setDate(date);
//        reg.setAvoidMeatList(avoidMeat);
//     
//        reg = regRepository.save(reg);
//
//        return reg;
//
//    }
//    public List<Holiday> getAllHoliday() {
//		return holidayRepo.findAll();
//	}
//
//    public register findByEmployeeId(int employeeId) {
//        register reg = regRepository.findByEmployeeId(employeeId);
//        return reg;
//    }
//
//	
//}