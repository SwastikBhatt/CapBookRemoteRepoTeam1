<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
	box-sizing: border-box;
}

body {
	margin: 0;
	font-family: Arial, Helvetica, sans-serif;
}

.topnav {
	overflow: hidden;
	background-color: #e9e9e9;
}

.topnav .search-container {
	float: right;
}

.topnav input[type=text] {
	padding: 6px;
	margin-top: 8px;
	font-size: 17px;
	border: none;
}

.topnav .search-container button {
	float: right;
	padding: 10px;
	margin-top: 8px;
	margin-right: 16px;
	background: #ddd;
	font-size: 17px;
	border: none;
	cursor: pointer;
}

.topnav .search-container button:hover {
	background: #ccc;
}

@media screen and (max-width: 600px) {
	.topnav .search-container {
		float: none;
	}
	.topnav a, .topnav input[type=text], .topnav .search-container button {
		float: none;
		display: block;
		text-align: left;
		width: 100%;
		margin: 0;
		padding: 14px;
	}
	.topnav input[type=text] {
		border: 1px solid #ccc;
	}
}
</style>
<title>Search Results</title>
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
	<!-- <div class="jumbotron text-center"> -->
	<div class="topnav" align="center">
		<h2>Search Results</h2>

		<div class="search-container">
			<form action="searchAccounts" method="get">
				<input type="text" placeholder="Search.." name="firstName">
				<button type="submit">Submit</button>
			</form>
		</div>
	</div>
	<div align="center">
		<table>
			<tr>
				<th>employeeId</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email ID</th>
				<th>Profile Link</th>
			</tr>
			<c:forEach var="associates" items="${accounts}">
				<tr>
					<th>${associates.employeeId}</th>
					<th>${associates.firstName}</th>
					<th>${associates.lastName}</th>
					<th>${associates.emailId}</th>
					<th><form:form action="myProfile" method="get">
							<b><button type="submit" value="myProfile">My
									Profile</b>
						</form:form></th>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html> --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
  height: 170%; 

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
</style>
<title>Search</title>
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
	<h1>Search Profiles</h1>
	<div align="center" class="error">
		<font size="20" color="red"><b>${errorMessage}</b></font>
	</div>
	<div class="agile-field-txt">
			        <form action="searchAccounts" method="get">
				      <input type="text" placeholder="Search.." name="firstName">
				       <input type="submit" value="Search">
		        </div>
	      
		  
		  <div align="center">
		<table>
			<tr>
			<p style="color:white;" style="font-size:200px;">
				<th><font color="white" size="10"><b>Employee ID &nbsp&nbsp</b></font></th>
				<th><font color="white" size="10"><b>First Name &nbsp&nbsp</b></font></th>
				<th><font color="white" size="10"><b>Last Name &nbsp&nbsp</b></font></th>
				<th><font color="white" size="10"><b>Email ID &nbsp&nbsp</b></font></th>
				
			
			
			</p>
			</tr>
			<p style="color:white;" style="font-size:200px;">
			<c:forEach var="associates" items="${accounts}">
				<tr >
					<th><font color="white" size="10"><b>${associates.employeeId} &nbsp&nbsp</b></font></th>
					<th><font color="white" size="10"><b>${associates.firstName} &nbsp&nbsp</b></font></th>
					<th><font color="white" size="10"><b>${associates.lastName} &nbsp&nbsp</b></font></th>
					<th><font color="white" size="10"><b>${associates.emailId} &nbsp&nbsp</b></font></th>
					<%-- <th>
		<div class="agile_label">
	                   <form action="myProfile" method="get">
						<input type="submit" value="My Profile">
	                   </form>
					</th> --%>
				</tr>
				</p>
			</c:forEach>
		</table>
		</form>
	   </div>
	   </div>

	<div class="w3ls-login box box--big">	
			<div class="topnav" align="center">
		      
                
	
	<!-- //form ends here -->
	<!--copyright-->
	<div class="copy-wthree">
		<p>
			© 2019 Registration Form . All Rights Reserved | <a
				href="http://capgemini.com/" target="_blank">Capgemini</a>
		</p>
	</div>
	<!--//copyright-->
</div>
</div>
</div>
</body>
</html>