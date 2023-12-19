<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>IEmployee-Management-System</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
<link rel="stylesheet" href="Css\custom.css">
</head>
<body style="background-image: url('img.jpg');">
	<div class="wrapper">
		<form action="updatePassword" method="post">
			<h1>Update Admin password</h1>
			<div class="input-box">
				<input type="text" placeholder="Username/Email" name="AdminEmail"
					required> <i class="fa-solid fa-user"></i>
			</div>
			<div class="input-box">
				<input type="password" placeholder="New Password"
					name="AdminPassword" required> <i class="fa-solid fa-lock"></i>
			</div>
			<div class="already-account">
				<a href="AdminLogin.jsp">Login</a>
			</div>

			<button type="submit" class="btn">Update Password</button>
			<div class="register-link">
				<p>
					Create New Account <a href="AdminSignup.jsp">Register</a>
				</p>
			</div>
		</form>
	</div>
</html>