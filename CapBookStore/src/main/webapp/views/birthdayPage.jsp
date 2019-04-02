	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<style>
body, html {
  height: 100%;
  margin: 0;
}

.bg {
  /* The image used */
   background-image: url( ""); 
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
	<p>Upcoming Birthdays:</p>
				<table>
			<tr>
				<th><font color="Red"><b>Date of Birth</b></font></th>
				<th><font color="Red"><b>First Name</b></font></th>
				<th><font color="Red"><b>Last Name</b></font></th>
			</tr>
			<c:forEach var="associates" items="${accounts}">
				<tr>
					<th><font color="Red"><b>${associates.firstName}</b></font></th>
					<th><font color="Red"><b>${associates.lastName}</b></font></th>
					<th><font color="Red"><b>${associates.dateOfBirth}</b></font></th>
				</tr>
			</c:forEach>
		</table>
	</div>	
		
		</html>