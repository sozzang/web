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
		session.invalidate();
	%>
	<p>세션이 만료되었습니다</p>
</body>
</html>

<!-- 세션 종료 
이 페이지 실행 후 다시 info에서 실행시키면 그 전 아이디 값이 사라지가 다른 아이디값을 부여, 시간도 바뀜 -->