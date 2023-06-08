package com.exercise.dto;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.UniqueConstraint;
import javax.persistence.JoinColumn;
import com.exercise.model.*;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
public class register {
	
	 @Id
	 private String doorLogNo;
	
	@Column(name = "name")
	private String name;
	@Column(name = "staff_id")
	private String staffId;
	private boolean emailNoti;
	
	 
	public boolean isEmailNoti() {
		return emailNoti;
	}

	public void setEmailNoti(boolean emailNoti) {
		this.emailNoti = emailNoti;
	}



	@OneToMany(fetch = FetchType.EAGER, mappedBy = "register", cascade = CascadeType.ALL)
    @JsonIgnoreProperties("register")
	 private List<DateRegister> date = new ArrayList<>();
	@ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name = "register_avoid_meat",
        joinColumns = @JoinColumn(name = "register_id"),
        inverseJoinColumns = @JoinColumn(name = "avoid_meat_id"))
    private List<AvoidMeat> avoidMeatList = new ArrayList<>();
	
	public List<AvoidMeat> getAvoidMeatList() {
		return avoidMeatList;
	}

	public void setAvoidMeatList(List<AvoidMeat> avoidMeatList) {
		this.avoidMeatList = avoidMeatList;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDoorLogNo() {
		return doorLogNo;
	}

	public void setDoorLogNo(String doorLogNo) {
		this.doorLogNo = doorLogNo;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	public List<DateRegister> getDate() {
		return date;
	}

	public void setDate(List<DateRegister> date) {
		this.date = date;
	}
	public String getStaffId() {
		return staffId;
	}

	public void setStaffId(String staffId) {
		this.staffId = staffId;
	}
	
	

	@Column(name = "email")
	private String email;

}
