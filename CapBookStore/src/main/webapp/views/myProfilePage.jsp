<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<title>W3.CSS Template</title>
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
</style>
<body class="w3-light-grey">
	<form:form action="createPost" method="post" modelAttribute="account">
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
				<div class="w3-twothird">
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
							<input type="submit"  value="Submit"
								style="background-color: teal; color: white; padding: 5px; font-size: 16px; border: none; padding: 8px;">

							<!-- <input type="submit" name= "imagepost" value="Upload Picture" onclick="clicked();"
								style="background-color: teal; color: white; padding: 5px; font-size: 16px; border: none; padding: 8px;">  -->
							
	</form:form>
 	<script type="text/javascript">
function clicked() {
    alert('Picture Posted');
}
</script>

<form:form action="createImagePost" method="post" enctype="multipart/form-data" modelAttribute="account">

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
							</form:form>	
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
		<tr>
			<h6 class="w3-text-teal">
				<i class="fa fa-calendar fa-fw w3-margin-right"></i>
				<script> document.write(new Date().toLocaleDateString()); </script>
				<span class="w3-tag w3-teal w3-round"></span>
			</h6>
			<p>
		</tr>
		<td><c:out value="${entry.account.firstName}" /></td> says
		<td><c:out value="${entry.postContent}" /></td>
		</p>
	</c:forEach>
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
	<!-- End Page Container -->
	</div>
	<%-- 	</form:form>
 --%>
 
 
	<footer class="w3-container w3-teal w3-center w3-margin-top">
		<p>Made By Team 1.</p>
	</footer>
</body>
</html>
