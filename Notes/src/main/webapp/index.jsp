<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOME PAGE</title>
<style>
.back-img{
	background: url(project_image/istockphoto-1357021263-1024x1024.jpg);
	width: 100%;
	height: 80vh;
	background-repeat: no-repeat;
	background-size: cover;
}
</style>

<%@ include file="all_components/allcss.jsp" %>
</head>

<body>

<%@ include file="all_components/navbar.jsp" %>


<div class="container/-fluid back-img">
<div class="text-center">
			<h1 class="test-warning">E Notes- Save Your Notes</h1>
			<a class="btn btn-outline-success my-2 my-sm-0" type="submit"
				href="login.jsp">Login</a> <a
				class="btn btn-outline-success my-2 my-sm-0" type="submit"
				href="register.jsp">Register</a>
		</div>
</div>


<%@ include file="all_components/footer.jsp" %>
</body>
</html>