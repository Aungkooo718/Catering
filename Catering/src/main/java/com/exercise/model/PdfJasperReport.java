package com.exercise.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Entity
@JsonInclude(JsonInclude.Include.NON_NULL)
public class PdfJasperReport {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @JsonProperty("id")
    private int id;

    @JsonProperty("date")
    private String date;

    @JsonProperty("orderQty")
    private int orderqty;

    @JsonProperty("companyPrice")
    private int companyprice;

    @JsonProperty("noOfPax")
    private int noofpax;

    @JsonProperty("employeePrice")
    private int employeeprice;

    @JsonProperty("totalAmount")
    private int totalamount;

    public PdfJasperReport(String string, int i) {
		// TODO Auto-generated constructor stub
    	this.date = string;
    	this.id = i;
	}

	public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }


    public int getOrderqty() {
		return orderqty;
	}

	public void setOrderqty(int orderqty) {
		this.orderqty = orderqty;
	}

	public int getCompanyprice() {
		return companyprice;
	}

	public void setCompanyprice(int companyprice) {
		this.companyprice = companyprice;
	}

	public int getNoofpax() {
		return noofpax;
	}

	public void setNoofpax(int noofpax) {
		this.noofpax = noofpax;
	}

	public int getEmployeeprice() {
		return employeeprice;
	}

	public void setEmployeeprice(int employeeprice) {
		this.employeeprice = employeeprice;
	}

	public int getTotalamount() {
		return totalamount;
	}

	public void setTotalamount(int totalamount) {
		this.totalamount = totalamount;
	}

	@Override
    public String toString() {
        try {
            ObjectMapper mapper = new ObjectMapper();
            return mapper.writeValueAsString(this);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
            return super.toString();
        }
    }
}

