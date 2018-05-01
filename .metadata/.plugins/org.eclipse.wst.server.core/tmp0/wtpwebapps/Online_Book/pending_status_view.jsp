<%@page import="pending.pending_status_Dto"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <%@include file="header.jsp" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
.menu
{
margin-top:0px;

}
.head
{
font-size: 30px;
color: #C71585;
}
</style>
</head>
<body>
<% HttpSession sh=request.getSession();
String email=(String)sh.getAttribute("ip");

%>
<div class="menu">
<table border="12" width="100%" height="60px">
<tr><td align="center"><a href="home.jsp" style="text-decoration: none;">Home</a></td><td align="center"><a href="about.jsp" style="text-decoration: none;">About Us</a></td><td align="center"><a href="contact.jsp" style="text-decoration: none;">Contact Us</a></td><% if(email!=null){%><td align="center"><a href="logout.jsp" style="text-decoration: none;">Logout</a></td><% } else { %><td align="center"><a href="login.jsp" style="text-decoration: none;">Login</a></td><td align="center"><a href="registration.jsp" style="text-decoration: none;">Sign Up</a></td></tr><%}%>
</table>
</div>

<div class="head" align="center">
 Pending User status
</div>
<% ArrayList<pending_status_Dto> al=(ArrayList)request.getAttribute("al1");
  Iterator<pending_status_Dto> ss=al.iterator();
  %>
  <center> <table border="1" width="100%">
  <tr><th>Photo_Path</th><th>Cource_Name</th><th>Cource_Stream</th><th>Cource_Subject</th><th>Writer_Name</th><th>Edition</th><th>Book_Name</th><th>Price</th><th>Negotiable_Status</th><th>Book_Description</th><th>Email_id</th><th>Link</th></tr>
  <%
  while(ss.hasNext())
  {
 	 pending_status_Dto s=(pending_status_Dto)ss.next();
 	 int s1=Integer.parseInt(s.getPending_status());
 	 int auto=s.getAutoincrement();
 	 
 	 String path=s.getFile_path();
 	String path1=path.substring(44);
 	
 	%>
 	 <tr><td><img src="file1/<%=path1%>" width="100" height="70" ></td><td><%=s.getCourse_name()%></td><td><%=s.getCourse_Stream()%></td><td><%= s.getCourse_subject()%></td><td><%=s.getWriter_name() %></td><td><%=s.getEdition() %></td><td><%= s.getBook_name()%></td><td><%= s.getPrice()%></td><td><%= s.getNegotiable_status()%></td><td><%=s.getBook_description()%></td><td><%=s.getEmail()%></td><td><% if(s1!=0){%><a href='disable?email=<%=auto%>'>disable</a><%}else{%><a href='enable?email=<%=auto%>'>enable</a><%}%></td></tr>
 	 
 	<% }%>
  </table>
  </center>
  <div>
  <%@include file="footer.jsp" %>
  </div>
</body>
</html>