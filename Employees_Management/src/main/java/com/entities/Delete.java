package com.entities;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.provider.FactoryProvider;

import jakarta.servlet.annotation.WebServlet;



public class Delete {
	
	public void deleteEmp(int empid) {
		
		Session s = FactoryProvider.getFactory().openSession();
		
		Transaction tx = s.beginTransaction();
		
		AddEmployee emp = s.get(AddEmployee.class, empid);
		
		if(emp !=null) {
			s.delete(emp);
			tx.commit();
		}
	}

}
