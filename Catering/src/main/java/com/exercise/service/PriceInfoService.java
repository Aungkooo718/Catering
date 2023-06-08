package com.exercise.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exercise.model.PriceInfo;
import com.exercise.model.Restaurant;
import com.exercise.repo.PriceInfoRepository;

@Service
public class PriceInfoService 
{
	@Autowired
	PriceInfoRepository pRepo;
	public int update(PriceInfo user,int i)
	{
		int rs = 0;
		pRepo.save(user);
		rs = 1;
		return rs;
	} 
	
	
}
