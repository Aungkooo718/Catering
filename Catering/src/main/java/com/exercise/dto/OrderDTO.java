package com.exercise.dto;


import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
public class OrderDTO {
	
	 @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	 private Long id;
	 @Column(nullable = false, unique = true)
	 private String date;
	 private int people;
	 private int amount;
	 private int comAmount;
	 private int peopleAmount;
	 private int price;
	 private int voucherId;
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
	private String avoid;
	 
	
	    public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getPeople() {
		return people;
	}
	public void setPeople(int people) {
		this.people = people;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public int getComAmount() {
		return comAmount;
	}
	public void setComAmount(int comAmount) {
		this.comAmount = comAmount;
	}
	public int getPeopleAmount() {
		return peopleAmount;
	}
	public void setPeopleAmount(int peopleAmount) {
		this.peopleAmount = peopleAmount;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getVoucherId() {
		return voucherId;
	}
	public void setVoucherId(int voucherId) {
		this.voucherId = voucherId;
	}
	public String getAvoid() {
		return avoid;
	}
	public void setAvoid(String avoid) {
		this.avoid = avoid;
	}
		

}
