<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
</html>