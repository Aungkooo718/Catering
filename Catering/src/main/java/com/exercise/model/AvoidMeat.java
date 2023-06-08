package com.exercise.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import java.util.ArrayList;
import java.util.List;
import com.exercise.dto.*;

@Entity
public class AvoidMeat {
	@Id
	private int id;
	private String name;
	@Column(name = "IsDelete", columnDefinition = "BIT DEFAULT 0")
	private boolean isDelete;
	public boolean isDelete() {
		return isDelete;
	}
	public void setDelete(boolean isDelete) {
		this.isDelete = isDelete;
	}
	@ManyToMany(mappedBy = "avoidMeatList")
    private List<register> registerList = new ArrayList<>();
	
	public AvoidMeat() {
	
	}
	public AvoidMeat(int id, String name) {
		super();
		this.id = id;
		this.name = name;

	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
}
