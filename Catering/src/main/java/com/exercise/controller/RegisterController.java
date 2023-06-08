package com.exercise.controller;

import java.security.Principal;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.temporal.IsoFields;
import java.time.temporal.TemporalAdjusters;
import java.time.temporal.TemporalField;
import java.time.temporal.WeekFields;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.exercise.dao.EmployeeRepository;
import com.exercise.repo.AvoidMeatRepository;
import com.exercise.repo.HolidayRepository;
import com.exercise.dao.RegisterRepository;
import com.exercise.dto.DateRegister;
import com.exercise.dto.Employee;
import com.exercise.dto.register;
import com.exercise.model.*;
import com.exercise.service.AvoidMeatService;
import com.exercise.service.DateRegisterService;
import com.exercise.service.ExcelService;
import com.exercise.service.RegisterService;
import java.util.HashSet;
import java.util.Set;


@Controller
public class RegisterController {
	@Autowired
	RegisterRepository registerRepo;
	@Autowired
	ExcelService excelservice;
	@Autowired
	RegisterService regService;
	@Autowired
	AvoidMeatService avoidMeatService;
	 @Autowired
	 EmployeeRepository EmpRep;
	 @Autowired
	 AvoidMeatRepository avoidmeatRepo;
	 @Autowired
	 HolidayRepository holidayRepo;
	 @Autowired
	 AvoidMeatService service;
	 @Autowired
	 DateRegisterService dateRegisterService;
	 
	 @GetMapping("/register")
     public String registerLunch(Model m,Principal principal) {
     
     Employee emp=EmpRep.findByEmail(principal.getName());
     if(emp.getDoorLogNo().equals("555555")) {
       return "404";
     }else {
       LocalDate currentDate = LocalDate.now();
       int day = 20;
       LocalDate twentiethDay = LocalDate.of(currentDate.getYear(), currentDate.getMonth(), day);
       System.out.println("twentiethday of current month is "+twentiethDay);
       String lastDateByDoorlog=dateRegisterService.getLastDateByDoorlogNo(emp.getDoorLogNo());
       System.out.println("my choose last date"+lastDateByDoorlog);
       DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
       LocalDate dateToCheck=null;
       
       
       int lastDayOfMonth = currentDate.lengthOfMonth();
       System.out.println("last lastDayOfMonth"+lastDayOfMonth);
           LocalDate lastSevenDaysStart = LocalDate.of(currentDate.getYear(), currentDate.getMonthValue(), lastDayOfMonth).minusDays(7);
           LocalDate lastSevenDaysEnd = LocalDate.of(currentDate.getYear(), currentDate.getMonthValue(), lastDayOfMonth);
           System.out.println("last seven day start"+lastSevenDaysStart.minusDays(4));
           System.out.println("last seven day end"+lastSevenDaysEnd);
           
           
           if (lastDateByDoorlog != null) {
           dateToCheck = LocalDate.parse(lastDateByDoorlog, formatter);
           // Use the parsed date as needed
       } else {
           // Handle the case when lastDateByDoorlog is null
         m.addAttribute("avoidMeat", avoidmeatRepo.SelectAll());
             return "lunchregistration";
       }
           
           boolean isInCurrentMonth = dateToCheck.getMonthValue() == currentDate.getMonthValue()
                   && dateToCheck.getYear() == currentDate.getYear();
           LocalDate nextMonth = currentDate.plusMonths(1);
           boolean isInNextMonth = dateToCheck.getMonthValue() == nextMonth.getMonthValue()
                   && dateToCheck.getYear() == nextMonth.getYear();
           
          if(isInNextMonth) {
        	  m.addAttribute("avoidMeat", avoidmeatRepo.SelectAll());
              
        	  register avoid=registerRepo.findAvoidMeatListByDoorLogNo1(emp.getDoorLogNo());
        	  m.addAttribute("avoid", avoid);
            return "UpdateLunch";
          }
           if (isInCurrentMonth && currentDate.isAfter(lastSevenDaysStart)) {
             m.addAttribute("avoidMeat", avoidmeatRepo.SelectAll());
               return "lunchregistration";
           }
           if (isInCurrentMonth && !(currentDate.isAfter(lastSevenDaysStart))) {
        	   m.addAttribute("avoidMeat", avoidmeatRepo.SelectAll());
               
         	  register avoid=registerRepo.findAvoidMeatListByDoorLogNo1(emp.getDoorLogNo());
         	  m.addAttribute("avoid", avoid);
             
               return "UpdateLunch";
           }
       
       
           m.addAttribute("avoidMeat",avoidmeatRepo.SelectAll());
           return "lunchregistration";
       
     }
     
     
     }
	@PostMapping("/addRegister")
	  public String saveStudent(@RequestParam("lunchregister") String[] chooseDate,Principal principal ,
			  @RequestParam(value = "avoidMeatId", required = false, defaultValue = "") List<Integer> avoidMeatIds,
			  @RequestParam(value = "emailnoti", required = false, defaultValue = "false") boolean emailNoti,Model model){
		Employee emp=EmpRep.findByEmail(principal.getName());
		register reg=new register();
		if(emp!=null || !emp.equals("")) {
			reg.setDoorLogNo(emp.getDoorLogNo());
			reg.setEmail(emp.getEmail());
			reg.setName(emp.getName());
			reg.setStaffId(emp.getStaffId());
			emp.setEmailNoti(emailNoti);
			 //String[] selectedDays = chooseDate.toArray(new String[0]);
			    
			    List<DateRegister> date=new ArrayList<>();
			    for(String S:chooseDate) {
			    	DateRegister dat=new DateRegister();
			    	dat.setDate(S);
			    	date.add(dat);
			    }
			    List<AvoidMeat> avoid_meat_list = service.getAvoidMeatsByIds(avoidMeatIds);
			    reg.setAvoidMeatList(avoid_meat_list);
			    
			//registerRepo.save(reg);
			//regService.save(reg, date,avoidMeatIds);
			regService.saveRegisterWithAvoidMeats(reg, date, avoidMeatIds);
		
			

			model.addAttribute("avoidMeat", avoidmeatRepo.SelectAll());
            
       	  register avoid=registerRepo.findAvoidMeatListByDoorLogNo1(emp.getDoorLogNo());
       	  model.addAttribute("avoid", avoid);
           
             return "UpdateLunch";
		}	
		return "redirect:/register";
		
	
	  }
	
	
	
