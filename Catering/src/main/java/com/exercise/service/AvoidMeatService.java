package com.exercise.service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exercise.model.AvoidMeat;
import com.exercise.model.Holiday;
import com.exercise.repo.AvoidMeatRepository;

@Service
public class AvoidMeatService {
	@Autowired
	  AvoidMeatRepository avoidMeatRepo;
	public AvoidMeatService(AvoidMeatRepository avoidMeatRepository) {
		// TODO Auto-generated constructor stub
		this.avoidMeatRepo = avoidMeatRepository;
	}
	public List<AvoidMeat> getAllAvoidMeats() {
	    return avoidMeatRepo.findAll();
	  }
	public List<AvoidMeat> getAvoidMeatsByIds(List<Integer> ids) {
        return avoidMeatRepo.findAllById(ids).stream().collect(Collectors.toList());
      }
public int getCount() {
		
		int  count=(int) avoidMeatRepo.count();
		System.out.println("count : "+count);
		return count;
	}
public AvoidMeat Save(AvoidMeat avoid) {
	AvoidMeat s=avoidMeatRepo.save(avoid);
	return s;
}

public int update(AvoidMeat user,int i)
{
	int rs = 0;
	avoidMeatRepo.save(user);
	rs = 1;
	return rs;
} 

public AvoidMeat getMeatById(int id) 
{
	return avoidMeatRepo.findById(id);
}
public int softDelete(int id) {
    int rs = 0;
    avoidMeatRepo.softDelete(id);
    rs = 1;
    return rs;
 }

}
