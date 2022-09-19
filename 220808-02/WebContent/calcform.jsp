<!-- 입력폼 
숫자 1
숫자 2
연산자 + - * / 선택 
전송하면 계산 결과가 페이지에서 출력되게 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action = "./calresult.jsp">
<input type = "number" name = "num1"/>
<input type = "number" name = "num2"/>
<input type = "radio" name = "cal" value = "plus"/>+
<input type = "radio" name = "cal" value = "minus"/>-
<input type = "radio" name = "cal" value = "mul"/>*
<input type = "radio" name = "cal" value = "div"/>/
<input type="submit" value ="계산" />

</form>

</body>
</html>