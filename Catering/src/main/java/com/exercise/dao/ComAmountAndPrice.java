package com.exercise.dao;

import java.util.List;
import java.util.ArrayList;

public class ComAmountAndPrice {
    private List<Integer> comAmounts;
    private List<Double> comPrices;
    private List<Double> empPrices;

    public ComAmountAndPrice() {
        this.comAmounts = new ArrayList<>();
        this.comPrices = new ArrayList<>();
        this.empPrices = new ArrayList<>();
    }

    public List<Integer> getComAmounts() {
        return comAmounts;
    }

    public List<Double> getComPrices() {
        return comPrices;
    }
    public List<Double> getEmpPrices() {
        return empPrices;
    }

    public void addComAmount(int amount) {
        comAmounts.add(amount);
    }

    public void addComPrice(double price) {
        comPrices.add(price);
    }
    public void addEmpPrice(double price) {
        empPrices.add(price);
    }
}

