<!-- out 객체: JSP에서 생성한 결과를 웹 브라우저에 전송해 주는 '출력 스트림' 
JSP 페이지가 웹 브라우저에게 보내는 모든 정보는 out 객체를 통해서 전송된다. -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>out 기본객체</title>
</head>
<body>
    <h1> 정적 테스트 </h1>
    <%= 1 + 2 + 3 %><br />
    
    <%
    out.println(1+2+3);
    out.println("<br />");
    %>
    
    <p>jsp의 모든 텍스트는 아웃객체가 출력합니다.</p>
    
    <%
    boolean someBool = true;
    
    if(someBool){
    	out.println("<p>참일때 출력해야하는 값 </p>");
    }else {
    	out.println("<p>거짓일 때 출력해야하는 텍스트</p>");
    }
/*특정한 조건 아래에서 출력해하는 텍스트가 자바 표현이 아닐 때 out객체를 통해 문자열을 적어둘 수 있음 */
    %>
</body>
</html>