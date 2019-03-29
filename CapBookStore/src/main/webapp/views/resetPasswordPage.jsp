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
	<div align="center" class="error">${errorMessage}</div>
	<div align="center">

		<table>
			<form:form action="changePassword" method="post"
				modelAttribute="account">
				<tr>
					<td>Email Id</td>
					<td><input type="text" name="emailId" required></td>
				</tr>

				<tr>
					<td>Enter New password</td>
					<td><input type="password" name="newPass" required></td>

				</tr>

				<tr>
					<td>Re-enter New password</td>
					<td><input type="password" name="rNewPass" required></td>

				</tr>
				<tr>
					<td><label for="securityQuestion">Security Question</label> <span
						style="color: red !important; display: inline; float: none;">*</span>

						<select id="securityQuestion" name="securityQuestion"
						class="form-control">
							<option value="What Is the name of your pet ?">What Is
								the name of your pet ?</option>
							<option value="What is your childhood name?">What is
								your childhood name?</option>
							<option value="What is the name of your first car?">What
								is the name of your first car?</option>
							<option value="What is your dream destination?">What is
								your dream destination?</option>
					</select></td>
				</tr>
				<tr>
					<td>Security Answer</td>
					<td><input type="text" name="securityAnswer" required></td>
				</tr>
		</table>

		<table>
			<tr>
				<td>
				<td><input type="submit" value="submit" /></td>
				</form:form>
				</td>
			</tr>
		</table>
		<br> New User?<a href="registrationPage">SignUp</a>

	</div>

</body>
</html>