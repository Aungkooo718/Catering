package com.exercise.dto;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;


@Entity
public class DateRegister {
	
	@Id
    @GeneratedValue
    private Long id;
    
    private String date;
    @ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinColumn(name = "doorLogNo", referencedColumnName = "doorLogNo")
    @JsonIgnoreProperties("date")
    private register register;
    private double empPrice;
    private double comPrice;
    
	public double getEmpPrice() {
		return empPrice;
	}

	public void setEmpPrice(double empPrice) {
		this.empPrice = empPrice;
	}

	public double getComPrice() {
		return comPrice;
	}

	public void setComPrice(double comPrice) {
		this.comPrice = comPrice;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public register getRegister() {
		return register;
	}

	public void setRegister(register register) {
		this.register = register;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	

	

	

}
