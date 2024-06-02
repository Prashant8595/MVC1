<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Hii This is home page</h1>
<h2>My name is prashant Kumar</h2>

<% String name= (String)request.getAttribute("name");
Integer id=(Integer)request.getAttribute("id");
List<String>friend=(List<String>)request.getAttribute("f");%>


<h4>name is <%=name%></h4>
<h1>Id is <%=id %></h1>
<%for(String s:friend){
	%>
	<h2><%=s %></h2>
<% }%>
</body>
</html>