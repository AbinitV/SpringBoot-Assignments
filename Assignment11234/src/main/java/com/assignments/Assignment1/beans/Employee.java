package com.assignments.Assignment1.beans;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity

public class Employee {
	
	@Id
	@Column(name = "Employee_Id", unique=true)
	private Long empId;
	
	@Column(name = "Employee_First_Name")
	private String empFirstName;
	
	@Column(name = "Employee_Last_Name")
	private String empLastName;
	
	@Column(name = "Employee_Address")
	private String empAddress;
	
	@Column(name = "Employee_Email")
	private String empEmail;

	public Long getEmpId() {
		return empId;
	}

	public void setEmpId(Long empId) {
		this.empId = empId;
	}

	public String getEmpFirstName() {
		return empFirstName;
	}

	public void setEmpFirstName(String empFirstName) {
		this.empFirstName = empFirstName;
	}

	public String getEmpLastName() {
		return empLastName;
	}

	public void setEmpLastName(String empLastName) {
		this.empLastName = empLastName;
	}

	public String getEmpAddress() {
		return empAddress;
	}

	public void setEmpAddress(String empAddress) {
		this.empAddress = empAddress;
	}

	public String getEmpEmail() {
		return empEmail;
	}

	public void setEmpEmail(String empEmail) {
		this.empEmail = empEmail;
	}
	

}
