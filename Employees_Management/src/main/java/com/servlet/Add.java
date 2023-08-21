package com.servlet;

import java.io.*;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.AddEmployee;
import com.provider.FactoryProvider;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/add")
public class Add extends HttpServlet {
	private static final long serialVersionUID = 1L;

  
    public Add() {
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		
		  int id = Integer.parseInt(request.getParameter("id"));

		  String ename = request.getParameter("ename");

		  String fname =request.getParameter("fname");
		    
		  int salary = Integer.parseInt(request.getParameter("salary"));;
		    
		  String address = request.getParameter("address");
		    
		  String email = request.getParameter("email");
		    
		  String phone = request.getParameter("phone");
		    
		  String desig = request.getParameter("desig");
		    
		  String adhar = request.getParameter("adhar");
		  
		  
//		  out.println(id+" "+ename+" "+fname+" "+salary+" "+
//		  address+" "+email+" "+phone+" "+desig+" "+adhar
//				  );
		  
		  Session s = FactoryProvider.getFactory().openSession();
		  
		  Transaction tx = s.beginTransaction();
		  
		  AddEmployee add = new AddEmployee(id,ename,fname,salary,address,email,phone,desig,adhar);
		  
		  request.setAttribute("responseMessage", HttpServletResponse.SC_CREATED);


	        request.getRequestDispatcher("response.jsp").forward(request, response);
		//  response.sendRedirect("home.jsp");
		 
		  s.save(add);
		  tx.commit();
		  s.close();
		  
	
		  
		
	}

}
