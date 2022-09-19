<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>JSP Expression Language(EL)</p>
	${ "안녕 안녕 안녕 ~~ !" }
	${ 123 }
	${ 12.34 }
	${ true }
	<br/>
<!-- 연산도 가능 -->
	${ 1 + 2 }
	${ true && false }
	<br/>
	${pageContext.request.requestURI}
<!-- el표현식에서는 get어쩌고, 저쩌고 ~ -> 그냥 어쩌고,저쩌고~ 라고 써줘도 됨
el에서는 getrequst를 그냥 request로, getrequestURI를 requestURI라고 적어도 된다! -->
	
</body>
</html>
