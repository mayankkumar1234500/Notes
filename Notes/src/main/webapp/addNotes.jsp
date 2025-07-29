<!-- ----code Start for (this page will not be open without Login) -->

<%
UserDetails user1 = (UserDetails) session.getAttribute("userD");
if (user1 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("login-error", "please login First....!!!");
}
%>

<%@ include file="all_components/allcss.jsp"%>
<title>Add Notes</title>
<%@ include file="all_components/navbar.jsp"%>
<div class="container mt-5 mb-5">
	<h1 class="text-center">Add Your Notes</h1>
	<div class="row">
		<div class="col-md-12">

			<form action="AddNotes" method="post">
				
				<div class="from-group">
				<%
					UserDetails us = (UserDetails) session.getAttribute("userD");
					if (us != null) {
					%>
					<input type="hidden" name="uid" class="from-control" value="<%=us.getId()%>">
					<%
					}
					%>
				</div>

				<div class="form-group">
					<label for="exampleInputEmail1">Enter Title :</label> <input
						type="text" name="title" class="form-control" id=""
						aria-describedby="" placeholder="Enter title">
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">Content :</label>
					<textarea rows="12" name ="content" class="form-control" id=""></textarea>
				</div>
				<div class="text-center mt-3">
					<button type="submit" class="btn btn-primary">Add note</button>
				</div>

			</form>
		</div>
	</div>
</div>
<%@ include file="all_components/footer.jsp"%>