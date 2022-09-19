<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>대륙 선택</title>
</head>
<body>
<%
      List<String> list = (List<String>) request.getAttribute("Continentslist");
%>
   <form action="world.jsp" method="post">
      <select name="continent">
		<%
		for(String s : list) {
			out.println("<option >" + s + "</option>");
		}
		%>
      </select>
      <input type="submit" />
   </form>

</body>
</html>