package com.servlet;

import java.io.*;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Attendance;
import com.provider.FactoryProvider;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;


@WebServlet("/attendence")
public class AttendanceEmp extends HttpServlet {
	private static final long serialVersionUID = 1L;

   
    public AttendanceEmp() {
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("emp_id"));
		String name = (request.getParameter("emp_name"));
		String email = (request.getParameter("emp_email"));
		String first = (request.getParameter("first_half"));
		String second = (request.getParameter("second_half"));
		
		PrintWriter out = response.getWriter();
		out.print(id+" "+name+" "+email+" "+first+" "+second);
		
		
		
		Session s = FactoryProvider.getFactory().openSession();
		Transaction tx = s.beginTransaction();
		Attendance at = new Attendance(id,name,email,first,second);
		
		s.save(at);
		tx.commit();
		
		response.sendRedirect("home.jsp");
		
	}

}
