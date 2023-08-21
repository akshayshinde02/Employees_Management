package com.entities;

import javax.persistence.*;

@Entity
@Table(name = "attendance")
public class Attendance {
	
	@Id
	int id;
	String name;
	String email;
	String first_half;
	String second_half;
	public Attendance() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Attendance(int id, String name, String email, String first_half, String second_half) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.first_half = first_half;
		this.second_half = second_half;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getFirst_half() {
		return first_half;
	}
	public void setFirst_half(String first_half) {
		this.first_half = first_half;
	}
	public String getSecond_half() {
		return second_half;
	}
	public void setSecond_half(String second_half) {
		this.second_half = second_half;
	}
	
	

}
