<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>전체 회원 조회</h2>
	<div>
		<table>
			<tr>
				<th>회원 번호</th>
				<th>회원 이름</th>
				<th>회원 아이디</th>
				<th>회원 비밀번호</th>
				<th>회원 전화번호</th>
				<th>회원 주소</th>
				<th>회원 이메일</th>
				<th>회원 생일</th>
				<th>회원 가입일</th>
				<th>회원 포인트</th>
				<th>관리자 여부</th>
				<th>탈퇴자 여부</th>
			</tr>
			<c:forEach var="m" items="${memberList }">
				<tr>
				<td>${ m.m_num}</td>
				<td>${m.m_name }</td>
				<td>${m.m_id }</td>
				<td>${m.m_pw }</td>
				<td>${m.m_ph }</td>
				<td>${m.m_addr }</td>
				<td>${m.m_email }</td>
				<td>${m.m_birth }</td>
				<td>${m.m_date }</td>
				<td>${m.m_point }</td>
				<td>${m.m_admin }</td>
				<td>${m.m_wd }</td>
				</tr>
			</c:forEach>

		</table>
	</div>




</body>
</html>