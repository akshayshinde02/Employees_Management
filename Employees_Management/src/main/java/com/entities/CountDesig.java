package com.entities;

import org.hibernate.Session;
import org.hibernate.query.Query;

import com.provider.FactoryProvider;

public class CountDesig {
	
	public long countdesig() {
		
		Session s = FactoryProvider.getFactory().openSession();
		
		Query<Long> query= s.createQuery("SELECT COUNT(DISTINCT e.designation) FROM AddEmployee e",Long.class);
		
		return query.uniqueResult();
	}

}
