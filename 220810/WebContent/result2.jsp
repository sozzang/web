<%@page import="kr.co.greenart.Country"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>목록</title>
</head>
<body>

	<c:if test="${ not empty Countrylist }">
		<ul>
			<c:forEach var="country" items="${Countrylist}">
				<li>${ country.name } ${ country.population }</li>
			</c:forEach>
		</ul>
	</c:if>
	
</body>
</html>

<%-- <%
      List<Country> list = (List<Country>) request.getAttribute("Countrylist");
%>
   <ul>
   <% 
      for (int i = 0; i < list.size(); i++) { %>
         <li><%= list.get(i).getName() %>
            인구 -
            <%= list.get(i).getPopulation() %>
         </li>
   <% }%>   
   </ul> --%>