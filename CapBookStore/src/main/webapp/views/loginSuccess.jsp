<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel='stylesheet'
	href='https://fonts.googleapis.com/css?family=Roboto'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
html, body, h1, h2, h3, h4, h5, h6, i, p {
	font-family: "Roboto", sans-serif
}
button.like {
	width: 30px;
	height: 30px;
	margin: 0 auto;
	line-heigth: 50px;
	border-radius: 50%;
	color: rgba(0, 150, 136, 1);
	background-color: rgba(38, 166, 154, 0.3);
	border-color: rgba(0, 150, 136, 1);
	border-width: 1px;
	font-size: 15px;
}

button.dislike {
	width: 30px;
	height: 30px;
	margin: 0 auto;
	line-heigth: 50px;
	border-radius: 50%;
	color: rgba(255, 82, 82, 1);
	background-color: rgba(255, 138, 128, 0.3);
	border-color: rgba(255, 82, 82, 1);
	border-width: 1px;
	font-size: 15px;
}

button.learnmore {
	width: 100%;
	padding: 10px;
	border: none;
	background: rgba(0, 151, 167, 1);
	border-radius: 5px;
	text-transform: uppercase;
	font-size: 16px;
	color: #fff;
	letter-spacing: 1px;
}

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
<title>Registration</title>
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
	<div align="right">
		<form:form action="logout" method="get">
			<b><button type="submit" value="logout"
					onclick="alert('You Have Successfully Logged Out')">LogOut</b>
		</form:form>
	</div>
		<h2>Welcome To Your Home Page</h2>
	</div>
<body>

	<script type="text/javascript">
		
	</script>
	<div class="topnav">
		<div class="search-container">

			<div align="center">
				<form action="viewAllPosts" method="get">
					<button type="submit" >Show All Posts</button>
				</form>
			</div>
			<form action="searchAccounts" method="get">
				<input type="text" placeholder="Search.." name="firstName">
				<button type="submit">Submit</button>
			</form>
		</div>
		<div align="left">
			<form action="uploadStatus" method="post">
				<input type="text" placeholder="Status.." name="userBio">
				<button type="submit"
					onclick="alert('Status Updated.Check Profile')">Submit</button>
			</form>
		</div>
	</div>
	<div align="left">
		<form:form action="allSettings" method="get">
			<b><button type="submit" value="setting">Settings</b>
		</form:form>
	</div>

	<div align="left">
		<form:form action="myProfile" method="get">
			<b><button type="submit" value="myProfile">My Profile</b>
		</form:form>
	</div>
	<div align="justify">
		<c:forEach var="entry" items="${posts}">
			<table>
				<tr>
					<h6 class="w3-text-teal">
						<i class="fa fa-calendar fa-fw w3-margin-right"></i>
						<script>
							document.write(new Date().toLocaleDateString());
						</script>
						<span class="w3-tag w3-teal w3-round"></span>
					</h6>
				</tr>

				<tr>
					<td><c:out value="${entry.account.firstName}" /></td>
					<td>says</td>
					<td><c:out value="${entry.postContent}" /></td>
				</tr>
				<tr>
					<td><form:form action="likeCounter" name="likeForm"
							method="post" modelAttribute="account">
							<button class="dislike">
								<i class="fa fa-thumbs-o-down" aria-hidden="true"></i>
							</button>

							<button class="like" onclick="likeFunction()">
								<i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
							</button>
						</form:form></td>

				</tr>
			</table>
		</c:forEach>
	</div>
	
	
		<!-- <hr>
	<h6 class="w3-text-teal">
		<i class="fa fa-calendar fa-fw w3-margin-right"></i>Jan
		<p>
			<script> document.write(new Date().toLocaleDateString()); </script>
		</p>
		2019 - <span class="w3-tag w3-teal w3-round">Current</span>
	</h6>
	<p>Eseche</p> -->
	<hr>
       </div>
       </div>
       

    <!-- End Right Column -->
    </div>
    
  <!-- End Grid -->
  </div>
  
  <div class="w3-onethird" align="right">
		<div class="w3-card w3-round w3-white w3-center">
			<div class="w3-container">
			<div class="w3-card w3-round w3-white w3-padding-32 w3-center">
			<h1>Current Status</h1>
			<p>
				<h2>
				<b>${account.userBio}</b>
			</h2></p>
		</div>
				<div>
					<form:form action="allSettings" method="get">
						<b><button type="submit" value="My Settings">My
								Settings</b>
					</form:form>
				</div>

				<div>
					<form:form action="album" method="get">
						<b><button type="submit" value="setting">My Album</b>
					</form:form>
				</div>

