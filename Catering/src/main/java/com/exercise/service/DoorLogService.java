package com.exercise.service;

import java.sql.Date;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.HashMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exercise.repo.DoorlogRepository;

@Service
public class DoorLogService {


    @Autowired
    DoorlogRepository doorLogRepository;

    public List<String> getDoorlogNoOfLastDate() {
        try {
            return doorLogRepository.findDoorlogNosWithMaxDoorlogTime();
        } catch (Exception e) {
            e.printStackTrace(); // You can log or handle the exception as per your application's requirements
            return Collections.emptyList(); // Return an empty list in case of an error
        }
    }
    public int getDoorlogCountByLastDate() {
    	return doorLogRepository.findDoorlogNosWithMaxDoorlogTime().size();
    }
    public String getDoorlogTimeOfLastDate() {
    	return doorLogRepository.getMaxDoorlogtime();
    }
    public String getDoorlogTimeOfLastDate1() {
    	return doorLogRepository.getMaxDoorlogtime();
    }
   
    public Map<String, List<String>> getDoorlogNosByDateRange(String startDate, String endDate) {
        List<Object[]> results = doorLogRepository.findDoorlogNosByDateRange(startDate, endDate);
        
        Map<String, List<String>> doorlogNosByDate = new HashMap<>();
        for (Object[] result : results) {
            String doorlogNo = (String) result[0];
            String doorlogDate = (String) result[1];
            
            doorlogNosByDate.computeIfAbsent(doorlogDate, k -> new ArrayList<>()).add(doorlogNo);
        }
        
        return doorlogNosByDate;
    }
	public void setDoorLogRepository(DoorlogRepository doorLogRepository2) {
		// TODO Auto-generated method stub
		this.doorLogRepository = doorLogRepository2;
	}

}

