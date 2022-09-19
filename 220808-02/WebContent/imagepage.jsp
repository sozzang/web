<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
/*  String str = request.getParameter("num");

if(str.equals("1")){
	out.println("<img src=\" ./images/chunsik/춘식1.png\" />");
}if(str.equals("2")){
	out.println("<img src=\" ./images/chunsik/춘식2.png\" />");
}if(str.equals("3")){
	out.println("<img src=\" ./images/chunsik/춘식3.png\" />");
} */


String[] str = request.getParameterValues("num");

for (int i = 0; i < str.length; i++ ){
	if(str[i].equals("1")){
		out.println("<img src=\" ./images/chunsik/춘식1.png\" />");
	}if(str[i].equals("2")){
		out.println("<img src=\" ./images/chunsik/춘식2.png\" />");
	}if(str[i].equals("3")){
		out.println("<img src=\" ./images/chunsik/춘식3.png\" />");
	} 
}
 %>
</body>
</html>