package org.employee_management_system.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.employee_management_system.dao.AdminDao;
import org.employee_management_system.dto.Admin;

@WebServlet("/login")
public class AdminLogin extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email=req.getParameter("AdminEmail");
		String password=req.getParameter("AdminPassword");
		
		Admin admin=new AdminDao().AdminLogin(email, password);
		if(admin!=null) {
			HttpSession session = req.getSession();
			session.setAttribute("admin", admin);
			req.setAttribute("admin", admin);
			req.getRequestDispatcher("Dashboard.jsp").forward(req, resp);
		}else {
			resp.sendRedirect("AdminLogin.jsp");
		}
	}
}
