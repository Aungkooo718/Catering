package com.exercise.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
@Entity
@Table(name = "image")
@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class Image {
 @Id
 @GeneratedValue(strategy = GenerationType.IDENTITY)
 private long id;
 private String profilePicture;
 private long size;
 private byte [] content;
public long getId() {
	return id;
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
}
