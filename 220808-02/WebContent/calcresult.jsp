<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String str = request.getParameter("cal");
	String n1 = request.getParameter("num1");
	String n2 = request.getParameter("num2");
	Integer num1 = Integer.parseInt(n1);
	Integer num2 = Integer.parseInt(n2);
	
	if (str.equals("plus")) {
		out.println(num1 + num2);
	}else if(str.equals("minus")){
		out.println(num1 - num2);
	}else if(str.equals("mul")){
		out.println(num1 * num2);
	}else {
		out.println(num1 / num2);
	}
	
	%>
</body>
</html>