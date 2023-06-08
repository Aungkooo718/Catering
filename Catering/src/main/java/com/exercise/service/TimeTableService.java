package com.exercise.service;

import java.sql.Time;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exercise.dao.TimeTableRepository;


@Service
public class TimeTableService 
{
	@Autowired
	TimeTableRepository tb;
	
	public TimeTableService(TimeTableRepository timeTableRepository) {
		// TODO Auto-generated constructor stub
	}

	public int updateTime(String date, Time time,int id)
	{
		int timeId = 1;
		int i = 0;
		tb.UpdateTime(date,time,timeId);
		i = 1;
		return i;
	}
}
