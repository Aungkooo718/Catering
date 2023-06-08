package com.exercise.controller;

import java.text.ParseException;
import java.time.LocalTime;

import org.quartz.CronExpression;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.exercise.dao.TimeTableRepository;
import com.exercise.model.TimeTable;



public class CronExpressionParser {
	@Autowired
	TimeTableRepository tbRepo;
    public String parse() {
        // parse user input and create cron expression
    	TimeTable tb = tbRepo.findTime();
    	
        // Extract the time from the user input
        LocalTime time = tb.getTime().toLocalTime();

        // Extract the day of the week from the user input
        String dayOfWeek = tb.getDate().toUpperCase();

        // Create the cron expression
        String cronExpression = String.format("0 %d %d ? * %s", time.getMinute(), time.getHour(), dayOfWeek);
       
        System.out.print(cronExpression);
        // validate cron expression
        try {
            new CronExpression(cronExpression);
        } catch (ParseException e) {
            throw new IllegalArgumentException("Invalid user input: ");
        }
        
        return cronExpression;
    }
    
    
}
