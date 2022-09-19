
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 처리</title>
</head>
<body>
	<p>로그인 처리 요청이 전달되었나요?</p>
	<%
		String id = request.getParameter("userid");
	
	// 해당 파라미터 값이 전달되었으나 값이 없으면 빈 문자열("")을 반환한다.
	// 파라미터의 이름이 없으면 null을 반환한다.
		
		// 입력값이 있으면 xx님 반갑습니다.
		if (id.length() > 0) {
			out.println(id + "님 반갑습니다.");
		} else {
			out.println("입력해주세요.");
			response.sendRedirect("./login.jsp");
			//입력안했으면 계속 로그인 페이지로 가도록 redirect
			//redirect응답 : 로그인 누르면 : 요청 처리해줘-> 아니 네이버로 가 -> 네이버로 go -> 네이버로 응답
			//페이지 이동이 일어나는 것 처럼 만들어줄 수 있음 
		}
	%>
</body>
</html>