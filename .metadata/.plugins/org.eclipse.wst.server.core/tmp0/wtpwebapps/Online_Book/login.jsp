<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
.header
{
width:100%;
height:80px;
}
.menu
{
width:100%;
height:80px;
background-color:white;
}
.footer
{
width:100%;
height:80px;
background-color:white;
margin-top:355px;
}
.head
{
font-size: 30px;
color: #C71585;
}
</style>
</head>
<body>
<div class="header">
<center><%@include file="header.jsp" %></center>
</div>
<div class="menu">
<table border="12" width="100%" height="60px">
<tr><td align="center"><a href="home.jsp" style="text-decoration: none;">Home</a></td><td align="center"><a href="about.jsp" style="text-decoration: none;">About Us</a></td><td align="center"><a href="contact.jsp" style="text-decoration: none;">Contact Us</a></td><td align="center"><a href="login.jsp" style="text-decoration: none;">Login</a></td><td align="center"><a href="registration.jsp" style="text-decoration: none;">Sign Up</a></td></tr>
</table>
</div>
<div class="head" align="center">
User Login 
</div>
<center>
<font color="red">
<%String ss=(String)request.getAttribute("msg");
  if(ss!=null)
	  out.println(ss);
%>
<%String ss1=(String)request.getAttribute("key");
  if(ss1!=null)
	  out.println(ss1);
%>
<center><table>
 
<form action="Login"method="post">
<tr><td>Email_id:</td><td><input type="text" name="userId"></td></tr>
<tr><td>Password:</td><td><input type="password" name="password"></td></tr>
<tr><td><input type="submit" value="Login" ></td><td><a href="registration.jsp">Sign up</a></td></tr>
</table>
</center>
<div class="footer">
<center><%@include file="footer.jsp" %></center>
</div>
</body>
</html>