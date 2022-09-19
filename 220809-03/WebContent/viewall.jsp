<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>대륙별 나라</title>
</head>
<body>

 	<%
		Map<String, Integer> map = (Map) request.getAttribute("Map");
	%>
	<ul>
		<%
			for (String s : map.keySet()) {
		%>
		<li> <%= s %> , <%= map.get(s) %> </li>

		<%
			}
		%>
	</ul> 
</body>
</html>

