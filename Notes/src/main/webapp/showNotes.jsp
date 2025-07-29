                         
                         
   <!-- Code Start for(This page will not be open without login -->
<%@page import="com.DAO.PostDAO"%>
<%@page import="java.util.List"%>
<%@page import="com.Db.DBConnect"%>
<%@page import="com.User.Post" %>

<%
UserDetails user1 = (UserDetails) session.getAttribute("userD");
if (user1 == null) {
        response.sendRedirect("login.jsp");
        session.setAttribute("login-error", "Please Login First!!..");
}
%>

<%@ include file="all_components/allcss.jsp"%>
<%@ include file="all_components/navbar.jsp"%>

<div class="container">
        <h1 class="text-center">Show Notes Page</h1>
        <%
                if(user1!=null){
                        PostDAO ob=new PostDAO(DBConnect.getConn());
                        List<Post> post=ob.getData(user1.getId());
                        int count=0;
                        for(Post po : post){
                                if(count % 3==0){
                %>                        

        <div class="row">
        <%
                                }
        %>
                <div class="col-md-4 mb-5">
                        <div class="card mt-3 w-100 h-100">
                                <div class="card-body p-4">
                                        <h4 class="card-title">Title: <%=po.getTitle() %></h4>
                                        <p><b>Content: <%= po.getContent() %></b></p>
                                        <p><b>Uploaded By: <%= user1.getName() %></b></p>
                                        <p><b>Upload Date: <%= po.getPdate() %></b></p>
                                        
                                        
                                        
                                </div>
                                <div class="">
                                        <a href="DeleteServlet?note_id=<%=po.getId()%>">Delete</a>
                                        <a href="edit.jsp?note_id=<%=po.getId()%>">Edit</a>
                                </div>

                        </div>
                </div>
        </div>
        <%
                }
                }
        %>
</div>

<%@ include file="all_components/footer.jsp"%>