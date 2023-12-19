<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee-Management-System</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
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
        <form action="login" method="post">
            <h1>Admin Login</h1>
            <div class="input-box">
                <input type="text" placeholder="Username/Email" name="AdminEmail" required>
                <i class="fa-solid fa-user"></i>
            </div>
            <div class="input-box">
                <input type="password" placeholder="Password" name="AdminPassword" required>
                <i class="fa-solid fa-lock"></i>
            </div>
            <div class="remember-forgot">
                <a href="ForgotPassword.jsp">Forgot Password?</a>
            </div>
            <button type="submit" class="btn">Login</button>
            <div class="register-link">
                <p>Don't have an Account <a href="AdminSignup.jsp">Register</a></p>
            </div>
        </form>
    </div>
</body>
</html>