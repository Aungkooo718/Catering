package com.exercise.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exercise.model.Holiday;
import com.exercise.repo.HolidayRepository;

@Service
public class HolidayService 
{
	@Autowired
	HolidayRepository hRepo;
	
	public Holiday insertUser(Holiday holi)
	{
		Holiday u = hRepo.save(holi);
		return u;
	}
	
	public int update(Holiday user,Long id)
	{
		int rs = 0;
		hRepo.save(user);
		rs = 1;
		return rs;
	} 
	
	public int deleteHoliday(Long id) {
		int rs = 0;
        hRepo.deleteById(id);
        rs = 1;
        return rs;
    }
	public Optional<Holiday> getHoliById(Long id) 
	{
		return hRepo.findById(id);
	}
}
