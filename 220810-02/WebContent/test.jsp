<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach var="i" begin="1" end="10">
		<c:if test="${ 1 % 2 == 0 }">
			<p>${ i }</p>
		</c:if>
	</c:forEach>
	<hr />
	<c:choose>
		<c:when test="true">
			<p>첫번째 조건이 참일때</p>
		</c:when>
		<c:when test="false">
			<p>두번째 조건이 참일때</p>
		</c:when>
		<c:otherwise>
			<p>모든 조건이 참이 아닐때</p>
		</c:otherwise>
	</c:choose>
</body>
</html>

<!-- jstl 자르파일을 c라고 부를거야!
c에는 foreach , if 태그가 있어 그걸 사용!
임의로 사용하는거지~  ifelse는 없는데 choose로 대신 사용-->