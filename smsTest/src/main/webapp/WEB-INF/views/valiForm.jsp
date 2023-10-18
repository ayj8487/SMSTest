<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h3>아이디 찾기</h3>
	
	<form action="/send-one" method="post">
		<button type="submit">인증번호 전송</button><p>
	</form>
	
	<div>
		<form action="/vali-code" method="post">
		인증 번호 입력 : <input type="text" id="inputCode" name="inputCode" required="required">
					<input type="submit" value="확인">
		</form>
	</div>


</body>
</html>