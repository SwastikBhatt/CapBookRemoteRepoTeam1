
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<title>CapBook</title>
<meta charset="UTF-8">
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
</style>




<body class="w3-light-grey">
	<form:form action="createPost" name="postForm" method="post"
		modelAttribute="account">
		<!-- Page Container -->
		<div class="w1-content w3-margin-top" style="max-width: 1400px;">
			<div class="w3-row-padding">
				<!-- Left Column -->
				<div class="w3-third">

					<div class="w3-white w3-text-grey w3-card-4">
						<div class="w3-display-container">
							<img src="/resources${account.data}" style="width: 100%">
							<div class="w3-display-bottomleft w3-container w3-text-black">
								<h2>
									<br> <font color="teal">${account.firstName}
										${account.lastName} 
								</h2>
							</div>
						</div>
						<div class="w4-container" align="left">

							<p align="left">
								<br> <i
									class="fa fa-briefcase fa-fw w3-margin-right w3-large w3-text-teal">Designation
								</i><br> ${account.designation}
							</p>
							<p align="left">
								<i
									class="fa fa-briefcase fa-fw w3-margin-right w3-large w3-text-teal">EmployeeId
								</i><br>${account.employeeId} ${account.emailId}
							</p>
							<p align="left">
								<i
									class="fa fa-briefcase fa-fw w3-margin-right w3-large w3-text-teal">DateOfBirth</i><br>${account.dateOfBirth}</p>
							<p align="left">
								<i
									class="fa fa-briefcase fa-fw w3-margin-right w3-large w3-text-teal">Gender</i><br>${account.gender}</p>
							<p align="left">
								<i
									class="fa fa-briefcase fa-fw w3-margin-right w3-large w3-text-teal">Country</i><br>${account.country}</p>
							<hr>
							<p class="w3-large w3-text-theme">
								<b><i class="fa fa-globe fa-fw w3-margin-right w3-text-teal"></i>Friends</b>
							</p>
							<p>Friend 1</p>
							<div>
								<div style="height: 24px; width: 100%"></div>
							</div>
							<p>Friend 2</p>
							<div>
								<div style="height: 24px; width: 55%"></div>
							</div>
							<p>Friend 3</p>
							<div>
								<div style="height: 24px; width: 25%"></div>
							</div>
							<br>
						</div>
					</div>
					<br>
					<!-- End Left Column -->
				</div>
				<!-- Right Column -->
				<div class="w3-third">
					<div class="w3-container w3-card w3-white w3-margin-bottom">
						<h2 class="w3-text-grey w3-padding-16">
							<i></i>My Profile
						</h2>
						<div class="w3-container">
							<h5 class="w3-opacity">
								<b>Write Something</b>
							</h5>
							<textarea name="postContent" id="postContent"
								style="width: 96%; height: 90px; color: olive; border: 10px single teal; padding: 2%; font: 22px/30px sans-serif;">
</textarea>
							<input type="button" value="Submit" onclick="submitForm()"
								style="background-color: teal; color: white; padding: 5px; font-size: 16px; border: none; padding: 8px;">



							<!-- <input type="submit" value="Submit" > -->
							<!-- <input type="submit"  value="Submit"
								style="background-color: teal; color: white; padding: 5px; font-size: 16px; border: none; padding: 8px;"> -->

							<!-- <input type="submit" name= "imagepost" value="Upload Picture" onclick="clicked();"
								style="background-color: teal; color: white; padding: 5px; font-size: 16px; border: none; padding: 8px;">  -->


							<script type="text/javascript">
								function clicked() {
									alert('Picture Posted');
								}

								function submitForm() {
									// Get the first form with the name
									// Usually the form name is not repeated
									// but duplicate names are possible in HTML
									// Therefore to work around the issue, enforce the correct index
									var frm = document
											.getElementsByName('postForm')[0];
									frm.submit();
									frm.reset();
									// Submit the form
									// Reset all form data
									return false; // Prevent page refresh
								}
							</script>
							<%-- <form:form action="createImagePost" method="post" enctype="multipart/form-data" modelAttribute="account">

<c:forEach var="entry" items="${account.post.values()}">
		<tr>
			<h6 class="w3-text-teal">
				<i class="fa fa-calendar fa-fw w3-margin-right"></i>
				<script> document.write(new Date().toLocaleDateString()); </script>
				<span class="w3-tag w3-teal w3-round"></span>
			</h6>
			<p>
			
		</tr>
		<img src="/resources${account.post.imageContent}">
		<td><c:out value="${entry.account.firstName}" /></td> says
		<td><c:out value="${entry.postContent}" /></td>
		</p>
	</c:forEach>
							<input type="file" name="file" size="50" value="Choose picture" />
							 <input type="submit" value="Upload Picture" onclick="clicked();" style="background-color: teal; color: white; padding: 5px; font-size: 16px; border: none; padding: 8px;"/>
							</form:form>	 --%>
							<!-- <div align="center">
		<table>
			
			<tr>
				<td><input type="file" name="file" size="50"
					value="Choose picture" /></td>
					<td> <input type="submit" value="Upload Picture" onclick="clicked();" style="background-color: teal; color: white; padding: 5px; font-size: 16px; border: none; padding: 8px;"/></td>
			</tr>
			
		</table>
	 -->


							<%-- <s:forEach var="associates" items="${requestScope.associateList.toString()}">
	${associates}<br> --%>


							<c:forEach var="entry" items="${account.post.values()}">
								<table>
									<tr>
										<h6 class="w3-text-teal">
											<i class="fa fa-calendar fa-fw w3-margin-right"></i>
											<script>
												document.write(new Date()
														.toLocaleDateString());
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
							<b><font color="red">[Most Recent POST]</font> </b>
	</form:form>

	<script>
function likeFunction() {
	
	var frm = document
	.getElementsByName('postForm')[0];
	frm.submit();
	frm.reset();
	
	return false;
}







</script>

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
	<div class="w3-third" align="right">
		<div class="w3-card w3-round w3-white w3-center">
			<div class="w3-container">
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

<form action="searchBirthdays" method="get"
		>
				<p>Upcoming Birthdays:</p>
				<table>
			<tr>
				<th>Date of Birth</th>
				<th>First Name</th>
				<th>Last Name</th>
			</tr>
			<c:forEach var="associates" items="${accounts}">
				<tr>
					<th>${associates.firstName}</th>
					<th>${associates.lastName}</th>
					<th>${associates.dateOfBirth}</th>
				</tr>
			</c:forEach>
		</table>
		<b><button type="submit" value="Birthday">Show Birthday</b>
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
		<br>

		<div class="w3-card w3-round w3-white w3-padding-32 w3-center">
			<p>
				<i class="fa fa-bug w3-xxlarge"></i>
			</p>
		</div>
	</div>
	<!-- End Page Container -->
	</div>
	<%-- 	</form:form>
 --%>



	<footer class="w3-container w3-teal w3-center w3-margin-top">
		<p>Made By Team 1.</p>
	</footer>
</body>
</html>