package com.entities;

import java.util.List;

import org.hibernate.Session;

import com.provider.FactoryProvider;

public class DisplayAttendance {
	
	public List<Attendance> getAttendance(){
		
		Session s = FactoryProvider.getFactory().openSession();
		
		List<Attendance> at = s.createQuery("From Attendance",Attendance.class).list();
		
		return at;
	}

}
