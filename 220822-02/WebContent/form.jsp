<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form</title>
</head>
<body>
	<form>
		<input type="text" name="id" id="textid" />
		<button id="btnchk">아이디 중복확인</button>
		<input type="submit" />
	</form>
</body>
<script>
	let elem = document.getElementById("btnchk");
	elem.addEventListener("click", function (e) {
		e.preventDefault();
		e.stopPropagation();
		let textid = document.getElementById("textid").value;
		
		if (!textid) {
			return;
		}
		
		fetch("http://localhost:8080/api/idcheck?id=" + textid)
			.then((resp) => resp.text())
			.then((json) => {
				let result = JSON.parse(json);
				if (result.duplicate) {
					alert("중복");
				} else {
					alert("사용 가능");
				}
			})
			.catch((e) => console.log(e));
	});
</script>
</html>
<!-- 기본적으로 form안에 있는 버튼은 submit이 발생한다. 이를 막기 위해 아래 두개를 적어주면 됨
e.preventDefault();
		e.stopPropagation();-->