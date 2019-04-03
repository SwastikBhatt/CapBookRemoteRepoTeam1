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
  height: 130%; 

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
</style>
	<title>Forgot Password Page</title>
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
	<link href="//fonts.googleapis.com/css?family=Poiret+One&amp;subset=cyrillic,latin-ext" rel="stylesheet">
	<!--//fonts-->
</head>
<body>
<div class="bg">
	<!--img src="D:\Users\ADM-IG-HWDLAB1D\Desktop\web\images\logo.png" width="460" height="345"-->
	<h1>Capbook. Connecting Executives</h1>
	<div align="center" class="error">
		<font size="20" color="red"><b>${errorMessage}</b></font>
	</div>
	<div class="w3ls-login box box--big">
		<!-- form starts here -->
		
		<form action="changePassword" method="post" modelAttribute="account">
	<!-- 	<div align='center'>
		<p style="color:white;" style="font-size:30;">Reset Password</p>
		</div> -->
			<div class="agile-field-txt">
				<label> Email ID</label>
				<input type="text" name="emailId" placeholder="Enter Email ID" required="" />
			</div>
			<div class="agile-field-txt">
				<label> Security Question</label>
				<select id="securityQuestion" name="securityQuestion" class="form-control">
						<option value="What Is the name of your pet ?">What Is the name of your pet ?</option>
						<option value="What is your childhood name?">What is your childhood name?</option>
						<option value="What is the name of your first car?">What is the name of your first car?</option>
						<option value="What is your dream destination?">What is your dream destination?</option>
					</select>
			</div>
			<div class="agile-field-txt">
				<label> Security Answer</label>
				<input type="text" name="securityAnswer" placeholder="Enter Answer" required id="myInput" />
				</div>
			<div class="agile-field-txt">
				<label> New Password</label>
				<input type="password" name="newPass" placeholder="Enter New Password" required id="myInput" />
				</div>
				<div class="agile-field-txt">
				<label>Confirm New Password</label>
				<input type="password" name="rNewPass" placeholder="Confirm Password" required id="myInput" />
				</div>
				<input type="submit"value="SUBMIT">
		</form>
</div>
	
	<script>
</script>
	<!-- //form ends here -->
	<!--copyright-->
	<div class="copy-wthree">
		<p>© 2019 Reset Password Form . All Rights Reserved |
			<a href="http://capgemini.com/" target="_blank">Capgemini</a>
		</p>
	</div>
	</div>
	<!--//copyright-->
</body>
</html>