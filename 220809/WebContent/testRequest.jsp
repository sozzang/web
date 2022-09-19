<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>자바 웹 어플리케이션은 각각의 고유한 context root 경로를 가집니다</p>
<p> <%= request.getContextPath() %>

<form action = "<%= request.getContextPath() %>/testRequest.jsp">
<input type = "submit" />
</body>
</html>

<!-- 웹프로젝트 만들 때 context root를 설정해줄 수 있다.
루트 경로로 경로를 알고싶다면 /220809/어쩌고 저쩌고 치기 귀찮고 root경로가 바뀔 수도 있으니깐 
request.getContextPath() 표현식을 사용하면 됨 
*루트변경 : 프로젝트 우클릭 -> properties ->web project settings -->

