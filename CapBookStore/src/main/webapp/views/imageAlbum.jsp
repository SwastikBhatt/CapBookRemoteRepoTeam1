<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<style>
div.gallery {
	margin: 5px;
	border: 1px solid #ccc;
	float: left;
	width: 180px;
}

div.gallery:hover {
	border: 1px solid #777;
}

div.gallery img {
	width: 100%;
	height: auto;
}

div.desc {
	padding: 15px;
	text-align: center;
}
</style>
</head>
<body>
	<script type="text/javascript">
		function clicked() {
			alert('Profile Picture Updated');
		}
	</script>
	<div align="center">
		<table>
			<form action="updateAlbum" method="post"
				enctype="multipart/form-data">
				<tr>
					<td>Pick file For Profile Picture:</td>
					<br>
					<td><input type="file" name="file" size="50"
						value="Choose your file" /></td>
				</tr>
				<tr>
					<td><input type="submit" value="Save Photo"
						onclick="clicked();" /></td>
					<br>
				</tr>
			</form>
		</table>
		<div class="gallery">
			<a target="_blank" href="img_5terre.jpg"> <img
				src="https://www.w3schools.com/CSS/img_5terre.jpg"
				alt="Cinque Terre" width="600" height="400">
			</a>
			<div class="desc">Add a description of the image here</div>
		</div>

		<div class="gallery">
			<a target="_blank" href="img_forest.jpg"> <img
				src="https://www.w3schools.com/CSS/img_forest.jpg" alt="Forest"
				width="600" height="400">
			</a>
			<div class="desc">Add a description of the image here</div>
		</div>

		<div class="gallery">
			<a target="_blank" href="img_lights.jpg"> <img
				src="https://www.w3schools.com/CSS/img_lights.jpg"
				alt="Northern Lights" width="600" height="400">
			</a>
			<div class="desc">Add a description of the image here</div>
		</div>

		<div class="gallery">
			<a target="_blank" href="img_mountains.jpg"> <img
				src="https://www.w3schools.com/CSS/img_mountains.jpg"
				alt="Mountains" width="600" height="400">
			</a>
			<div class="desc">Add a description of the image here</div>
		</div>
		<%-- 
   <img src="/resources${account.getImages()}" width="600" height="400">
   <c:forEach var="entry" items="${account.images.values()}">
								<tr>
									<h6 class="w3-text-teal">
										<i class="fa fa-calendar fa-fw w3-margin-right"></i>
										<script> document.write(new Date().toLocaleDateString()); </script>
										<span class="w3-tag w3-teal w3-round"></span>
									</h6>
								</tr>
								<tr>
									
									<td><c:out value="${entry.imageContent}" /></td>
								</tr>
							</c:forEach> --%>
		<c:forEach items="${account.images.values()}" var="entry">

			<img src="/resources${entry.imageContent}">
		</c:forEach>
</body>
</html>
