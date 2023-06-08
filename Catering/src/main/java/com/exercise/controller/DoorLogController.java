package com.exercise.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.exercise.dao.ComAmountAndPrice;
import com.exercise.dto.DateRegister;
import com.exercise.service.DateRegisterService;
import com.exercise.service.DoorLogService;
import com.exercise.service.OrderService;
import com.exercise.service.RegisterService;
import com.exercise.model.*;
import com.exercise.repo.DoorlogRepository;
import com.exercise.repo.OrderRepository;
import com.exercise.repo.PriceInfoRepository;

import java.sql.Date;
import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.YearMonth;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.Set;
import java.util.HashSet;
import java.util.Map;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.text.ParseException;
import java.text.SimpleDateFormat; 
@Controller
public class DoorLogController {
	@Autowired
	DoorLogService doorLogService;
	@Autowired
	RegisterService registerService;
	@Autowired
	OrderService orderservice;
	@Autowired
	OrderRepository orderRepo;
	@Autowired
	PriceInfoRepository priceinfoRepo;
	@Autowired
	DateRegisterService dateRegisterService;
	@Autowired
    private DoorlogRepository doorLogRepository;
	
	@GetMapping("/doorlog")
    public String getDoorLogList(Model model) {
        List<Doorlog> doorLogList = doorLogRepository.findAll();
        model.addAttribute("doorLogList", doorLogList);
        return "doorloglist";
    }
	@GetMapping("/doorlog/{doorlogtime}/{doorlogno}/edit")
	public String editDoorLogForm(
	    @PathVariable("doorlogtime") String doorlogtime,
	    @PathVariable("doorlogno") String doorlogno,
	    Model model
	) {
	    DoorlogKey key = new DoorlogKey(doorlogtime, doorlogno);
	    Doorlog doorLog = doorLogRepository.findById(key)
	        .orElseThrow(() -> new IllegalArgumentException("Invalid Door Log Key: " + key));
	    model.addAttribute("doorLog", doorLog);
	    return "editdoorlog";
	}
	@PostMapping("/doorlog/{doorlogtime}/{doorlogno}/update")
	public String updateDoorLog(
	    @PathVariable("doorlogtime") String doorlogtime,
	    @PathVariable("doorlogno") String doorlogno,
	    @ModelAttribute("doorLog") Doorlog updatedDoorLog
	) {
	    DoorlogKey key = new DoorlogKey(doorlogtime, doorlogno);
	    Doorlog doorLog = doorLogRepository.findById(key)
	        .orElseThrow(() -> new IllegalArgumentException("Invalid Door Log Key: " + key));
	    doorLog.setDepartment(updatedDoorLog.getDepartment());
	    doorLog.setName(updatedDoorLog.getName());
	    doorLogRepository.save(doorLog);
	    return "redirect:/doorlog";
	}

