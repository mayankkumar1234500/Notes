<!-- ----code Start for (this page will not be open without Login) -->

<%
  UserDetails user1=(UserDetails)session.getAttribute("userD");
		if(user1==null) {
			response.sendRedirect("login.jsp");
			session.setAttribute("login-error", "please login First....!!!");
		}
%>






<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome page</title>
<%@ include file="all_components/allcss.jsp"%>

</head>
<body>
	<%@ include file="all_components/navbar.jsp"%>

<div class="container-fluid p-0"> 
<div class="card py-5"> 
<div class="card-body text-center">
<img src="img/edit.png" class="img-fluid mx-auto" style="max-width: 300px;">
<h1>Start Your Notes</h1>
<a href="addNotes.jsp"class="btn btn-outline-primary">Add Your Notes</a>
</div>
</div>
</div>

</body>
</html>