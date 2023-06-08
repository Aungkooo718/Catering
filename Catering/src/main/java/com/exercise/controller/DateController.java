package com.exercise.controller;

import java.security.Principal;
import java.sql.Date;
import java.util.ArrayList;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.exercise.dao.RegisterRepository;
import com.exercise.dao.doorlogViewRepository;
import com.exercise.dto.DateRegister;
import com.exercise.dto.register;
import com.exercise.model.History;
import com.exercise.model.Holiday;
import com.exercise.model.REDate;
import com.exercise.service.ExcelService;
import com.exercise.service.RegisterService;

@RestController
@RequestMapping("/Holidays")
public class DateController {
	@Autowired
	  ExcelService fileService;
	@Autowired
	  RegisterService registerService;
	@Autowired
	  RegisterRepository registerRepo;
	@Autowired
	  doorlogViewRepository dlviewRepo;
	
	@GetMapping("/holidays")
	public List<Holiday> holidaysAjax() {
	    return fileService.getAllHoliday();
	}
	@GetMapping("/history")
	public List<History> historysAjax(Principal prin) {
		register r=registerRepo.findByEmail(prin.getName());
		List<History> list=new ArrayList<>();
		for(DateRegister A:r.getDate()) {
		 Date sqlDate = java.sql.Date.valueOf(A.getDate());
		 History date=new History();
		 date.setRegDate(sqlDate);
		 list.add(date);
		 }
		
	    return list;
	}
	
	@GetMapping("/redate")
	  public List<REDate> redateAjax(HttpSession session) {
	      String doorlog = (String) session.getAttribute("maindoorlog");
	      List<String> dates = dlviewRepo.findREdate(doorlog);
	      List<REDate> redates = new ArrayList<>();
	      for(String date : dates)
	      {
	        REDate re = new REDate();
	        Date sqlDate = java.sql.Date.valueOf(date);
	        re.setRedate(sqlDate);
	        redates.add(re);
	        
	      }
	      System.out.print(redates);
	     return redates;
	  }
	  
	  @GetMapping("/rnedate")
	  public List<REDate> rnedateAjax(HttpSession session) {
	      String doorlog = (String) session.getAttribute("maindoorlog");
	      List<String> dates = dlviewRepo.findRNEdate(doorlog);
	      List<REDate> rnedates = new ArrayList<>();
	      for(String date : dates)
	      {
	        REDate re = new REDate();
	        Date sqlDate = java.sql.Date.valueOf(date);
	        re.setRnedate(sqlDate);
	        rnedates.add(re);
	        
	      }
	      System.out.print(rnedates);
	     return rnedates;
	  }
	  
	  @GetMapping("/uedate")
	  public List<REDate> uedateAjax(HttpSession session) {
	      String doorlog = (String) session.getAttribute("maindoorlog");
	      List<String> dates = dlviewRepo.findUEdate(doorlog);
	      List<REDate> uedates = new ArrayList<>();
	      for(String date : dates)
	      {
	        REDate re = new REDate();
	        Date sqlDate = java.sql.Date.valueOf(date);
	        re.setUedate(sqlDate);
	        uedates.add(re);
	        
	      }
	      System.out.print(uedates);
	     return uedates;
	  }
	public void setFileService(ExcelService fileService2) {
		// TODO Auto-generated method stub
		this.setFileService(fileService2);
	}
	public void setRegisterService(RegisterService registerService2) {
		// TODO Auto-generated method stub
		this.setRegisterService(registerService2);
	}
	public void setRegisterRepo(RegisterRepository registerRepo2) {
		// TODO Auto-generated method stub
		this.registerRepo =registerRepo2;
	}
	public void setDlviewRepo(doorlogViewRepository dlviewRepo2) {
		// TODO Auto-generated method stub
		this.dlviewRepo = dlviewRepo2;
	}


}
