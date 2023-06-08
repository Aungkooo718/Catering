package com.exercise.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class mailSetting {
	@Id
	private int id;
	private String mail;
	private String pass;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
}
