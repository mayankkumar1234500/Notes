<%@page import="com.DAO.PostDAO"%>
<%@page import="java.util.List"%>
<%@page import="com.Db.DBConnect"%>
<%@page import="com.User.Post"%>
<!-- Code Start for (This page will not be open without login) -->

<%
UserDetails user1 = (UserDetails) session.getAttribute("userD");
if (user1 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("login-error", "Please Login First...!!!");
}
%>

<!-- -Code End for (This page will not be open without login) -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="all_components/allcss.jsp"%>
</head>
<body>
	<%
	Integer noteid = Integer.parseInt(request.getParameter("note_id"));
	PostDAO post = new PostDAO(DBConnect.getConn());
	Post p = post.getDataById(noteid);
	%>

	<%@ include file="all_components/navbar.jsp"%>
	<div class="container mt-5 mb-5">
		<h1 class="text-center">Update Your Notes</h1>
		<div class="row">
			<div class="col-md-12">
				<form action="EditServlet" method="post">
					<div class="form-group">
						<input type="hidden" value="<%=noteid%>" name="noteid"
							class="form-control">
					</div>

					<div class="form-group">
						<label for="exampleInputEmail1">Write Your Title :</label> <input
							type="text" name="title" value="<%=p.getTitle()%>"
							class="form-control" id="" aria-describedby=""
							placeholder="Enter Title">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Content :</label>
						<textarea name="content" rows="12" class="form-control"
							name="content" id=""><%=p.getContent()%></textarea>
					</div>
					<div class="text-center mt-3">
						<button type="submit" class="btn btn-primary">Update Note</button>
					</div>

				</form>
			</div>
		</div>
	</div>
	<%@ include file="all_components/footer.jsp"%>
</body>
</html>