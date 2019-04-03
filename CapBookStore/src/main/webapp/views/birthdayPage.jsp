
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
	background-image: url("bgimages/b.jpg");
	height: 130%;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
<title>Forgot Password Page</title>
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

<link href="css/style.css" rel='stylesheet' type='text/css' />
<link
	href="//fonts.googleapis.com/css?family=Poiret+One&amp;subset=cyrillic,latin-ext"
	rel="stylesheet">
</head>
<body>
	<div class="bg">
		<h1><p>Upcoming Birthdays:</p></h1>
		<div align="center">
		<table>
			<tr>
				<th><font color="white" size="10"><b>Date of Birth &nbsp</b></font></th>
				<th><font color="white" size="10"><b>First Name &nbsp</b></font></th>
				<th><font color="white" size="10"><b>Last Name &nbsp</b></font></th>
			</tr>
			<c:forEach var="associates" items="${accounts}">
				<tr>
					<th><font color="white" size="10"><b>${associates.firstName} &nbsp&nbsp</b></font></th>
					<th><font color="white" size="10"><b>${associates.lastName} &nbsp&nbsp</b></font></th>
					<th><font color="white" size="10"><b>${associates.dateOfBirth} &nbsp&nbsp</b></font></th>
				</tr>
			</c:forEach>
		</table>
	</div>
	</div>
</body>
</html>