package com.exercise.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Getter;

import lombok.Setter;
@Entity
@Table(name = "announce")
@Setter
@Getter

public class Announce {
 @Id
 @GeneratedValue(strategy = GenerationType.IDENTITY)
 private long id;
 private String profilePicture;
 private long size;
 private byte [] content;
 private String text;
 private String days;
 
public long getId() {
	return id;
}
public Announce() {

	// TODO Auto-generated constructor stub
}
public Announce(long id, String profilePicture, long size, byte[] content, String text, String days) {
	super();
	this.id = id;
	this.profilePicture = profilePicture;
	this.size = size;
	this.content = content;
	this.text = text;
	this.days = days;
}
public void setId(long id) {
	this.id = id;
}
public String getProfilePicture() {
	return profilePicture;
}
public void setProfilePicture(String profilePicture) {
	this.profilePicture = profilePicture;
}
public long getSize() {
	return size;
}
public void setSize(long size) {
	this.size = size;
}
public byte[] getContent() {
	return content;
}
public void setContent(byte[] content) {
	this.content = content;
}
public String getText() {
	return text;
}
public void setText(String text) {
	this.text = text;
}
public String getDays() {
	return days;
}
public void setDays(String days) {
	this.days = days;
}


}
