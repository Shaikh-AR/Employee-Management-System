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

@WebServlet("/updateemployee")
public class UpdateEmployeeSave extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();
		Admin admin = (Admin) session.getAttribute("admin");

		if (admin != null) {

			int employeeId = Integer.parseInt(req.getParameter("EmployeeId"));
			String employeeName = req.getParameter("EmployeeName");
			long employeePhoneNumber = Long.parseLong(req.getParameter("PhoneNumber"));
			String employeeEmail = req.getParameter("EmployeeEmail");
			double employeeSalary = Double.parseDouble(req.getParameter("EmployeeSalary"));

			Employee employee = new Employee();

			employee.setEmployeeId(employeeId);
			employee.setEmployeeName(employeeName);
			employee.setEmployeePhoneNumber(employeePhoneNumber);
			employee.setEmployeeEmail(employeeEmail);
			employee.setEmployeeSalary(employeeSalary);
			employee.setAdmin(admin);

			new EmployeeDao().updateEmployee(employee);

			List<Employee> employees = new EmployeeDao().getAllEmployees(admin);
			req.setAttribute("allEmployees", employees);

			req.getRequestDispatcher("ViewEmployees.jsp").forward(req, resp);
		} else {
			resp.sendRedirect("Home.jsp");
		}
	}
}
