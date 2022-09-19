<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p> context가 뭔가여?</p>
<%
ServletRequest req = pageContext.getRequest();
out.println (req == request);
out.println ( "<br />");
ServletResponse resp = pageContext.getResponse();
out.println (resp == response);
%>
</body>
</html>

<!-- context : 개발자들이 사용하는 개발에 필요한 정보들을 모아놓은 공간 
 pageContext.get어쩌고~~-->
