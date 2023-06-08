package com.exercise.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "order_view")
public class OrderView {

    @Id
    private String date;
    private int people;
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
	public OrderView() {
		super();
		// TODO Auto-generated constructor stub
	}
	public OrderView(String date, int people) {
		super();
		this.date = date;
		this.people = people;
	}
    

    // Constructors, getters, and setters

    // ...
}
