<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션정보보기</title>
</head>
<body>
	<p>
		세션 아이디 :
		<%=session.getId()%></p>
	<p>
		세션 생성시간 :
		<%=new Date(session.getCreationTime())%>
	</p>
	<p>
		마지막으로 세션에 접근한 시간 :
		<%=new Date(session.getLastAccessedTime())%></p>

</body>
</html>

<!-- 세션 유지시간 = 30분
같은 컴퓨터, 같은 브라우저, 세션 유지시간 내라고 해도 브라우저를 껐다 켜면 리셋됨
한 브라우저 안에서 탭을 여러개 열면 같은 세션(시크릿 모드는 다른 브라우저로 인식) -->