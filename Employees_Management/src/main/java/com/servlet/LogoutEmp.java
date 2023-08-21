package com.servlet;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.*;

@WebServlet("/logout")
public class LogoutEmp extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public LogoutEmp() {
        // TODO Auto-generated constructor stub
    }
    
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

 
        HttpSession session = request.getSession(false);
        session.invalidate();
	    PrintWriter out = response.getWriter();
      
       
       response.sendRedirect("index.jsp");
       
    }

   

    
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		
//		
//}
	}
