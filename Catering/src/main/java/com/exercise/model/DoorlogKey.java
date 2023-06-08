package com.exercise.model;

import java.io.Serializable;
import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class DoorlogKey implements Serializable {
    @Column(name = "doorlogtime")
    private String doorlogtime;

    @Column(name = "doorlogno")
    private String doorlogno;

    public DoorlogKey() {
    }

    public DoorlogKey(String doorlogtime, String doorlogno) {
        this.doorlogtime = doorlogtime;
        this.doorlogno = doorlogno;
    }

    public String getDoorlogtime() {
        return doorlogtime;
    }

    public void setDoorlogtime(String doorlogtime) {
        this.doorlogtime = doorlogtime;
    }

    public String getDoorlogno() {
        return doorlogno;
    }

    public void setDoorlogno(String doorlogno) {
        this.doorlogno = doorlogno;
    }

	@Override
	public int hashCode() {
		return Objects.hash(doorlogno, doorlogtime);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		DoorlogKey other = (DoorlogKey) obj;
		return Objects.equals(doorlogno, other.doorlogno) && Objects.equals(doorlogtime, other.doorlogtime);
	}

    
}





