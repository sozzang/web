<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p> 어플리케이션 기본객체에 이름-값 설정하는 페이지</p>
<%
application.setAttribute("mystr", "string-obj");
application.setAttribute("myInt", Integer.valueOf(10));
%>
</body>
</html>

<!-- 서버 안에서 바로 get하면 add 설정이 안돼있는데 
add페이지를 거쳐서 설정한 후 get에 가면 설정되어있음 -->