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
<body style="background-image: linear-gradient(rgba(0, 0, 0, 0.65), rgba(0, 0, 0, 0.65)), url(Employee.jpg)">
	<div class="banner">
		<div class="navbar">
			<ul >
				<li><a href="Dashboard.jsp" >Dashboard</a></li>
			</ul>
		</div>
	</div>
	<div class="wrapper">
		<form action="saveemployee" method="post">
			<h1>Hire Employee</h1>
			<div class="input-box">
				<input type="text" placeholder="Employee Name" name="EmployeeName" required>
				<i class="fa-solid fa-user"></i>
			</div>
			<div class="input-box">
				<input type="text" placeholder="Email" name="EmployeeEmail" required>
				<i class="fa-solid fa-at"></i>
			</div>
			<div class="input-box">
				<input type="number" placeholder="Phone Number"
					name="PhoneNumber" required> <i
					class="fa-solid fa-mobile-screen-button"></i>
			</div>
			<button type="submit" class="btn">Hire</button>
		</form>
	</div>
</body>
</html>