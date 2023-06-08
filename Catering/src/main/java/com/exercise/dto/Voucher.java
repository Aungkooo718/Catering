package com.exercise.dto;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Voucher {
	
	@Id
	private int id;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	
}
