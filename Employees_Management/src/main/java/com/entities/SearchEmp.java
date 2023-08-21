package com.entities;

import org.hibernate.Session;

import com.provider.FactoryProvider;

public class SearchEmp {
	
	public AddEmployee getEmployee(int id) {
		
		Session s = FactoryProvider.getFactory().openSession();
		
		return s.get(AddEmployee.class, id);
	}

}
