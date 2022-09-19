
<%@page import="java.util.LinkedHashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
Class.forName("com.mysql.cj.jdbc.Driver");

Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;
String s = request.getParameter("continent");
Map<String, Integer> map = new LinkedHashMap<>();


try {
	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306", "root", "root");
	pstmt = conn.prepareStatement("select name, Population from world.country where Continent = ?");
	pstmt.setString(1, s);
	rs = pstmt.executeQuery();
	while (rs.next()) {
		String name = rs.getString("name");
		int num =rs.getInt ("population");
		map.put(name, num);
	}
	
	
	
} finally {
	if (rs != null) {
		rs.close();
	}
	if (pstmt != null) {
		pstmt.close();
	}
	if (conn != null) {
		conn.close();

	}
}



request.setAttribute("Map", map);
request.getRequestDispatcher("viewall.jsp")
.forward(request, response);


%>