	@PostMapping("/updateLunch")
	  public String updateRegister(RedirectAttributes redirectAttributes,@RequestParam("lunchregister") String[] chooseDate,Principal principal ,@RequestParam(value = "avoidMeatList", required = false, defaultValue = "") List<Integer> avoidMeatIds){
		Employee emp=EmpRep.findByEmail(principal.getName());
		register reg=new register();
		System.out.println(avoidMeatIds);
		
		reg.setDoorLogNo(emp.getDoorLogNo());
		reg.setEmail(emp.getEmail());
		reg.setName(emp.getName());
		reg.setStaffId(emp.getStaffId());
		 //String[] selectedDays = chooseDate.toArray(new String[0]);
		    System.out.println(chooseDate+"phoo");
		    List<DateRegister> date=new ArrayList<>();
		    for(String S:chooseDate) {
		    	DateRegister dat=new DateRegister();
		    	dat.setDate(S);
		    	date.add(dat);
		    	System.out.println(S+"Zew");
		    }
		    List<AvoidMeat> avoid_meat_list = service.getAvoidMeatsByIds(avoidMeatIds);
		    reg.setAvoidMeatList(avoid_meat_list);
		    
		//registerRepo.save(reg);
		//regService.save(reg, date,avoidMeatIds);
		regService.updateStudent(reg, date, avoidMeatIds);
		redirectAttributes.addFlashAttribute("message", "Thank You So much");
		

	    return "redirect:register";
	
	  }
	
	
	@PostMapping("/updateEmailNoti")
	  public String updateController(@RequestParam("controllerValue") boolean controllerValue,
			  @RequestParam("page") String page,Principal principal,RedirectAttributes ra) {
	 	Employee emp=EmpRep.findByEmail(principal.getName());

		
		if (emp!=null || !emp.equals("") && page.equals("about")) {
		    // Apply your logic to update the email notification
		    emp.setEmailNoti(controllerValue);
		    EmpRep.save(emp);
		    ra.addFlashAttribute("success", "Email Noti is Successfully add!");
		    return "redirect:/about";
		} 
		
		return "redirect:/menu";

	  }
	
}
