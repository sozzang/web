
	<%
		String str = request.getParameter("contact");

	if (str.equals("persons")) {
		response.sendRedirect("./persons.jsp");
	} else {
		response.sendRedirect("./fruit.jsp");
	} 
	%>

<!-- 	논리적인 흐름만 갖고있기 때문에 <body></body> 이런거 다 필요 없 -->