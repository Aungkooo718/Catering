package com.exercise.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exercise.repo.MailRepository;




@Service
public class MailService {
	@Autowired
	MailRepository tb;
	
	public int updateTime(String email,String pass,int id)
	{
		int timeId = 1;
		int i = 0;
		tb.UpdateMail(email,pass,timeId);
		i = 1;
		return i;
	}
}