<form action="searchBirthdays" method="get">
		<b><button type="submit" value="Birthday">Show Birthday</b>
		</form>	
		
		<form action="viewApprove" method="get">
		<b><button type="submit" value="Birthday">Friend</b>
		</form>		
			</div>
		</div>
		<br>

		<div class="w3-card w3-round w3-white w3-center">
			<div class="w3-container">
				<p>Friend Request</p>
				<img src="/w3images/avatar6.png" alt="Avatar" style="width: 50%"><br>
				<span>Jane Doe</span>
				<div class="w3-row w3-opacity">
					<div class="w3-half">
						<button class="w3-button w3-block w3-green w3-section"
							title="Accept">
							<i class="fa fa-check"></i>
						</button>
					</div> 
					<div class="w3-half">
						<button class="w3-button w3-block w3-red w3-section"
							title="Decline">
							<i class="fa fa-remove"></i>
						</button>
					</div>
				</div>
			</div>
		</div>
		<br>

		<div class="w3-card w3-round w3-white w3-padding-16 w3-center">
			<p>My Location</p>
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3781.4836138044857!2d73.69033491530888!3d18.597305271675772!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc2bb0f79aa922f%3A0x706d727fbeb8203!2sCapgemini!5e0!3m2!1sen!2sin!4v1553859147417!5m2!1sen!2sin" width="400" height="400" frameborder="0" style="border:0" allowfullscreen></iframe>
		</div>
		<br><footer class="w3-container w3-teal w3-center w3-margin-top">
		<p>Made By Team 1.</p>
	</footer>
</body>
</html> --%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<title>Capbook</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://www.w3schools.com/lib/w3-theme-blue-grey.css">
<link rel='stylesheet'
	href='https://fonts.googleapis.com/css?family=Open+Sans'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
<
style>html, body, h1, h2, h3, h4, h5, h6 {
	font-family: "Roboto", sans-serif
}

button.like {
	width: 30px;
	height: 30px;
	margin: 0 auto;
	line-heigth: 50px;
	border-radius: 50%;
	color: rgba(0, 150, 136, 1);
	background-color: rgba(38, 166, 154, 0.3);
	border-color: rgba(0, 150, 136, 1);
	border-width: 1px;
	font-size: 15px;
}

button.dislike {
	width: 30px;
	height: 30px;
	margin: 0 auto;
	line-heigth: 50px;
	border-radius: 50%;
	color: rgba(255, 82, 82, 1);
	background-color: rgba(255, 138, 128, 0.3);
	border-color: rgba(255, 82, 82, 1);
	border-width: 1px;
	font-size: 15px;
}

button.learnmore {
	width: 100%;
	padding: 10px;
	border: none;
	background: rgba(0, 151, 167, 1);
	border-radius: 5px;
	text-transform: uppercase;
	font-size: 16px;
	color: #fff;
	letter-spacing: 1px;
}
</style>

<body class="w3-theme-l5">

	<!-- Navbar -->
	<div class="w3-top">
		<div class="w3-bar w3-theme-d2 w3-left-align w3-large">
			<a
				class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-theme-d2"
				href="javascript:void(0);" onclick="openNav()"><i
				class="fa fa-bars"></i></a> <a href="#"
				class="w3-bar-item w3-button w3-padding-large w3-theme-d4"><i
				class="fa fa-home w3-margin-right"></i></a> <a href="#"
				class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white"
				title="News"><i class="fa fa-globe"></i></a> <a href="#"
				class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white"
				title="Account Settings"><i class="fa fa-user"></i></a> <a href="#"
				class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white"
				title="Messages"><i class="fa fa-envelope"></i></a>
			<form action="searchAccounts" method="get">
				<input type="text" placeholder="Search.." name="firstName">
				<button type="submit">Search</button>
			</form>

		</div>
		
		
	</div>
	</div>

	<!-- Navbar on small screens -->
	<div id="navDemo"
		class="w3-bar-block w3-theme-d2 w3-hide w3-hide-large w3-hide-medium w3-large">
		<a href="#" class="w3-bar-item w3-button w3-padding-large">Link 1</a>
		<a href="#" class="w3-bar-item w3-button w3-padding-large">Link 2</a>
		<a href="#" class="w3-bar-item w3-button w3-padding-large">Link 3</a>
		<a href="#" class="w3-bar-item w3-button w3-padding-large">My
			Profile</a>
	</div>

	<!-- Page Container -->
	<div class="w3-container w3-content"
		style="max-width: 1400px; margin-top: 80px">
		<!-- The Grid -->
		<div class="w3-row">
			<!-- Left Column -->
			<div class="w3-col m3">
				<!-- Profile -->
				<div class="w3-card w3-round w3-white">
					<div class="w3-container">
						<h4 class="w3-center">
							Welcome User
						</h4>
						
						<hr>
						
					</div>
				</div>
				<br>
				<br>

				
				<br>

			</div>

			<!-- Middle Column -->
			<div class="w3-col m7">

				<div class="w3-row-padding">
					<div class="w3-col m12">
						<div class="w3-card w3-round w3-white">
							<div class="w3-container w3-padding">
								<h6 class="w3-opacity">CAPBOOK</h6>
								<form action="uploadStatus" method="post">
									<input type="text" placeholder="Write Status..." name="userBio">


									<button type="submit" class="w3-button w3-theme"
										onclick="alert('Status Updated.Check Profile')">Status</button>
								</form>
								<form action="viewAllPosts" method="get">
					<button type="submit" class="w3-button w3-theme"><i class="fa fa-pencil"></i> Show All Post</button>
				</form>
											
								
								
								
							</div>
						</div>
					</div>
				</div>

				<div class="w3-container w3-card w3-white w3-round w3-margin">
					<br> 
					
					<br>
					<hr class="w3-clear">
