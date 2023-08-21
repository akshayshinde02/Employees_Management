package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;


import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/login")
public class LoginEmp extends HttpServlet {
	private static final long serialVersionUID = 1L;

   
    public LoginEmp() {
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		PrintWriter out = response.getWriter();
		
		HttpSession session = request.getSession();
		
		if(email.equals("akshayshindepatil000@gmail.com") && password.equals("xyz")) {
				
//				Cookie ck = new Cookie("authentication","true");
//				ck.setMaxAge(24*60*60);
//				response.addCookie(ck);
//				
				session.setAttribute("email", email);
			    out.println("<script>");
	            out.println("alert('Login successful!');");
//	            out.println("window.location.href = 'home.jsp';"); // Redirect to welcome page after successful login
	            response.sendRedirect(request.getContextPath()+"/home");
	            out.println("</script>");
		}
		else {
			
			 out.println("<script>");
	            out.println("alert('Invalid username or password. Please try again.');");
	            out.println("window.location.href = 'login.jsp';"); // Redirect back to login page after failed login
	            out.println("</script>");
		}
	}

}
