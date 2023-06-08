package com.exercise.dto;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Vouchers {
	
	@Id
	private int id;
	private String status;
	private String cashier;
	private String approved;
	private String received;
	private String weeklyVoucher;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getCashier() {
		return cashier;
	}

	public void setCashier(String cashier) {
		this.cashier = cashier;
	}

	public String getApproved() {
		return approved;
	}

	public void setApproved(String approved) {
		this.approved = approved;
	}

		public String getWeeklyVoucher() {
		return weeklyVoucher;
	}

	public void setWeeklyVoucher(String weeklyVoucher) {
		this.weeklyVoucher = weeklyVoucher;
	}

	public String getReceived() {
		return received;
	}

	public void setReceived(String received) {
		this.received = received;
	}
	

	
	
}
