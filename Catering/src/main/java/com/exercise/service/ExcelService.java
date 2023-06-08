package com.exercise.service;



import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.exercise.dao.EmployeeRepository;


import com.exercise.dto.Employee;

import com.exercise.model.Holiday;
import com.exercise.model.Doorlog;
import com.exercise.repo.CustomRepository;
import com.exercise.repo.DoorlogRepository;
import com.exercise.repo.HolidayRepository;
import java.util.ArrayList;
import java.util.Date;


	
	@Service
	public class ExcelService {
		
		@Autowired
		  EmployeeRepository repository;
		@Autowired
		  HolidayRepository holiRepo;
		@Autowired
		  DoorlogRepository doorlogRepo;
		@Autowired
		  CustomRepository customRepository;
		
		public void save(MultipartFile file) {
		    try {
		      List<Employee> employees = ExcelHelper.excelToTutorials(file.getInputStream());
		     
		      List<Employee> employee_list=repository.findAll();
		      
		      for (Employee employee : employees) {
		            for (Employee existingEmployee : employee_list) {
		            	
		                if (employee.getStaffId().equals(existingEmployee.getStaffId())) {
		                    employee.setStatus("Active");
		                }else {
		                	existingEmployee.setStatus("Inactive");
		                }
		                if(existingEmployee.getDoorLogNo().equals("555555")) {
		            		existingEmployee.setStatus("Active");
		            	}
		            }
		        
		        repository.saveAll(employees);
		      

		    	    }     
		  

		    } catch (IOException e) {
		      throw new RuntimeException("fail to store excel data: " + e.getMessage());
		    }
		  }
		  
		  
		public void saveHoliday(MultipartFile file) {
	        try {
	            List<Holiday> holidayData = holiRepo.findAll();
	            List<Holiday> holidays = HolidayExcelHelper.excelToHoliday(file.getInputStream());

	            for (Holiday holiday : holidays) {
	                Date myDate = holiday.getDate();

	                boolean dateExists = holidayData.stream().anyMatch(h -> h.getDate().equals(myDate));

	                if (!dateExists) {
	                    holiRepo.save(holiday);
	                    System.out.println("Good news: Holiday saved successfully");
	                }
	            }
	            customRepository.executeNativeQueries();
	            System.out.println("Best news: Holiday delete successfully");
	      } catch (IOException e) {
	            throw new RuntimeException("Failed to store excel data: " + e.getMessage());
	        }
	    }
		  
		  public boolean saveDoorlog(MultipartFile file) {
			    List<Doorlog> doorlogs;
			    try {
			        doorlogs = DoorlogExcelHelper.excelToDoorlog(file.getInputStream());
			        if (doorlogs.size() != 0) {
			            for (Doorlog door : doorlogs) {
			                if (door.getId().getDoorlogtime() != null) {
			                    doorlogRepo.save(door);
			                    System.out.println("Doorlog saved successfully");
			                }
			            }
			            return true;
			        } else {
			            System.out.println("No Doorlogs found in the file");
			        }
			    } catch (IOException e) {
			        System.out.println("Error occurred while processing the file: " + file.getOriginalFilename());
			        e.printStackTrace();
			    }

			    return false;
			}


		  
//		  
//		  public void saveDoorlog(MultipartFile file) {
//			    try {
//			      List<Doorlog> doorlogs = DoorlogExcelHelper.excelToDoorlog(file.getInputStream());
//			     
//			      	for (Doorlog doorlog : doorlogs) {		            
//			      			doorlogRepo.save(doorlog);		      
//
//			    	    }     
//			  
//
//			    } catch (IOException e) {
//			      throw new RuntimeException("fail to store excel data: " + e.getMessage());
//			    }
//			  }

		  public List<Employee> getAllTutorials() {
		    return repository.findAll();
		  }
		  
		  public Employee save(Employee user) {
				Employee u=repository.save(user);
				
				return u;}
		  public List<Holiday> getAllHoliday() {
			    return holiRepo.findAll();
			  }
		  public Employee findById(int Id){
			  Employee list= repository.findById(Id);
			  return list;
		  }
		  
		 
	}


