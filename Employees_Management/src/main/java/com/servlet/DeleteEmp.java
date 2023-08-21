package com.servlet;

import java.io.*;

import com.entities.Delete;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/delete")
public class DeleteEmp extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public DeleteEmp() {
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id =Integer.parseInt( request.getParameter("employeeId"));
		
		Delete d = new Delete();
		if(id>=0) {
		d.deleteEmp(id);
		request.setAttribute("deletesuccess", HttpServletResponse.SC_OK);
		}
		else if(id<0) {
			request.setAttribute("deletesuccess",HttpServletResponse.SC_BAD_REQUEST);
		}
		else {
			request.setAttribute("deletesuccess",HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
		}
		
		request.getRequestDispatcher("responsedelete.jsp").forward(request, response);
		//response.sendRedirect("read.jsp");
		
		
	}

}
