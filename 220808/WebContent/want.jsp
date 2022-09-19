<!-- 사용자에게 보여져야하는 페이지 2개를 만들고 사용자의 선택, 입력에 따라 페이지를 보여줄 수 있게 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뭘 보고싶니 ???</title>
</head>
<body>

	<form action = "./want2.jsp" >
		<input type="radio" value="persons" name="contact" /> 사람 
		<input type="radio" value="fruit" name="contact" /> 과일
		<input type="submit" /> 
<!--radio타입 만들고 name으로 그룹화해주면 같은 name 값을 가진 여러개의 선택중에서 하나의 값을 선택
name= "a" 로 3개 만들고, name = "b"로 2개 만들면 a그룹에 속한 3개의 버튼 중 하나만 선택가능, b그룹에 속한 2개의 버튼중 하나만 선택가능 -->

	</form>
</body>
</html>