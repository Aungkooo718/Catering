package com.exercise.service;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exercise.repo.ContactRepository;
@Service
public class ContactService 
{
	@Autowired
	ContactRepository tb;
	
	public int updateTime(String email,String phone,String address,int id)
	{
		int timeId = 1;
		int i = 0;
		tb.UpdateContact(email,phone,address,timeId);
		i = 1;
		return i;
	}
}
