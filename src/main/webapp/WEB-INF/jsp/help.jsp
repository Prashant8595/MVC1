<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>This is help page</title>
</head>
<body>

<%-- <%String name=(String)request.getAttribute("name");
Integer rollnumber=(Integer)request.getAttribute("rollnumber");

LocalDateTime time=(LocalDateTime) request.getAttribute("time");
%> --%>
<h1>THello this  is help page</h1>
<h2>How can i help you</h2>
<h1>your name is <%-- <%=name %> --%> ${name}</h1>
<h1>your rollnumber is <%-- <%=rollnumber %> --%>${rollnumber}</h1>
<h1>date and time is <%-- <%=time.toString() %> --%>${time}</h1>
</body>
</html>