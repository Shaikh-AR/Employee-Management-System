package org.employee_management_system.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.employee_management_system.dto.Admin;

@WebServlet("/logout")
public class Logout extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();
		Admin admin = (Admin) session.getAttribute("admin");

		if (admin != null) {
			session.setAttribute("admin", null);
		} else {
			resp.sendRedirect("Home.jsp");
		}

		resp.sendRedirect("Home.jsp");
	}
}
