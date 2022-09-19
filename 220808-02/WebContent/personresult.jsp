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
String name = request.getParameter("name");
String age = request.getParameter("age");
	if (age == null || age.length() == 0)  {
		//파라미터에 걍 바로 name= 어쩌고 , age = 어쩌고 적을 수도 있으니까
		//응답코드도 적어줘보자 
		response.setStatus(400);
		out.println("잘못된 입력");
	}else{
		out.println(name + "(" + age + "살)" +  "님 반갑습니다.");
	}
%>
</body>
</html>