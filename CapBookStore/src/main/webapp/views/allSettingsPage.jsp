<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<title>Login</title>
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
					<td>Type Old Password</td>
					<td><input type="password" name="password1"></td>
					<td><form:errors path="password" cssClass="error" /></td>
				</tr>

				<tr>
					<td>Type New Password</td>
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
			</form:form>
		</table>
	</div>
	
</body>
</html>