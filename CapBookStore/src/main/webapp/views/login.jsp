
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<style>
body, html {
	height: 100%;
	margin: 0;
}

.bg {
	background-image: url( "bgimages/b.jpg");
	height: 100%;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
<head>
<title>LogIn Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<script>
	addEventListener("load", function() {
		setTimeout(hideURLbar, 0);
	}, false);

	function hideURLbar() {
		window.scrollTo(0, 1);
	}
</script>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link
	href="//fonts.googleapis.com/css?family=Poiret+One&amp;subset=cyrillic,latin-ext"
	rel="stylesheet">
</head>
<body>
	<div class="bg">
		<h1>Capbook. Connecting Executives</h1>
		<div class="w3ls-login box box--big">
			<div align="center" class="error">
				<font size="20" color="red"><b>${errorMessage}</b></font>
			</div>
			<form action="homepageURI" method="post" modelAttribute="account">
				<div class="agile-field-txt">
					<label> Email ID</label> <input type="text" name="emailId"
						placeholder="Enter Email ID" required />
				</div>
				<div class="agile-field-txt">
					<label> Password</label> <input type="password" name="password"
						placeholder="Enter Password" required id="myInput" />
					<div class="agile-right">
						<a href="resetPasswordPage">Forgot password?</a>
					</div>
				</div>
				<input type="submit" value="SIGN IN"> <br>
				<div align="center">
					<div class="agile-right">
						<a href="registrationPage">New User? SignUp</a>
					</div>
				</div>
		</div>
		</form>
		<div class="copy-wthree">
			<p>
				© 2018 Sign In Form . All Rights Reserved | <a
					href="http://capgemini.com/" target="_blank">Capgemini</a>
			</p>
		</div>
	</div>
</body>
</html>




