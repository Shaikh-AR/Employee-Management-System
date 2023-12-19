package org.employee_management_system.Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.employee_management_system.dao.AdminDao;
import org.employee_management_system.dao.EmployeeDao;
import org.employee_management_system.dto.Admin;
import org.employee_management_system.dto.Employee;


@WebServlet("/saveemployee")
public class SaveEmployee extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session=req.getSession();
		Admin admin=(Admin) session.getAttribute("admin");
		if(admin!=null) {
		String name=req.getParameter("EmployeeName");
		String email=req.getParameter("EmployeeEmail");
		long PhoneNumber= Long.parseLong(req.getParameter("PhoneNumber"));
		
		ServletContext context=getServletContext();
		double salary=Long.parseLong(context.getInitParameter("Salary"));		
			
		Employee employee=new Employee();
		employee.setEmployeeName(name);
		employee.setEmployeeEmail(email);
		employee.setEmployeePhoneNumber(PhoneNumber);
		employee.setEmployeeSalary(salary);
		employee.setAdmin(admin);
		
		new EmployeeDao().saveEmployee(employee);
		List<Employee> employees = admin.getEmployees();
		employees.add(employee);
		new AdminDao().updateAdmin(admin);
		
		resp.sendRedirect("Dashboard.jsp");
		}else {
			resp.sendRedirect("Home.jsp");		
		}
	}
}
