<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	List<String> list = new ArrayList<>();
for (int i = 0; i < 100; i++) {
	list.add("book" + i);
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String p = request.getParameter("page");
	// 문자열로는 연산할 수 없으니까 숫자로 바꿔주기
	Integer num = Integer.parseInt(p);

	int start = (num - 1) * 10;
	int end = start + 10;

	for (int i = start; i < start + 10; i++) {
		out.println(list.get(i));
		out.println("<br/>");
	}
	%>
</body>
</html>