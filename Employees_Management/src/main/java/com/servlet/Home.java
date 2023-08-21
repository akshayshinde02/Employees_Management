package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/home")
public class Home extends HttpServlet {
	private static final long serialVersionUID = 1L;

   
    public Home() {
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		 response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		    response.setHeader("Pragma", "no-cache");
		    response.setHeader("Expires", "0");
		    
		    HttpSession session = request.getSession(false);
		    PrintWriter out = response.getWriter();
		    
		    if(session!=null) {
		    	String email =(String) session.getAttribute("email");
		    	out.print("Welcome"+email);
		    }
		    else {
		    	response.sendRedirect("login.html");
		    }
		    response.sendRedirect("home.jsp");
		
//		Cookie[] cookies = request.getCookies();
//		boolean auth=true;
//		if(cookies!=null) {
//			for(Cookie cookie:cookies) {
//				if(cookie.getName().equals("authentication") && cookie.getValue().equals("false")) {
//					System.out.print(cookie.getName()+" "+cookie.getValue());
//					auth=false;
//					break;
//				}
//				
////			    	  PrintWriter out = response.getWriter();
////			    	 
////			    	 System.out.print(cookie.getName()+" "+cookie.getValue());
////			    	  
//			
//			}
//		}
//		
//		if(auth==false) {
//			response.sendRedirect("login.jsp");
//			
//		}
//		else {
//			response.sendRedirect("home.jsp");
//		}
		
	}

	
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		doGet(request, response);
//	}

}
