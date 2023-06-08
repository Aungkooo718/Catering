package com.exercise.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exercise.repo.DateRegisterRepository;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class DateRegisterService {
    private final DateRegisterRepository dateRegisterRepository;

    @Autowired
    public DateRegisterService(DateRegisterRepository dateRegisterRepository) {
        this.dateRegisterRepository = dateRegisterRepository;
    }

    
    public Map<String, List<String>> getDoorLogNosAndDateByDateRange(String startDate, String endDate) {
        List<Object[]> results = dateRegisterRepository.findDoorLogNosAndDateByDateRange(startDate, endDate);
        
        Map<String, List<String>> doorlogNosAndDateByDate = new HashMap<>();
        for (Object[] result : results) {
            String doorlogNo = (String) result[0];
            String doorlogDate = (String) result[1];
            
            doorlogNosAndDateByDate.computeIfAbsent(doorlogDate, k -> new ArrayList<>()).add(doorlogNo);
        }
        
        return doorlogNosAndDateByDate;
    }
    public String getLastDateByDoorlogNo(String doorlogNo) {
    	return dateRegisterRepository.getLastDateByDoorLogNo(doorlogNo);
    }
}