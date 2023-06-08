package com.exercise.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "holiday")
public class Holiday {
	 @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private Long id;
	    
	    @Column(name = "my_date")
	    private Date date;
	    
	    @Column(name = "my_day")
	    private String day;
	    @Column(name="holidays")
	    private String holidays;
		
		public Holiday(Long id, String day, String holidays) {

			this.id = id;
	
			this.day = day;
			this.holidays = holidays;
		}
		public Holiday() {
		
			// TODO Auto-generated constructor stub
		}
		public Long getId() {
			return id;
		}
		public void setId(Long id) {
			this.id = id;
		}
		public Date getDate() {
			return date;
		}
		public void setDate(Date sqlDate) {
			this.date = sqlDate;
		}
		public String getDay() {
			return day;
		}
		public void setDay(String day) {
			this.day = day;
		}
		public String getHolidays() {
			return holidays;
		}
		public void setHolidays(String holidays) {
			this.holidays = holidays;
		}
}