	@GetMapping("/doorlog/{doorlogtime}/{doorlogno}/delete")
	public String deleteDoorLog(
	    @PathVariable("doorlogtime") String doorlogtime,
	    @PathVariable("doorlogno") String doorlogno
	) {
	    DoorlogKey key = new DoorlogKey(doorlogtime, doorlogno);
	    Doorlog doorLog = doorLogRepository.findById(key)
	        .orElseThrow(() -> new IllegalArgumentException("Invalid Door Log Key: " + key));
	    doorLogRepository.save(doorLog);
	    return "redirect:/doorlog";
	}
	
	
	
	
	 @GetMapping("/last-date-doorlogNos")
	    public String getDoorlogNosOfLastDate(Model model) {
		 LocalDate currentDate = LocalDate.now();
		 DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		 SimpleDateFormat simpleFormatter = new SimpleDateFormat("yyyy-MM-dd");
	         List<String> doorlogNos = doorLogService.getDoorlogNoOfLastDate();
	         int doorlogCount = doorLogService.getDoorlogCountByLastDate();
	         String lastDate=doorLogService.getDoorlogTimeOfLastDate();
	         if(doorlogNos==null || doorlogNos.equals("")) {
	        	 return "lunchregistration";
	         }
	         Date doorlogTime = null;
	         try {
	        	    java.util.Date utilDate = simpleFormatter.parse(lastDate);
	        	   doorlogTime = new java.sql.Date(utilDate.getTime());
	        	} catch (ParseException e) {
	        	    // Handle the exception if the date string is in an invalid format
	        	    e.printStackTrace();
	        	}
	         int orderQty=orderRepo.findOrderQtyByLastDate(doorlogTime.toString());
	         double comP=orderRepo.findComPriceByLastDate(doorlogTime.toString());
	         double empP=orderRepo.findEmpPriceByLastDate(doorlogTime.toString());
	         String doorlogTime1 = doorLogService.getDoorlogTimeOfLastDate1();
	         System.out.println("llllllllll"+doorlogTime1+" "+doorlogTime);
	         
	         List<String> regDoorlogNos =  registerService.findDoorlogNoByDate(doorlogTime1);
	         // Merge the lists and remove duplicates
	         
	         
	         Set<String> uniqueValues = new HashSet<>();
	         uniqueValues.addAll(doorlogNos);
	         uniqueValues.addAll(regDoorlogNos);

	         int count = uniqueValues.size();
	         
	         
	         double companyPrice = orderQty * comP;
	         double employeePrice = count * empP;
	         double totalPrice = companyPrice + employeePrice;
	         
	         model.addAttribute("doorlogNos", doorlogNos);
	         model.addAttribute("doorlogCount", count);
	         model.addAttribute("doorlogTime", doorlogTime);
	         model.addAttribute("orderQty", orderQty);
	         model.addAttribute("comPrice", comP);
	         model.addAttribute("empPrice", empP);
	         model.addAttribute("companyPrice", companyPrice);
	         model.addAttribute("employeePrice", employeePrice);
	         model.addAttribute("totalPrice", totalPrice);
	         model.addAttribute("day", "daychose");
	         if(regDoorlogNos==null || regDoorlogNos.equals("")) {
	        	 model.addAttribute("error", "Data is empty");
	        	 return "lunchregistration";
	         }
	         return "viewcost";
	    }
	 @PostMapping("/searchViewCost")
	 public String viewActualCost(@RequestParam("viewByDate") String viewByDate,
	                              @RequestParam("fromDate") String fromDate,
	                              @RequestParam("toDate") String toDate,
	                              ModelMap model,RedirectAttributes redirectAttributes) {
		 
		 
		 if(fromDate==null || fromDate.equals("") ||toDate==null || toDate.equals("")) {
		 LocalDate currentDate = LocalDate.now();
		 DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		 SimpleDateFormat simpleFormatter = new SimpleDateFormat("yyyy-MM-dd");
		 if (viewByDate.equals("day")) { // Use equals() method to compare strings
	         List<String> doorlogNos = doorLogService.getDoorlogNoOfLastDate();
	         int doorlogCount = doorLogService.getDoorlogCountByLastDate();
	         String lastDate=doorLogService.getDoorlogTimeOfLastDate();
	         Date doorlogTime = null;
	         try {
	        	    java.util.Date utilDate = simpleFormatter.parse(lastDate);
	        	   doorlogTime = new java.sql.Date(utilDate.getTime());
	        	} catch (ParseException e) {
	        	    // Handle the exception if the date string is in an invalid format
	        	    e.printStackTrace();
	        	}
	         int orderQty=orderRepo.findOrderQtyByLastDate(doorlogTime.toString());
	         double comP=orderRepo.findComPriceByLastDate(doorlogTime.toString());
	         double empP=orderRepo.findEmpPriceByLastDate(doorlogTime.toString());
	         String doorlogTime1 = doorLogService.getDoorlogTimeOfLastDate1();
	         System.out.println("llllllllll"+doorlogTime1+" "+doorlogTime);
	         
	         List<String> regDoorlogNos =  registerService.findDoorlogNoByDate(doorlogTime1);
	         // Merge the lists and remove duplicates
	         Set<String> uniqueValues = new HashSet<>();
	         uniqueValues.addAll(doorlogNos);
	         uniqueValues.addAll(regDoorlogNos);

	         int count = uniqueValues.size();
	         
	         
	         double companyPrice = orderQty * comP;
	         double employeePrice = count * empP;
	         double totalPrice = companyPrice + employeePrice;
	         model.addAttribute("doorlogNos", doorlogNos);
	         model.addAttribute("doorlogCount", count);
	         model.addAttribute("doorlogTime", doorlogTime);
	         model.addAttribute("orderQty", orderQty);
	         model.addAttribute("comPrice", comP);
	         model.addAttribute("empPrice", empP);
	         model.addAttribute("companyPrice", companyPrice);
	         model.addAttribute("employeePrice", employeePrice);
	         model.addAttribute("totalPrice", totalPrice);
	         model.addAttribute("day", "daychose");
	         if(regDoorlogNos==null || regDoorlogNos.equals("")) {
	        	 model.addAttribute("error", "Data is empty");
	         }
	         return "viewcost";
	     }else if(viewByDate.equals("month")) {
	    	// Get the year and month of the current date
	    	 System.out.println("monthhhhhhhhhhhhhhhhhh");
	    	 int year = currentDate.getYear();
	         int month = currentDate.getMonthValue();
	         Date doorlogTime = null;
	    	 String lastDate=doorLogService.getDoorlogTimeOfLastDate();
	         try {
	        	    java.util.Date utilDate = simpleFormatter.parse(lastDate);
	        	   doorlogTime = new java.sql.Date(utilDate.getTime());
	        	} catch (ParseException e) {
	        	    // Handle the exception if the date string is in an invalid format
	        	    e.printStackTrace();
	        	}
	         LocalDate doorLogLocalDate = doorlogTime.toLocalDate();
	      // Create a YearMonth object for the current year and month
	         YearMonth yearMonth = YearMonth.of(year, month);

	         // Get the start date and end date of the current month
	         LocalDate startDate = yearMonth.atDay(1);
	         LocalDate endDate = yearMonth.atEndOfMonth();
	         String startDateStr = startDate.format(formatter);
	    	 String endDateStr = endDate.format(formatter);
	    	 System.out.println("current date is between two date"+startDateStr+endDateStr);
	    	 String endOfCurrentMonth=doorLogRepository.findMaxDoorLogTimeOfCurrentMonth();
	      // Print the start date and end date
	    	 Map<String, Integer> dateCounts = new HashMap<>();
	    	 Map<String, List<String>> doorlogNosByDate = doorLogService.getDoorlogNosByDateRange(startDateStr, endOfCurrentMonth);
	    	 Map<String, List<String>> doorlogNosAndDateByDate = dateRegisterService.getDoorLogNosAndDateByDateRange(startDateStr, endOfCurrentMonth);

	    	// Map<String, List<Integer>> comPriceAndDate=orderservice.getComPriceAndDateByDateRange(startDateStr,endOfCurrentMonth);
	    	 Map<String, ComAmountAndPrice> comPriceAndDate=orderservice.getComPriceAndDateByDateRange(startDateStr,endOfCurrentMonth);
	    	 
	    	 System.out.println("monttttttttttttttttttttttttt");
	    	 
	    	 List<Cost> costList = new ArrayList<>();

	    	 Set<String> uniqueKeyValues = new HashSet<>();

	    	// Add key-value pairs from the first list
	    	for (Map.Entry<String, List<String>> entry : doorlogNosByDate.entrySet()) {
	    	    String doorlogDate = entry.getKey();
	    	    List<String> doorlogNos = entry.getValue();

	    	    for (String doorlogNo : doorlogNos) {
	    	        String keyValue = doorlogDate + doorlogNo;
	    	        if (uniqueKeyValues.contains(keyValue)) {
	    	            continue; // Skip duplicates
	    	        }

	    	        uniqueKeyValues.add(keyValue);

	    	        Cost cost = new Cost();
	    	        CostId costId = new CostId();
	    	        costId.setKey(doorlogDate);
	    	        costId.setValue(doorlogNo);
	    	        cost.setId(costId);

	    	        costList.add(cost);
	    	    }
	    	}

	    	// Add key-value pairs from the second list
	    	for (Map.Entry<String, List<String>> entry : doorlogNosAndDateByDate.entrySet()) {
	    	    String doorlogDate = entry.getKey();
	    	    List<String> doorlogNos = entry.getValue();

	    	    for (String doorlogNo : doorlogNos) {
	    	        String keyValue = doorlogDate + doorlogNo;
	    	        if (uniqueKeyValues.contains(keyValue)) {
	    	            continue; // Skip duplicates
	    	        }

	    	        uniqueKeyValues.add(keyValue);

	    	        Cost cost = new Cost();
	    	        CostId costId = new CostId();
	    	        costId.setKey(doorlogDate);
	    	        costId.setValue(doorlogNo);
	    	        cost.setId(costId);

	    	        costList.add(cost);
	    	    }
	    	}
	    	Map<String, Integer> valueCounts = new HashMap<>();
	    	
	    	for (Cost cost : costList) {
	    	    CostId costId = cost.getId();
	    	    String key = costId.getKey();
	    	    String value = costId.getValue();

	    	    String keyValue = key;
	    	    valueCounts.put(keyValue, valueCounts.getOrDefault(keyValue, 0) + 1);

	    	    System.out.println("Keyyyyyyyyyyyyyyy: " + key + ", Valueeeeeeeeeeeeeeee: " + value);
	    	}

	    	System.out.println();
	    	Map<String, Integer> keyCount = new HashMap<>();
	    	System.out.println("Value Counts:");
	    	List<Double> emp_price;
	    	List<Map<String, Object>> result = new ArrayList<>();
	    	for (Map.Entry<String, Integer> entry : valueCounts.entrySet()) {
	    	    String keyValue = entry.getKey();
	    	    int count = entry.getValue();
	    	    keyCount.put(keyValue, count);
	    	    Map<String, Object> entryMap = new HashMap<>();
	    	    entryMap.put("date", keyValue);
	    	    System.out.println("Key: " + keyValue + ", Count: " + count);
	    	}
	    	model.addAttribute("keyCount",keyCount);
	    	System.out.println("dddddddddddddd"+valueCounts.entrySet());

	    	// Calculate a value based on the count for each date
	    	
	    	
	    	System.out.println("montccccccccccccccccccccc");
	    	
	    	for (Map.Entry<String, ComAmountAndPrice> entry : comPriceAndDate.entrySet()) {
	    	    String date = entry.getKey();
	    	    List<Integer> ordercount = entry.getValue().getComAmounts();
	    	    List<Double> com_price=entry.getValue().getComPrices();
	    	     emp_price=entry.getValue().getEmpPrices();
	    	    List<Integer> calculatedValues = new ArrayList<>();
	    	    for (Integer count : ordercount) {
	    	    	for(Double comP:com_price) {
	    	    		int calculatedValue = (int) (count * comP.doubleValue());
	    	    		calculatedValues.add(calculatedValue);
	    	    	}
	    	        
	    	        
	    	    }

	    	    Map<String, Object> entryMap = new HashMap<>();
	    	    entryMap.put("date", date);
	    	    System.out.println("dateeeeeeeeeeeeeeeeeeeeeeeeeeeeee"+date);
	    	    entryMap.put("orderQty", ordercount);
	    	    entryMap.put("companyPrice", calculatedValues);
	    	    entryMap.put("comPrice", com_price);
	    	    entryMap.put("empPrice", emp_price);

	    	    result.add(entryMap);
	    	}
	    	System.out.println("montvvvvvvvvvvvvvvvvvvvvvv");

	    	for (Map.Entry<String, Integer> entry : valueCounts.entrySet()) {
	    	    String doorlogDate = entry.getKey();
	    	    int count = entry.getValue();

	    	    // Calculate your desired value based on the count
	    	    int calculatedValue = count * 1300; // Example calculation
	    	    int employeeCost = count * priceinfoRepo.getEmployeePrice();
	    	    int totalCost = calculatedValue + employeeCost;

	    	    // Find the entry in result list with matching date and merge the entry
	    	    for (Map<String, Object> entryMap : result) {
	    	        if (entryMap.containsKey("date") && entryMap.get("date").equals(doorlogDate)) {
	    	            entryMap.put("count", count);
	    	            entryMap.put("calculatedValue", calculatedValue);
	    	            entryMap.put("employeeCost", employeeCost);
	    	           // entryMap.put("empPrice", priceinfoRepo.getEmployeePrice());
	    	           // entryMap.put("comPrice", priceinfoRepo.getCompanyPrice());
	    	            entryMap.put("totalCost", totalCost);
	    	            break;
	    	        }
	    	    }
	    	}

	    	model.addAttribute("resultList", result);



	    		model.addAttribute("dateCounts", dateCounts);
	    		model.addAttribute("weekmonth", "choosedweek");
	         return "viewcost";
	     }
		 
		 else if(viewByDate.equals("week")) {
	    	 
			
			 
			 
	    	 LocalDate startOfWeek = currentDate.with(DayOfWeek.MONDAY);
	    	 LocalDate endOfWeek = currentDate.with(DayOfWeek.SUNDAY);
	    	 Calendar cal = Calendar.getInstance();
	         int res = cal.getActualMaximum(Calendar.DATE);
	    	 Date doorlogTime = null;
	    	 String lastDate=doorLogService.getDoorlogTimeOfLastDate();
	         try {
	        	    java.util.Date utilDate = simpleFormatter.parse(lastDate);
	        	   doorlogTime = new java.sql.Date(utilDate.getTime());
	        	} catch (ParseException e) {
	        	    // Handle the exception if the date string is in an invalid format
	        	    e.printStackTrace();
	        	}
	         LocalDate doorLogLocalDate = doorlogTime.toLocalDate();
	    	 String startDateStr = startOfWeek.format(formatter);
	    	 String endDateStr = endOfWeek.format(formatter);
	    	 String endOfCurrentWeek=doorLogRepository.findMaxDoorLogTimeOfCurrentWeek();
	    	 //List<String> doorlogNoBtwStartAndEndDate=doorLogService.getDoorlogBwtStartAndEnd(startDateStr, endDateStr);
	    	 
	    	 Map<String, Integer> dateCounts = new HashMap<>();
	    	 Map<String, List<String>> doorlogNosByDate = doorLogService.getDoorlogNosByDateRange(startDateStr, endOfCurrentWeek);
	    	 Map<String, List<String>> doorlogNosAndDateByDate = dateRegisterService.getDoorLogNosAndDateByDateRange(startDateStr, endOfCurrentWeek);

	    	 Map<String, ComAmountAndPrice> comPriceAndDate=orderservice.getComPriceAndDateByDateRange(startDateStr,endOfCurrentWeek);
	    	 

	    	 List<Cost> costList = new ArrayList<>();

	    	 Set<String> uniqueKeyValues = new HashSet<>();

	    	// Add key-value pairs from the first list
	    	for (Map.Entry<String, List<String>> entry : doorlogNosByDate.entrySet()) {
	    	    String doorlogDate = entry.getKey();
	    	    List<String> doorlogNos = entry.getValue();

	    	    for (String doorlogNo : doorlogNos) {
	    	        String keyValue = doorlogDate + doorlogNo;
	    	        if (uniqueKeyValues.contains(keyValue)) {
	    	            continue; // Skip duplicates
	    	        }

	    	        uniqueKeyValues.add(keyValue);

	    	        Cost cost = new Cost();
	    	        CostId costId = new CostId();
	    	        costId.setKey(doorlogDate);
	    	        costId.setValue(doorlogNo);
	    	        cost.setId(costId);

	    	        costList.add(cost);
	    	    }
	    	}

	    	// Add key-value pairs from the second list
	    	for (Map.Entry<String, List<String>> entry : doorlogNosAndDateByDate.entrySet()) {
	    	    String doorlogDate = entry.getKey();
	    	    List<String> doorlogNos = entry.getValue();

	    	    for (String doorlogNo : doorlogNos) {
	    	        String keyValue = doorlogDate + doorlogNo;
	    	        if (uniqueKeyValues.contains(keyValue)) {
	    	            continue; // Skip duplicates
	    	        }

	    	        uniqueKeyValues.add(keyValue);

	    	        Cost cost = new Cost();
	    	        CostId costId = new CostId();
	    	        costId.setKey(doorlogDate);
	    	        costId.setValue(doorlogNo);
	    	        cost.setId(costId);

	    	        costList.add(cost);
	    	    }
	    	}
	    	Map<String, Integer> valueCounts = new HashMap<>();
	    	
	    	for (Cost cost : costList) {
	    	    CostId costId = cost.getId();
	    	    String key = costId.getKey();
	    	    String value = costId.getValue();

	    	    String keyValue = key;
	    	    valueCounts.put(keyValue, valueCounts.getOrDefault(keyValue, 0) + 1);

	    	    System.out.println("Keyyyyyyyyyyyyyyy: " + key + ", Valueeeeeeeeeeeeeeee: " + value);
	    	}

	    	System.out.println();
	    	Map<String, Integer> keyCount = new HashMap<>();
	    	System.out.println("Value Counts:");
	    	for (Map.Entry<String, Integer> entry : valueCounts.entrySet()) {
	    	    String keyValue = entry.getKey();
	    	    int count = entry.getValue();
	    	    keyCount.put(keyValue, count);
	    	    System.out.println("Key: " + keyValue + ", Count: " + count);
	    	}
	    	model.addAttribute("keyCount",keyCount);
	    	System.out.println("dddddddddddddd"+valueCounts.entrySet());
	    	 List<Double> emp_price;
	    	// Calculate a value based on the count for each date
	    	List<Map<String, Object>> result = new ArrayList<>();
	    	
	    	for (Map.Entry<String, ComAmountAndPrice> entry : comPriceAndDate.entrySet()) {
	    	    String date = entry.getKey();
	    	    List<Integer> ordercount = entry.getValue().getComAmounts();
	    	    List<Double> com_price=entry.getValue().getComPrices();
	    	     emp_price=entry.getValue().getEmpPrices();
	    	    List<Integer> calculatedValues = new ArrayList<>();
	    	    for (Integer count : ordercount) {
	    	    	for(Double comP:com_price) {
	    	    		int calculatedValue = (int) (count * comP.doubleValue());
	    	    		calculatedValues.add(calculatedValue);
	    	    	}
	    	        
	    	        
	    	    }

	    	    Map<String, Object> entryMap = new HashMap<>();
	    	    entryMap.put("date", date);
	    	    System.out.println("dateeeeeeeeeeeeeeeeeeeeeeeeeeeeee"+date);
	    	    entryMap.put("orderQty", ordercount);
	    	    entryMap.put("companyPrice", calculatedValues);
	    	    entryMap.put("comPrice", com_price);
	    	    entryMap.put("empPrice", emp_price);

	    	    result.add(entryMap);
	    	}

	    	for (Map.Entry<String, Integer> entry : valueCounts.entrySet()) {
	    	    String doorlogDate = entry.getKey();
	    	    int count = entry.getValue();

	    	    // Calculate your desired value based on the count
	    	    int calculatedValue = count * 1300; // Example calculation
	    	    
	    	    int employeeCost = count * priceinfoRepo.getEmployeePrice();
	    	    int totalCost = calculatedValue + employeeCost;

	    	    // Find the entry in result list with matching date and merge the entry
	    	    for (Map<String, Object> entryMap : result) {
	    	        if (entryMap.containsKey("date") && entryMap.get("date").equals(doorlogDate)) {
	    	            entryMap.put("count", count);
	    	            entryMap.put("calculatedValue", calculatedValue);
	    	            entryMap.put("employeeCost", employeeCost);
	    	           // entryMap.put("empPrice", priceinfoRepo.getEmployeePrice());
	    	            //entryMap.put("comPrice", priceinfoRepo.getCompanyPrice());
	    	            entryMap.put("totalCost", totalCost);
	    	            break;
	    	        }
	    	    }
	    	}

	    	model.addAttribute("resultList", result);



	    		model.addAttribute("dateCounts", dateCounts);
	    		model.addAttribute("weekmonth", "choosedweek");
	         return "viewcost";}
	     } 
		 else{
			 Map<String, Integer> dateCounts = new HashMap<>();
	    	 Map<String, List<String>> doorlogNosByDate = doorLogService.getDoorlogNosByDateRange(fromDate, toDate);
	    	 Map<String, List<String>> doorlogNosAndDateByDate = dateRegisterService.getDoorLogNosAndDateByDateRange(fromDate, toDate);

//Map<String, List<Integer>> comPriceAndDate=orderservice.getComPriceAndDateByDateRange(fromDate,toDate);
			Map<String, ComAmountAndPrice> comPriceAndDate=orderservice.getComPriceAndDateByDateRange(fromDate,toDate);


	    	 List<Cost> costList = new ArrayList<>();

	    	 Set<String> uniqueKeyValues = new HashSet<>();

	    	// Add key-value pairs from the first list
	    	for (Map.Entry<String, List<String>> entry : doorlogNosByDate.entrySet()) {
	    	    String doorlogDate = entry.getKey();
	    	    List<String> doorlogNos = entry.getValue();

	    	    for (String doorlogNo : doorlogNos) {
	    	        String keyValue = doorlogDate + doorlogNo;
	    	        if (uniqueKeyValues.contains(keyValue)) {
	    	            continue; // Skip duplicates
	    	        }

	    	        uniqueKeyValues.add(keyValue);

	    	        Cost cost = new Cost();
	    	        CostId costId = new CostId();
	    	        costId.setKey(doorlogDate);
	    	        costId.setValue(doorlogNo);
	    	        cost.setId(costId);

	    	        costList.add(cost);
	    	    }
	    	}

	    	// Add key-value pairs from the second list
	    	for (Map.Entry<String, List<String>> entry : doorlogNosAndDateByDate.entrySet()) {
	    	    String doorlogDate = entry.getKey();
	    	    List<String> doorlogNos = entry.getValue();

	    	    for (String doorlogNo : doorlogNos) {
	    	        String keyValue = doorlogDate + doorlogNo;
	    	        if (uniqueKeyValues.contains(keyValue)) {
	    	            continue; // Skip duplicates
	    	        }

	    	        uniqueKeyValues.add(keyValue);

	    	        Cost cost = new Cost();
	    	        CostId costId = new CostId();
	    	        costId.setKey(doorlogDate);
	    	        costId.setValue(doorlogNo);
	    	        cost.setId(costId);

	    	        costList.add(cost);
	    	    }
	    	}
	    	Map<String, Integer> valueCounts = new HashMap<>();
	    	
	    	for (Cost cost : costList) {
	    	    CostId costId = cost.getId();
	    	    String key = costId.getKey();
	    	    String value = costId.getValue();

	    	    String keyValue = key;
	    	    valueCounts.put(keyValue, valueCounts.getOrDefault(keyValue, 0) + 1);

	    	    System.out.println("Keyyyyyyyyyyyyyyy: " + key + ", Valueeeeeeeeeeeeeeee: " + value);
	    	}

	    	System.out.println();
	    	Map<String, Integer> keyCount = new HashMap<>();
	    	System.out.println("Value Counts:");
	    	for (Map.Entry<String, Integer> entry : valueCounts.entrySet()) {
	    	    String keyValue = entry.getKey();
	    	    int count = entry.getValue();
	    	    keyCount.put(keyValue, count);
	    	    System.out.println("Key: " + keyValue + ", Count: " + count);
	    	}
	    	model.addAttribute("keyCount",keyCount);
	    	System.out.println("dddddddddddddd"+valueCounts.entrySet());

	    	// Calculate a value based on the count for each date
	    	List<Double> emp_price;
	    	List<Map<String, Object>> result = new ArrayList<>();
	    	
	    	for (Map.Entry<String, ComAmountAndPrice> entry : comPriceAndDate.entrySet()) {
	    	    String date = entry.getKey();
	    	    List<Integer> ordercount = entry.getValue().getComAmounts();
	    	    List<Double> com_price=entry.getValue().getComPrices();
	    	     emp_price=entry.getValue().getEmpPrices();
	    	    List<Integer> calculatedValues = new ArrayList<>();
	    	    for (Integer count : ordercount) {
	    	    	for(Double comP:com_price) {
	    	    		int calculatedValue = (int) (count * comP.doubleValue());
	    	    		calculatedValues.add(calculatedValue);
	    	    	}
	    	        
	    	        
	    	    }

	    	    Map<String, Object> entryMap = new HashMap<>();
	    	    entryMap.put("date", date);
	    	    System.out.println("dateeeeeeeeeeeeeeeeeeeeeeeeeeeeee"+date);
	    	    entryMap.put("orderQty", ordercount);
	    	    entryMap.put("companyPrice", calculatedValues);
	    	    entryMap.put("comPrice", com_price);
	    	    entryMap.put("empPrice", emp_price);

	    	    result.add(entryMap);
	    	}

	    	for (Map.Entry<String, Integer> entry : valueCounts.entrySet()) {
	    	    String doorlogDate = entry.getKey();
	    	    int count = entry.getValue();

	    	    // Calculate your desired value based on the count
	    	    int calculatedValue = count * 1300; // Example calculation
	    	    int employeeCost = count * priceinfoRepo.getEmployeePrice();
	    	    int totalCost = calculatedValue + employeeCost;

	    	    // Find the entry in result list with matching date and merge the entry
	    	    for (Map<String, Object> entryMap : result) {
	    	        if (entryMap.containsKey("date") && entryMap.get("date").equals(doorlogDate)) {
	    	            entryMap.put("count", count);
	    	            entryMap.put("calculatedValue", calculatedValue);
	    	            entryMap.put("employeeCost", employeeCost);
	    	            //entryMap.put("empPrice", priceinfoRepo.getEmployeePrice());
	    	            //entryMap.put("comPrice", priceinfoRepo.getCompanyPrice());
	    	            entryMap.put("totalCost", totalCost);
	    	            break;
	    	        }
	    	    }
	    	}

	    	model.addAttribute("resultList", result);



	    		model.addAttribute("dateCounts", dateCounts);
	    		model.addAttribute("weekmonth", "choosedweek");
	         return "viewcost";
		 }
	     // Add a return statement or throw an exception to handle this case
	 
		 return "viewcost";

}
}

