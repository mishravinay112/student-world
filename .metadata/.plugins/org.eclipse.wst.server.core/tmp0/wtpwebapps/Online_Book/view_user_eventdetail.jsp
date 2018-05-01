<%@page import="java.util.Iterator"%>
<%@page import="shareevent.EventDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
.footer
{
  margin-top: 320px;
}
.head
{
font-size: 30px;
color: #C71585;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<div class="menu">
<table border="12" width="100%" height="60px">
<tr><td align="center"><a href="home.jsp" style="text-decoration: none;">Home</a></td><td align="center"><a href="about.jsp" style="text-decoration: none;">About Us</a></td><td align="center"><a href="contact.jsp" style="text-decoration: none;">Contact Us</a></td><td align="center"><a href="logout.jsp" style="text-decoration: none;">Logout</a></td>
</table>
</div>
<div class="head" align="center">
Uploaded Event List
</div>
<div align="right">
<a href="Share_Event.jsp"><font color="red">Click here post an event</font></a>
</div>
<%
 ArrayList<EventDto> ss=(ArrayList)request.getAttribute("al1"); 
 Iterator<EventDto> i=ss.iterator(); 
 %>
 <center> <table border="0" width="90%" style="color: blue; font-size: large;">
 <tr><th>event_name</th><th>event_description</th></tr>
 <%
 while(i.hasNext())
 {
	 
	 EventDto s=(EventDto)i.next();
	 int s1=s.getEvent_status();
	 
	 %>
	 
	<tr><td align="center"><a href='DownloadingFile?filename=<%=s.getFile_path() %>'> <%=s.getEvent_name()%></td></a>
	
	
	 <td align="center"><a href='DownloadingFile?filename=<%=s.getFile_path() %>'> <%=s.getEvent_description()%></td></a>
	 </tr>
<% }%>
 </table>
 </center>
 <div class="footer">
 <%@include file="footer.jsp" %>
 </div>
 
 </body>
</html>