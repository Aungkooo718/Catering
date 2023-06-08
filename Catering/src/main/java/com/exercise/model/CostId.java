package com.exercise.model;

import java.io.Serializable;
import java.util.Objects;

import javax.persistence.Embeddable;
@Embeddable
public class CostId implements Serializable {
    private String key;

    private String value;

    // default constructor

    public String getKey() {
		return key;
	}


	public CostId() {
		super();
		// TODO Auto-generated constructor stub
	}


	public void setKey(String key) {
		this.key = key;
	}


	public String getValue() {
		return value;
	}


	public void setValue(String value) {
		this.value = value;
	}


	public CostId(String key, String value) {
        this.key = key;
        this.value = value;
    }


	@Override
	public int hashCode() {
		return Objects.hash(key, value);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		CostId other = (CostId) obj;
		return Objects.equals(key, other.key) && Objects.equals(value, other.value);
	}

    // equals() and hashCode()
}
