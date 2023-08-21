package com.entities;

import java.util.List;

import org.hibernate.Session;

import com.provider.FactoryProvider;

public class Display {
	
	public List<AddEmployee> getAllEmployees(){
		
		Session s = FactoryProvider.getFactory().openSession();
		List<AddEmployee> employees = s.createQuery("FROM AddEmployee",AddEmployee.class).list();
//		System.out.print(employees.get(1));
		return employees;
	}

}
