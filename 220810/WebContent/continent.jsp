<%@page import="kr.co.greenart.Country"%>
<%@page import="java.util.List"%>
<%@page import="kr.co.greenart.CountryDAO"%>
<%
   CountryDAO dao = new CountryDAO();
   List<String> list = dao.getContinents();
   
   request.setAttribute("Continentslist", list);
   request.getRequestDispatcher("result1.jsp").forward(request, response);
%>