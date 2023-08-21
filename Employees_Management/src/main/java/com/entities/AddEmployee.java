package com.entities;

import javax.persistence.*;

@Entity
@Table(name = "employees")
public  class AddEmployee {
	
	 	@Id
	    private int id;

	    private String employee_name;

	    private String employee_fathername;
	    
	    private int salary;
	    
	    private String address;
	    
	    private String email;
	    
	    private String phone;
	    
	    private String designation;
	    
	    private String adhar_number;
	    

		public AddEmployee() {
			super();
			// TODO Auto-generated constructor stub
		}

		public AddEmployee(int id, String employee_name, String employee_fathername, int salary, String address,
				String email, String phone, String designation, String adhar_number) {
			super();
			this.id = id;
			this.employee_name = employee_name;
			this.employee_fathername = employee_fathername;
			this.salary = salary;
			this.address = address;
			this.email = email;
			this.phone = phone;
			this.designation = designation;
			this.adhar_number = adhar_number;
		}

		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
			
		}

		public String getEmployee_name() {
			return employee_name;
		}

		public void setEmployee_name(String employee_name) {
			this.employee_name = employee_name;
		}

		public String getEmployee_fathername() {
			return employee_fathername;
		}

		public void setEmployee_fathername(String employee_fathername) {
			this.employee_fathername = employee_fathername;
		}

		public int getSalary() {
			return salary;
		}

		public void setSalary(int salary) {
			this.salary = salary;
		}

		public String getAddress() {
			return address;
		}

		public void setAddress(String address) {
			this.address = address;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public String getPhone() {
			return phone;
		}

		public void setPhone(String phone) {
			this.phone = phone;
		}

		public String getDesignation() {
			return designation;
		}

		public void setDesignation(String designation) {
			this.designation = designation;
			
		}

		public String getAdhar_number() {
			return adhar_number;
		}

		public void setAdhar_number(String adhar_number) {
			this.adhar_number = adhar_number;
		}
	    
	        
	    
	    
	

}
