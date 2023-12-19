<%@page import="org.employee_management_system.dto.Admin"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee-Dashboard</title>
<link rel="stylesheet" href="Css/dashboard.css">
</head>
<body
	style="background-image: linear-gradient(rgba(0, 0, 0, 0.65), rgba(0, 0, 0, 0.65)), url(Employee.jpg)">
	<%
	Admin admin = (Admin) session.getAttribute("admin");
	if (admin != null) {
	%>
	<div class="welcome">
		<h1>Welcome Admin</h1>
		<h3>You can manage student data here!!</h3>
	</div>
	<div class="details">
		<a href="saveEmployee.jsp">Save_Student</a> <a href="viewEmployee">View_Students</a>
	</div>
	<%
	} else {
	response.sendRedirect("Home.jsp");
	}
	%>
	<div class="logout">
		<a href="logout">Logout</a>
	</div>
</body>
</html>