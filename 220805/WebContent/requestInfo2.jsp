<!-- 요청한 정보들을 처리할 수  있는 페이지!!!! -->

<%@page import="java.net.URLDecoder"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.Map.Entry"%>
<%@page import="java.util.Map"%>
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

String input = request.getParameter("answer");
String print;

if (input.equals("콩비지") ) {
	print = "정답입니당";

} else {
   print = "아닌데용!!!!!!!!!!~~~~~~~~~~~정답은 !! 콩비지 입니댜 ~~~~~~~~~";
}
%>

 바로바로~~~~~~~ <%= print %><br />


</body>
</html>