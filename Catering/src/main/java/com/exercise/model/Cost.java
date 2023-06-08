package com.exercise.model;

import java.util.Objects;

import javax.persistence.EmbeddedId;
import javax.persistence.Id;
import javax.persistence.IdClass;

public class Cost {
	@EmbeddedId
	private CostId id;

	public CostId getId() {
		return id;
	}

	public void setId(CostId id) {
		this.id = id;
	}

	@Override
	public int hashCode() {
		return Objects.hash(id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Cost other = (Cost) obj;
		return Objects.equals(id, other.id);
	}
}