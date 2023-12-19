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
<body style="background-image: url('img.jpg');">
	<div class="banner">
		<div class="navbar">
			<img src="logo.png" alt="logo image" class="logo">
			<ul>
				<li><a href="Home.jsp">Home</a></li>
			</ul>
		</div>
	</div>
	<div class="wrapper">
		<form action="signup" method="post">
			<h1>Admin SignUp</h1>
			<div class="input-box">
				<input type="text" placeholder="Username" name="AdminName" required>
				<i class="fa-solid fa-user"></i>
			</div>
			<div class="input-box">
				<input type="text" placeholder="Email" name="AdminEmail" required>
				<i class="fa-solid fa-at"></i>
			</div>
			<div class="input-box">
				<input type="number" placeholder="Phone Number"
					name="AdminPhoneNumber" required> <i
					class="fa-solid fa-mobile-screen-button"></i>
			</div>
			<div class="input-box">
				<input type="password" placeholder="Password" name="AdminPassword"
					required> <i class="fa-solid fa-lock"></i>
			</div>
			<div class="already-account">
				<a href="AdminLogin.jsp">Already have an Account</a>
			</div>
			<button type="submit" class="btn">SignUp</button>
		</form>
	</div>
</body>
</html>