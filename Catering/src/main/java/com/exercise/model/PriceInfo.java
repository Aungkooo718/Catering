package com.exercise.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class PriceInfo {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String restaurantName;
	private double restaurantPrice;
	private double companyPrice;
	private double employeePrice;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getRestaurantName() {
		return restaurantName;
	}
	public void setRestaurantName(String restaurantName) {
		this.restaurantName = restaurantName;
	}
	public double getRestaurantPrice() {
		return restaurantPrice;
	}
	public void setRestaurantPrice(double restaurantPrice) {
		this.restaurantPrice = restaurantPrice;
	}
	public double getCompanyPrice() {
		return companyPrice;
	}
	public void setCompanyPrice(double companyPrice) {
		this.companyPrice = companyPrice;
	}
	public double getEmployeePrice() {
		return employeePrice;
	}
	public void setEmployeePrice(double employeePrice) {
		this.employeePrice = employeePrice;
	}
}
