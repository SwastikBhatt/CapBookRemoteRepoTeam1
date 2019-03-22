<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<title>Account Settings</title>
<style>
.error {
	color: red;
	font-weight: bold;
}
</style>
<title>Account Settings</title>
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
		<h1>Account Settings</h1>
	</div>
	<div align="center" class="error">
		${errorMessage}
	</div>
	<div align="center">

		<table>
        	<tr>
        <td><b>Password Settings<b><br><br></td> </tr>
			<form:form action="allSettings" method="post" modelAttribute="account">
				<tr>
					<td>Type Old Password</td>
					<td><input type="password" name="password"></td>
					<td><form:errors path="password" cssClass="error" /><br><br><br><br></td>
				</tr>

				<tr>
					<td>Type New Password</td>
					<td><input type="password" name="password"></td>
					<td><form:errors path="password" cssClass="error" /></td>
				</tr>
				
				<tr>
					<td><br><br><input type="submit" value="Change Password" /></td>
				</tr>
		</form:form>
		<tr>
        <td><br><br><br><br><br><br><b>Profile Settings<b><br><br><br></td> </tr>
		<form:form action="allSettings" method="post" modelAttribute="account">
		<tr>
					<td>Add Designation</td>
					<td><input type="text" name="designation"></td>
					<td><form:errors path="password" cssClass="error" /></td>
				</tr>
				
				<tr>
					<td>Add profile pic</td>
                    <td><input type="file" name="data" size="50" /></td>
					<td><form:errors path="password" cssClass="error" /><br><br><br><br></td>
				</tr>
		
		<tr>
					<td><br><br><input type="submit" value="Save Profile" /></td>
				</tr>
		
		</form:form>
		</table>
	</div>
	<script>
		var myInput = document.getElementById("password");
		var letter = document.getElementById("letter");
		var capital = document.getElementById("capital");
		var number = document.getElementById("number");
		var length = document.getElementById("length");

		// When the user clicks on the password field, show the message box
		myInput.onfocus = function() {
			document.getElementById("message").style.display = "block";
		}

		// When the user clicks outside of the password field, hide the message box
		myInput.onblur = function() {
			document.getElementById("message").style.display = "none";
		}

		// When the user starts to type something inside the password field
		myInput.onkeyup = function() {
			// Validate lowercase letters
			var lowerCaseLetters = /[a-z]/g;
			if (myInput.value.match(lowerCaseLetters)) {
				letter.classList.remove("invalid");
				letter.classList.add("valid");
			} else {
				letter.classList.remove("valid");
				letter.classList.add("invalid");
			}

			// Validate capital letters
			var upperCaseLetters = /[A-Z]/g;
			if (myInput.value.match(upperCaseLetters)) {
				capital.classList.remove("invalid");
				capital.classList.add("valid");
			} else {
				capital.classList.remove("valid");
				capital.classList.add("invalid");
			}

			// Validate numbers
			var numbers = /[0-9]/g;
			if (myInput.value.match(numbers)) {
				number.classList.remove("invalid");
				number.classList.add("valid");
			} else {
				number.classList.remove("valid");
				number.classList.add("invalid");
			}

			// Validate length
			if (myInput.value.length >= 8) {
				length.classList.remove("invalid");
				length.classList.add("valid");
			} else {
				length.classList.remove("valid");
				length.classList.add("invalid");
			}
		}
	</script>
</body>
</html>