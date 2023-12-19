<%@page import="org.employee_management_system.dto.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee-Management-System</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
<link rel="stylesheet" href="Css\custom.css">
</head>
<body
	style="background-image: linear-gradient(rgba(0, 0, 0, 0.65), rgba(0, 0, 0, 0.65)), url(Employee.jpg)">
	<%
	Employee employee = (Employee) request.getAttribute("employee");
	%>
	<div class="banner">
		<div class="navbar">
			<ul>
				<li><a href="Dashboard.jsp">Dashboard</a></li>
			</ul>
		</div>
	</div>
	<div class="wrapper">
		<form action="updateemployee" method="post">
			<h1>Update Employee</h1>
			<div class="input-box">
				<input type="text" placeholder="Employee Id" name="EmployeeId"
					value="<%=employee.getEmployeeId()%>" readonly="readonly">
			</div>
			<div class="input-box">
				<input type="text" placeholder="Employee Name" name="EmployeeName"
					value="<%=employee.getEmployeeName()%>" required> <i
					class="fa-solid fa-user"></i>
			</div>
			<div class="input-box">
				<input type="text" placeholder="Email" name="EmployeeEmail"
					value="<%=employee.getEmployeeEmail()%>" required> <i
					class="fa-solid fa-at"></i>
			</div>
			<div class="input-box">
				<input type="number" placeholder="Phone Number" name="PhoneNumber"
					value="<%=employee.getEmployeePhoneNumber()%>" required> <i
					class="fa-solid fa-mobile-screen-button"></i>
			</div>
			<div class="input-box">
				<input type="number" placeholder="Employee Salary"
					name="EmployeeSalary" value="<%=employee.getEmployeeSalary()%>"
					readonly="readonly">
			</div>
			<button type="submit" class="btn">Update</button>
		</form>
	</div>
</body>
</html>