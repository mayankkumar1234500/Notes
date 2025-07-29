<%@page import="com.User.UserDetails"%>

<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
	<a class="navbar-brand" href="#">Navbar</a>



	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="index.jsp">Home
			</a></li>

			<li class="nav-item"><a class="nav-link" href="showNotes.jsp">Show
					notes</a></li>
			<li class="nav-item"><a class="nav-link" href="addNotes.jsp">Add
					notes</a></li>
		</ul>
		<%
		UserDetails user = (UserDetails) session.getAttribute("userD");
		if (user != null) {
			//System.out.println(user.getName());
		%>





		<a class="btn btn-outline-primary my-2 my-sm-0" data-toggle="modal"
			data-target="#exampleModal"><%=user.getName()%></a> <a
			class="btn btn-outline-primary my-2 my-sm-0" type="submit"
			href="LogoutServlet">Logout</a>


		<!-- Modal 
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body"></div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary">Save
							changes</button>
					</div>
				</div>
			</div>
		</div>			-->
		<%
		} else {
		%>

		<a class="btn btn-outline-primary my-2 my-sm-0" type="submit"
			href=" login.jsp">Login</a> <a
			class="btn btn-outline-primary my-2 my-sm-0" type="submit"
			href="register.jsp">Register</a>



		<%
		}
		%>


	</div>

</nav>
<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
  Launch demo modal
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       	<h1>hii</h1>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>


<!-- Required JS for Bootstrap 4.0 Modal -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>