 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    
<%--
<html>
<head>
<title>CapBook Login</title>
<style>
.error {
	color: red;
	font-weight: bold;
}
</style>
<title>Login</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="jumbotron text-center">
		<h1>Login</h1>
	</div>
	<div align="center" class="error">
		${errorMessage}
	</div>
	<div align="center">
	
		<table>
			<form:form action="homepageURI" method="post" modelAttribute="account">
				<tr>
					<td>Email Id</td>
					<td><input type="text" name="emailId"></td>
					<td><form:errors path="emailId" cssClass="error" /></td>
				</tr>

				<tr>
					<td>password</td>
					<td><input type="password" name="password"></td>
					<td><form:errors path="password" cssClass="error" /></td>
				</tr>
				
				<tr>
					<td><input type="submit" value="submit" /></td>
				</tr>
				<tr>
				
				<td>
				New User?<a href="registrationPage">SignUp</a>
				</td>
				</tr>
				<tr>
				
				<td>
				Forgot Password?<a href="resetPasswordPage">Click Here To Change</a>
				</td>
				</tr>
			</form:form>
		</table>
	</div>
	
</body>
</html> --%>




<!DOCTYPE HTML>
<html>
<style>
body, html {
  height: 100%;
  margin: 0;
}

.bg {
  /* The image used */
   background-image: url( "bgimages/b.jpg"); 
  /* Full height */
  height: 100%; 

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
</style>
<head>
	<title>LogIn Page</title>
	<!-- Meta-Tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- //Meta-Tags -->
	<!-- Stylesheets -->
	
	<link rel="stylesheet" type="text/css" href="css/style.css"/>
	
	<!-- <link type="text/css" href="C:/Users/ADM-IG-HWDLAB1D/git/CapBookLocalRepoTeam1/CapBookStore/src/main/resources/static/css" rel="stylesheet"> --> 
	
	
	<!--// Stylesheets -->
	<!--fonts-->
	<link href="//fonts.googleapis.com/css?family=Poiret+One&amp;subset=cyrillic,latin-ext" rel="stylesheet">
	<!--//fonts-->
</head>

<body>
<div class="bg">
	<h1>Capbook. Connecting Executives</h1>
	
	
	<div class="w3ls-login box box--big">
	
	<div align="center" class="error">
		<font size="20" color="red"><b>${errorMessage}</b></font>
	</div>
	
		<!-- form starts here -->
		<form action="homepageURI" method="post" modelAttribute="account">
			<div class="agile-field-txt">
				<label> Email ID</label>
				<input type="text" name="emailId" placeholder="Enter Email ID" required />
			</div>
			<div class="agile-field-txt">
				<label> Password</label>
				<input type="password" name="password" placeholder="Enter Password" required id="myInput" />
				<!--div class="agile_label">
					<input id="check3" name="check3" type="checkbox" >
					<label class="check" for="check3">Show password</label>
				</div-->
				<div class="agile-right">
					<a href="resetPasswordPage">Forgot password?</a>
				</div>
			</div>
				<input type="submit" value="SIGN IN">
				<br>
				<div align="center">
				<div class="agile-right">
					<a href="registrationPage">New User? SignUp</a>
				</div>
				</div>
			</div>
			
		</form>
	
	<!-- //form ends here -->
	<!--copyright-->
	<div class="copy-wthree">
		<p>© 2018 Sign In Form . All Rights Reserved |
			<a href="http://capgemini.com/" target="_blank">Capgemini</a>
		</p>
	</div>
	</div>
	<!--//copyright-->
</body>
</html>




