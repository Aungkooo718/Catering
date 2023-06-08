package com.exercise.dto;






import java.util.Date;

import javax.persistence.Column;
	import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


import javax.persistence.Table;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

	@Entity
		@Table(name = "Employee")
		public class Employee {
		 @Id
		    @Column(name = "id")
		    private double id;
		public double getId() {
			return id;
		}
		public void setId(double d) {
			this.id = d;
		}
		@Column(name = "team")
		private String team;
		@Column(name = "division")
		private String division;
		@Column(name = "staff_id", unique = true)
		private String staffId;
		@Column(name = "Name")
		private String name;
		@Column(name = "DoorLogNo")
		private String doorLogNo;
		@Column(name = "Email")
		private String email;
		@Column(name = "Password")
		private String password;
		@Column(name = "Role")
		private String role;
		@Column(name = "IsDelete", columnDefinition = "BIT DEFAULT 0")
		private boolean isDelete;
		private boolean emailNoti;
		@Column(name = "reset_password_token")
		private String resetPasswordToken;
		@Column(name = "account_non_locked")
		private boolean accountNonLocked;
		@Column(name ="failed_Attempt")
		private int failedAttempt;
		@Column(name = "lock_time")
		private Date lockTime;
		private boolean enabled;
		
		public String getResetPasswordToken() {
			return resetPasswordToken;
		}
		public void setResetPasswordToken(String resetPasswordToken) {
			this.resetPasswordToken = resetPasswordToken;
		}
		public boolean isEmailNoti() {
			return emailNoti;
		}
		public void setEmailNoti(boolean emailNoti) {
			this.emailNoti = emailNoti;
		}
		public int getFailedAttempt() {
			return failedAttempt;
		}
		public void setFailedAttempt(int failedAttempt) {
			this.failedAttempt = failedAttempt;
		}
		public boolean isDelete() {
			return isDelete;
		}
		public void setDelete(boolean isDelete) {
			this.isDelete = isDelete;
		}
		public String getRole() {
			return role;
		}
		public void setRole(String role) {
			this.role = role;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		@Column(name="Department")
		private String department;
		public String getDepartment() {
			return department;
		}
		public void setDepartment(String department) {
			this.department = department;
		}
		public String getDoorLogNo() {
			return doorLogNo;
		}
		public void setDoorLogNo(String doorLogNo) {
			this.doorLogNo = doorLogNo;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getStaffId() {
			return staffId;
		}
		public void setStaffId(String staffId) {
			this.staffId = staffId;
		}
		public String getDivision() {
			return division;
		}
		public void setDivision(String division) {
			this.division = division;
		}
		public String getTeam() {
			return team;
		}
		public void setTeam(String team) {
			this.team = team;
		}
		  @Column(name = "status")
		  private String status;
		
		public String getStatus() {
			return status;
		}
		public void setStatus(String status) {
			this.status = status;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			if(password==null) {
				BCryptPasswordEncoder encoder=new BCryptPasswordEncoder();
				this.password = encoder.encode("ACE12341234");
			}
			this.password = password;
		}
		public boolean isAccountNonLocked() {
			return accountNonLocked;
		}
		public void setAccountNonLocked(boolean accountNonLocked) {
			
	            this.accountNonLocked = accountNonLocked;
	 
		}
		
		public Date getLockTime() {
			return lockTime;
		}
		public void setLockTime(Date lockTime) {
			this.lockTime = lockTime;
		}
		public boolean isEnabled() {
			return enabled;
		}
		public void setEnabled(boolean enabled) {
			this.enabled = enabled;
		}
		
	}

