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
height:60px;
background-color:white;
margin-top:400px;
}
.msg
{
color: black;
font-size: 40px;

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
<center>
<div class="msg1">This project is made for the convenience of students to buy, sell books and sharing events of their college.
<br>Develepors Details:<br>Abhinesh Dubey<br>Deendayal Ahirwar<br>Meherban singh kirar<br><br>SCSIT, DAVV, INDORE 
<br>meherbansingh1989@gmail.com<br>
anhijma1990@gmail.com<br>
deen05dayal@gmail.com<br>	

</div></center>
<div class="footer">
<center><%@include file="footer.jsp" %></center>
</div>
</body>
</html>