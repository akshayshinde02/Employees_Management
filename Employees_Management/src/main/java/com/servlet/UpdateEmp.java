package com.servlet;

import com.entities.AddEmployee;
import com.entities.Update;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;

@WebServlet("/update")
public class UpdateEmp extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));

        String ename = request.getParameter("ename");
        String fname = request.getParameter("fname");
//        int salary = Integer.parseInt(request.getParameter("salary"));
        int salary =1;
        String address = request.getParameter("address");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String desig = request.getParameter("desig");
        String adhar = request.getParameter("adhar");

        AddEmployee updatedEmployee = new AddEmployee(id, ename, fname, salary, address, email, phone, desig, adhar);

        Update updateManager = new Update();
        updateManager.updateEmployee(id, updatedEmployee);

        request.setAttribute("responseMsg", HttpServletResponse.SC_OK);

        request.getRequestDispatcher("update.jsp").forward(request, response);
       // response.sendRedirect("read.jsp");
    }
}
