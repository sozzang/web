<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action = "./selectcontinent2.jsp">
	<%-- 사용자가 대륙을 선택할 수 있게 만들어야 함  
 선택한 대륙의 국가들의 이름, 인구를 볼 수 있는 (내림차순으로 정렬된 페이지) --%>
	<%
		List<String> list = (List) request.getAttribute("continent");
	%>

<select name="continent">
    <option value="">대륙을 선택하세요.</option>
 <% for(int i = 0; i < list.size(); i++){ %>
	 <option> <%= list.get(i) %> </option>
 <% } %>
</select>
<input type="submit" />
	</form>
</body>
</html>
