<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시간</title>
</head>
<body>
	<% System.out.println("사용자가 jsp 페이지를 요청했습니다.")
     int a =10;
/* 	jsp에서도 변수선언, 초기화 후에 사용가능 */
%>
	<p>jsp 페이지입니다.</p>
	<strong> java.time.LocalTime.now()</strong>
	<p>
		a의 값은
		<%= a %>
		입니다.
	</p>
</body>
</html>