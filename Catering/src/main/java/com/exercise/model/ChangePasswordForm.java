package com.exercise.model;




	
	public class ChangePasswordForm {

	   
	    private Integer id;

	    private Integer employeeId;

	    private String oldPassword;

	    private String newPassword;

	    private String confirmPassword;

	    public ChangePasswordForm() {
	    }

	    public ChangePasswordForm(Integer employeeId, String oldPassword, String newPassword, String confirmPassword) {
	        this.employeeId = employeeId;
	        this.oldPassword = oldPassword;
	        this.newPassword = newPassword;
	        this.confirmPassword = confirmPassword;
	    }

	    public Integer getId() {
	        return id;
	    }

	    public void setId(Integer id) {
	        this.id = id;
	    }

	    public Integer getEmployeeId() {
	        return employeeId;
	    }

	    public void setEmployeeId(Integer employeeId) {
	        this.employeeId = employeeId;
	    }

	    public String getOldPassword() {
	        return oldPassword;
	    }

	    public void setOldPassword(String oldPassword) {
	        this.oldPassword = oldPassword;
	    }

	    public String getNewPassword() {
	        return newPassword;
	    }

	    public void setNewPassword(String newPassword) {
	        this.newPassword = newPassword;
	    }

	    public String getConfirmPassword() {
	        return confirmPassword;
	    }

	    public void setConfirmPassword(String confirmPassword) {
	        this.confirmPassword = confirmPassword;
	    }
	}
