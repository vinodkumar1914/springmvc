<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Librarian Page</title>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	font-family: sans-serif;
	background: rgb(99, 203, 241);
}
header {
    background-color: #333;
    color: #fff;
    padding: 20px;
}

h1 {
    margin: 0;
}
.login-box {
	width: 320px;
	height: 420px;
	background: #074a73;
	color: #fff;
	top: 50%;
	left: 50%;
	position: absolute;
	transform: translate(-50%, -50%);
	box-shadow: 0 10px 20px rgba(0, 0, 0, 0.5);
	padding: 70px 30px;
}

.login-box h2 {
	margin: 0;
	padding: 0 0 20px;
	text-align: center;
	font-size: 22px;
}

.login-box .user-box {
	position: relative;
}

.login-box .user-box input {
	width: 100%;
	padding: 10px 0;
	font-size: 16px;
	color: #fff;
	margin-bottom: 30px;
	border: none;
	border-bottom: 1px solid #fff;
	outline: none;
	background: transparent;
}

.login-box .user-box label {
	position: absolute;
	top: 0;
	left: 0;
	padding: 10px 0;
	font-size: 16px;
	color: #fff;
	pointer-events: none;
	transition: 0.5s;
}

.login-box .user-box input:focus ~ label,
.login-box .user-box input:valid ~ label {
	top: -20px;
	left: 0;
	color: #03a9f4;
	font-size: 12px;
}

.login-box input[type="submit"] {
	border: none;
	outline: none;
	height: 40px;
	width:80px;
	color: #fff;
	font-size: 16px;
	background: #03a9f4;
	cursor: pointer;
	border-radius: 10%;
}
.login-box a{
padding-left:10px;
color:white;
}
header {
	background-color: #1E90FF;
	color: #fff;
	padding: 20px;
	font-size: 32px;
  }

.login-box input[type="submit"]:hover {
	background: #0492c2;
	color: #fff;
}
</style>
</head>
<body>
	<c:if test="${not empty error }">
		<div class="alert alert-warning ">
			<strong class="text-center"><c:out value="${error}" /></strong>
		</div>
		<c:set var="error" value="" scope="session" />
	</c:if>
		<header>Library Management System</header>
		<div class="login-box">

		<form name="login-form" action="login" method="post">
			<div class="user-box">
				<input type="text" name="username" required>
				<label>Username</label>
			</div>
			<div class="user-box">
				<input type="password" name="password" required>
				<label>Password</label>
			</div>
			<a href="#">
				<input type="submit" value="Submit">
			</a>
			<a href="#">
				Forgot Password
			</a>
			
		</form>
	</div>

	</div>
</body>
</html>