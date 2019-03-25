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
			<form:form action="changePasswordProfile" method="post" modelAttribute="account">
				<tr>
					<td>Email Id</td>
					<td><input type="text" name="emailId" required></td>
				</tr>
				<tr>
					<td>Type Old Password
                    <span
						style="color: red !important; display: inline; float: none;">*</span></td>
                    <td><input type="password" id="password" name="password"></td>
				</tr>

				<tr>
					<td>Type New Password
					<span
						style="color: red !important; display: inline; float: none;">*</span></td>
                    <td><input type="password" id="newPass" name="newPass"
						pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
						title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
						required></td>
				</tr>
				
				<tr>
					<td> Confirm New Password
					<span
						style="color: red !important; display: inline; float: none;">*</span></td>
                    <td><input type="password" id="rNewPass" name="rNewPass"
						pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
						title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
						required></td>
				</tr>
				<tr>
					<td><label for="securityQuestion">Security Question</label>
					<span style="color: red !important; display: inline; float: none;">*</span></td>

					<td><select id="securityQuestion" name="securityQuestion" class="form-control">
						<option value="What Is the name of your pet ?">What Is the name of your pet ?</option>
						<option value="What is your childhood name?">What is your childhood name?</option>
						<option value="What is the name of your first car?">What is the name of your first car?</option>
						<option value="What is your dream destination?">What is your dream destination?</option>
					</select>
					</td>
				</tr>	
				<tr>
					<td>Security Answer</td>
					<td><input type="text" name="securityAnswer" required></td>
				</tr>
				<tr>
					<td><br><br><input type="submit" value="Change Password" /></td>
				</tr>
		</form:form>
		<tr>
        <td><br><br><br><br><br><br><b>Profile Settings<b><br><br><br></td> </tr>
		<form:form action="updateProfile" method="post" modelAttribute="profile">
		<tr>
					<td>Designation
                    <span
						style="color: red !important; display: inline; float: none;">*</span></td>
					<td><input type="text" name="designation" ></td>
				</tr>
				<tr>
					<td>User Bio
                    <span
						style="color: red !important; display: inline; float: none;">*</span></td>
					<td> <textarea name="userBio" rows="10" cols="30" title="Enter Bio Here."></textarea>
  <br></td>
				</tr>
				<tr>
					<td>currentCity
                    <span
						style="color: red !important; display: inline; float: none;">*</span></td>
					<td><input type="text" name="currentCity" ></td>
				</tr>
				
				<tr>
					<td>relationshipStatus
                    <span
						style="color: red !important; display: inline; float: none;">*</span></td>
					<td><input type="text" name="relationshipStatus" ></td>
				</tr>		
		<tr>
					<td><br><br><input type="submit" value="Save Profile" /></td>
				</tr>
		
		</form:form>
		</table>
	</div>
	
	<div id="message">
		<h3>Password must contain the following:</h3>
		<p id="letter" class="invalid">
			A <b>lowercase</b> letter
		</p>
		<p id="capital" class="invalid">
			A <b>capital (uppercase)</b> letter
		</p>
		<p id="number" class="invalid">
			A <b>number</b>
		</p>
		<p id="length" class="invalid">
			Minimum <b>8 characters</b>
		</p>
	</div>
	
	<script>
		var myInput = document.getElementById("password");
		var myInput1 = document.getElementById("newPass");
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
		myInput1.onkeyup = function() {
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