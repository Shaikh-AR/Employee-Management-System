package org.employee_management_system.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.employee_management_system.dao.AdminDao;
import org.employee_management_system.dto.Admin;

@WebServlet("/updatePassword")
public class UpdatePassword extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String adminEmail=req.getParameter("AdminEmail");
		String adminPassword=req.getParameter("AdminPassword");
		
		Admin admin=new AdminDao().updatePassword(adminEmail, adminPassword);
		if(admin!=null) {
			req.getRequestDispatcher("AdminLogin.jsp").forward(req, resp);
		}else {
			req.getRequestDispatcher("ForgotPassword.jsp").include(req, resp);
		}
	}
}
