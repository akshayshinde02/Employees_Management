package com.entities;
import org.hibernate.Session;
import org.hibernate.query.Query;

import com.provider.FactoryProvider;

public class CountEmp {
	
	    public long countEmployees() {
	        
	        	Session s = FactoryProvider.getFactory().openSession();
	            Query<Long> query = s.createQuery("SELECT COUNT(e) FROM AddEmployee e", Long.class);
	            return query.uniqueResult();
	      
	    }
}
