<!-- 사용자에게 입력을 받아 요청을 하는 페이지 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 정보</title>
</head>
<body>
	<form action ="/220805/requestInfo.jsp" method ="post">
<!-- method = 사용자가 submit을 눌렀을 때 어떤 방식으로 전송할 것인지 명시 
	아무것도 안적으면 get방식 - 요청 바디가 없음, 쿼리파라미터가 주소에 표현됨(입력값이 사용자에게 노출됨)  
	post는 대용량 데이터를 전송할 수 있음, 요청 바디가 존재함, 한글을 이해못함 그래서 디코딩해줘야함
	'charset = uft-8'로 인코딩해줬으니 디코딩도 똑같이 해주면 한글을 얻을 수 있음 
	정보를 살펴볼 때 디코딩이 필요한 것이므로 requestInfo에서 디코딩해줘야함  -->
	
	
	<label>이름 <input type = "text" name = "name"/></label>
	<label>나이<input type = "number" name = "age"/></label>
	<label><input type = "radio" name= "gender" value = "male"/>남성</label>
	<label><input type ="radio" name ="gender" value = "female"/>여성</label>
	<label><input type ="checkbox" name ="hobby" value = "java"/>자바</label>
	<label><input type ="checkbox" name ="hobby" value = "css"/>캐스캐이딩 스타일 시트</label>
	<label><input type ="checkbox" name ="hobby" value = "html"/>하이퍼 텍스트 마크업 랭귀지</label>
	<label><input type ="checkbox" name ="hobby" value = "javascript"/>자바스크립트</label>
	<input type = "submit" value = "입력완료"/>
	</form>
</body>
</html>