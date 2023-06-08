package com.exercise.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "doorlog_view")
public class doorlogView {
    @Id
    @Column(name = "doorlog_no")
    private String doorLogNo;

    public String getDoorLogNo() {
		return doorLogNo;
	}

	public void setDoorLogNo(String doorLogNo) {
		this.doorLogNo = doorLogNo;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getEat() {
		return eat;
	}

	public void setEat(String eat) {
		this.eat = eat;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Column(name = "date")
    private String date;

    @Column(name = "Eat")
    private String eat;

    @Column(name = "status")
    private String status;

    // Getters and setters
}


