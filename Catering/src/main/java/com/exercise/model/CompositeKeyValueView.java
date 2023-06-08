package com.exercise.model;

public class CompositeKeyValueView {
	private String key;
    private String value;

    public CompositeKeyValueView(String key, String value) {
        this.key = key;
        this.value = value;
    }

    // Getters and setters
    // ...

    @Override
    public String toString() {
        return "Key: " + key + ", Value: " + value;
    }

	public String getKey() {
		return key;
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
}