<c:forEach var="entry" items="${posts}">
			<table>
				<tr>
					<h6 class="w3-text-teal">
						<i class="fa fa-calendar fa-fw w3-margin-right"></i>
						<script>
							document.write(new Date().toLocaleDateString());
						</script>
						<span class="w3-tag w3-teal w3-round"></span>
					</h6>
				</tr>

				<tr>
					<td><c:out value="${entry.account.firstName}" /></td>
					<td>says</td>
					<td><c:out value="${entry.postContent}" /></td>
				</tr>
				<tr>
					<td><form:form action="likeCounter" name="likeForm"
							method="post" modelAttribute="account">
							<button class="dislike">
								<i class="fa fa-thumbs-o-down" aria-hidden="true"></i>
							</button>

							<button class="like" onclick="likeFunction()">
								<i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
							</button>
						</form:form></td>

				</tr>
			</table>
		</c:forEach>
				
				</div>

				
			</div>

			<!-- Right Column -->
			<div class="w3-col m2">
				<div class="w3-onethird" align="right">
					<div class="w3-card w3-round w3-white w3-center">
						<div class="w3-container">
							<div class="w3-card w3-round w3-white w3-padding-32 w3-center">
								<p>

									<b>${account.userBio}</b>
								</p>
							</div>

							<form:form action="myProfile" method="get">
								<b><button type="submit" value="myProfile">My
										Profile</b>
							</form:form>
<div>
							<form:form action="logout" method="get">
								<b><button type="submit" value="logout"
										onclick="alert('You Have Successfully Logged Out')">LogOut</b>
							</form:form>
</div>
							<div>
								<form:form action="allSettings" method="get">
									<b><button type="submit" value="My Settings">My
											Settings</b>
								</form:form>
							</div>



							<div>
								<form:form action="album" method="get">
									<b><button type="submit" value="setting">My Album</b>
								</form:form>
							</div>

							<form action="searchBirthdays" method="get">
								<b><button type="submit" value="Birthday">Show
										Birthday</button> </b>

							</form>
						</div>
					</div>
					<br>
					<br>

					<div class="w3-card w3-round w3-white w3-padding-16 w3-center">
						<p>My Location</p>
						<iframe
							src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3781.4836138044857!2d73.69033491530888!3d18.597305271675772!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc2bb0f79aa922f%3A0x706d727fbeb8203!2sCapgemini!5e0!3m2!1sen!2sin!4v1553859147417!5m2!1sen!2sin"
							width="400" height="400" frameborder="0" style="border: 0"
							allowfullscreen></iframe>
					</div>
					<br>
					<!-- End Right Column -->
				</div>

				<!-- End Grid -->
			</div>

			<!-- End Page Container -->
		</div>
		<br>

		<!-- Footer -->
		<footer class="w3-container w3-theme-d3 w3-padding-16">
			<h5>Made By Team 1.</h5>
		</footer>

		<script>
			// Accordion
			function myFunction(id) {
				var x = document.getElementById(id);
				if (x.className.indexOf("w3-show") == -1) {
					x.className += " w3-show";
					x.previousElementSibling.className += " w3-theme-d1";
				} else {
					x.className = x.className.replace("w3-show", "");
					x.previousElementSibling.className = x.previousElementSibling.className
							.replace(" w3-theme-d1", "");
				}
			}

			// Used to toggle the menu on smaller screens when clicking on the menu button
			function openNav() {
				var x = document.getElementById("navDemo");
				if (x.className.indexOf("w3-show") == -1) {
					x.className += " w3-show";
				} else {
					x.className = x.className.replace(" w3-show", "");
				}
			}
		</script>
</body>
</html>