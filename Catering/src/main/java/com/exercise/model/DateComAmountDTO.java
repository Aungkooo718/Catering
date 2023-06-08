package com.exercise.model;

import java.util.List;

public class DateComAmountDTO {
	private String date;
    private List<Integer> comAmounts;

    // Constructor, getters, and setters

    // Example constructor
    public DateComAmountDTO(String date, List<Integer> comAmounts) {
        this.date = date;
        this.comAmounts = comAmounts;
    }
}
