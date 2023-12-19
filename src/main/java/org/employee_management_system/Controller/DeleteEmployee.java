package org.employee_management_system.Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.employee_management_system.dao.EmployeeDao;
import org.employee_management_system.dto.Admin;
import org.employee_management_system.dto.Employee;

@WebServlet("/deleteEmployee")
public class DeleteEmployee extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();
		Admin admin = (Admin) session.getAttribute("admin");
		if (admin != null) {

			String employeeId = (String) req.getParameter("employeeId");

			int id = Integer.parseInt(employeeId);

			EmployeeDao dao = new EmployeeDao();
			dao.deleteEmployee(id);

			List<Employee> employees = dao.getAllEmployees(admin);
			req.setAttribute("allEmployees", employees);

			req.getRequestDispatcher("ViewEmployees.jsp").forward(req, resp);
		} else {
			resp.sendRedirect("Home.jsp");
		}
	}
}
