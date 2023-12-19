package org.employee_management_system.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.employee_management_system.dao.AdminDao;
import org.employee_management_system.dto.Admin;

@WebServlet("/signup")
public class AdminSignUp extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name=req.getParameter("AdminName");
		String email=req.getParameter("AdminEmail");
		long phoneNumber=Long.parseLong(req.getParameter("AdminPhoneNumber"));
		String password=req.getParameter("AdminPassword");
		
		Admin admin=new Admin();
		admin.setAdminName(name);
		admin.setAdminEmail(email);
		admin.setPhoneNumber(phoneNumber);
		admin.setAdminPassword(password);
		
		
		new AdminDao().AdminSignup(admin);
		req.getRequestDispatcher("AdminLogin.jsp").forward(req, resp);
	}
}
