<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
  <title>Registration</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="jumbotron text-center">
<h2>Welcome</h2>
</div>
<body>
<script type="text/javascript">

</script>
			  <h2>${requestScope.account.firstName}</h2>
			

	<div align="right">
		<form:form action="logout" method="get">
		<b><button type="submit" value="logout" onclick="alert('You Have Successfully Logged Out')">Log Out</b>
		</form:form >
		</div>
		
		<div align="right">
		<form:form action="allSettings" method="get">
		<b><button type="submit" value="setting">Settings</b>
		</form:form >
		</div>
</body>
</html>