<%@page import="java.util.Random"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.time.LocalTime"%>

<%

String alphabet
   = request.getParameter("alphabet");

request.setAttribute("alphabet", alphabet);

if (alphabet.equals("a")) {
	request.setAttribute("result", java.time.LocalTime.now());
   request.getRequestDispatcher("./A.jsp")
      .forward(request, response);
} else if (alphabet.equals("b")) {
	request.setAttribute("result", java.time.LocalDate.now());
   request.getRequestDispatcher("./B.jsp")
      .forward(request, response);
} else {
	Random r = new Random();
	request.setAttribute("result", r.nextInt());
   request.getRequestDispatcher("./C.jsp")
      .forward(request, response);
}

%>