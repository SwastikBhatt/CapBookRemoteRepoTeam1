<%-- <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>CapBook Register</title>
<style>
.error {
	color: red;
	font-weight: bold;
}

#message {
	display: none;
	background: #f1f1f1;
	color: #000;
	position: relative;
	padding: 20px;
	margin-top: 10px;
}

#message p {
	padding: 10px 35px;
	font-size: 15px;
}

/* Add a green text color and a checkmark when the requirements are right */
.valid {
	color: green;
}

.valid:before {
	position: relative;
	left: -35px;
}

/* Add a red text color and an "x" when the requirements are wrong */
.invalid {
	color: red;
}

.invalid:before {
	position: relative;
	left: -35px;
}
</style>
<title>Register</title>
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
		<h1>Registration</h1>
	</div>
<body>
	<div align="center" class="error">${errorMessage}</div>
	<div align="center">
		<h2>Enter user details</h2>
		<table>
			<form:form action="registerSuccess" method="post"
				modelAttribute="account">
				<tr>
					<td>Employee Id <span
						style="color: red !important; display: inline; float: none;">*</span></td>
					<td><input type="number" name="employeeId" required></td>
				</tr>
				<tr>
					<td>emailId <span
						style="color: red !important; display: inline; float: none;">*</span></td>
					<td><input type="text" name="emailId" required></td>
				</tr>
				<tr>
					<td>Password <span
						style="color: red !important; display: inline; float: none;">*</span></td>
					<td><input type="password" id="password" name="password"
						pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
						title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
						required></td>
				</tr>
				<tr>
					<td>firstName <span
						style="color: red !important; display: inline; float: none;">*</span></td>
					<td><input type="text" name="firstName" required></td>
				</tr>
				<tr>
					<td>lastName <span
						style="color: red !important; display: inline; float: none;">*</span></td>
					<td><input type="text" name="lastName" required></td>
				</tr>
				<tr>
					<td>dateOfBirth <span
						style="color: red !important; display: inline; float: none;">*</span></td>
					<td><input type="date" name="dateOfBirth" min="1900-01-01"
						max="2019-12-31" required></td>
				</tr>
				<tr>
					<td><label for="gender">Gender</label> <span
						style="color: red !important; display: inline; float: none;">*</span></td>

					<td><select id="gender" name="gender" class="form-control">
							<option value="M">Male</option>
							<option value="F">Female</option>
							<option value="X">Others</option>
					</select></td>

				</tr>

				<tr>
					<td><label for="country">Country</label> <span
						style="color: red !important; display: inline; float: none;">*</span></td>
					<td><select id="country" name="country" class="form-control">
							<option value="Afghanistan">Afghanistan</option>
							<option value="Åland Islands">Åland Islands</option>
							
							<option value="Zimbabwe">Zimbabwe</option>
					</select></td>
				</tr>
				<tr>
					<td><label for="securityQuestion">Security Question</label> <span
						style="color: red !important; display: inline; float: none;">*</span></td>
					<td><select id="securityQuestion" name="securityQuestion"
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
					<td>Security Answer <span
						style="color: red !important; display: inline; float: none;">*</span></td>
					<td><input type="text" name="securityAnswer" required></td>
				</tr>
				<tr>
					<td><input type="submit" value="submit" /></td>
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
</html> --%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE HTML>
<html>
<head>
<style>
body, html {
  height: 100%;
  margin: 0;
}

.bg {
  /* The image used */
   background-image: url( "bgimages/b.jpg"); 
  /* Full height */
  height: 185%; 

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: repeat;
  background-size: cover;
}
</style>
<title>Registration Page</title>
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
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!--// Stylesheets -->
<!--fonts-->
<link
	href="//fonts.googleapis.com/css?family=Poiret+One&amp;subset=cyrillic,latin-ext"
	rel="stylesheet">
<!--//fonts-->

</head>

<body>
<div class="bg">
	<h1>Capbook. Connecting Executives</h1>
	<div class="w3ls-login box box--big">
		<!-- form starts here -->
		<div align="center" class="error">
		<font size="20" color="red">
		<p id="demo"> </p>
		<b>${errorMessage}</b></font>
		 
	</div>
	
		<form action="registerSuccess" method="post" modelAttribute="account" name="postForm">
			
			<div class="agile-field-txt" >
				<label> Email ID</label> <input type="text" name="emailId" id="textEmail"
					placeholder="Enter Email ID" required />
					
			</div>
			<div class="agile-field-txt" data-validate="Employee ID is required">
				<label> Employee ID</label> <input type="text" name="employeeId"
					placeholder="Enter Employee ID" required />
			</div>
			<div class="agile-field-txt" >
				<label> First Name</label> <input type="text" name="firstName"
					placeholder="Enter First Name" required />
			</div>
			<div class="agile-field-txt" >
				<label> Last Name</label> <input type="text" name="lastName"
					placeholder="Enter Last Name" required />
			</div>
			
			<div class="agile-field-txt" >
				<label> Password</label> <input type="password" name="password"
					placeholder="Enter Password"
					pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
					title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
					name="pass" placeholder="Type your password" required />
			</div>
			<div class="agile-field-txt" >
				<label> Date Of Birth</label> <input type="date" name="dateOfBirth"
					min="1900-01-01" max="2019-12-31" placeholder="Select DOB" required />
			</div>

			<div class="drop" >
				<label> Gender</label> <Select name="gender" required>
					<option value="M">Male</option>
					<option value="F">Female</option>
					<option value="X">Others</option>
				</select>
			</div>
			
			<div class="agile-field-txt" >
				<label> Country</label> <select name="country" required>
					<option value="Afghanistan">Afghanistan</option>
					<option value="Åland Islands">Åland Islands</option>

				</select>
			</div>
			<div class="agile-field-txt" >
				<label> Security Question</label> <br> <select
					name="securityQuestion" required>
					<option value="What Is the name of your pet ?">What Is the
						name of your pet ?</option>
					<option value="What is your childhood name?">What is your
						childhood name?</option>
					<option value="What is the name of your first car?">What
						is the name of your first car?</option>
					<option value="What is your dream destination?">What is
						your dream destination?</option>
				</select>
			</div>
			<div class="agile-field-txt">
				<label> Security Answer</label> <input type="text"
					name="securityAnswer" placeholder="Enter Answer" required
					 />
			</div>
			<input type="button" onclick="myFunction()" value="REGISTER" >
			<!-- style="background-color: teal; color: white; padding: 5px; font-size: 16px; border: none; padding: 8px;" -->
		</form>

	</div>
 <script>
    function myFunction() {
        var email;

        email = document.getElementById("textEmail").value;

            var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;

            if (reg.test(textEmail.value) == false) 
            {
            document.getElementById("demo").style.color = "red";
                document.getElementById("demo").innerHTML ="Invalid Email Id";
                return false;
            } else{
           
            document.getElementById("demo").innerHTML ="";
            var frm = document
        	.getElementsByName('postForm')[0];
        	frm.submit();
            }

       return true;
    }
    </script>
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

	<!-- //form ends here -->

	<!--copyright-->
	<div class="copy-wthree">
		<p>
			© 2019 Registration Form . All Rights Reserved | <a
				href="http://capgemini.com/" target="_blank">Capgemini</a>
		</p>
	</div>
	</div>
	<!--//copyright-->
</body>
</html>