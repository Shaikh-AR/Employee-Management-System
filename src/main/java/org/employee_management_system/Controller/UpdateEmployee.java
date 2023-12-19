package org.employee_management_system.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.employee_management_system.dao.EmployeeDao;
import org.employee_management_system.dto.Employee;

@WebServlet("/updateEmployee")
public class UpdateEmployee extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("employeeId"));
		Employee employee = new EmployeeDao().getEmployee(id);
		req.setAttribute("employee", employee);
		req.getRequestDispatcher("UpdateEmployee.jsp").forward(req, resp);
	}
}
