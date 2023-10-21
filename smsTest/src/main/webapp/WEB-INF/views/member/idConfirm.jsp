<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>idConfirm</title>

</head>
<body>
	
 	<c:if test="${not empty idConOk}">
        <p>${idConOk} 는 존재하는 아이디 입니다.</p>
        <form action="idConfirm">
        	새로운 ID <input type="text" id="m_id" name="m_id" required="required">
        		<input type="submit" value="확인">
        </form>
    </c:if>
    
	<c:if test="${!not empty idConOk}">
         사용할 수 있는 ID 입니다 :  <span id="m_id"></span><p>
	<button onclick="window.close()">사용</button>
    </c:if>
	
	
</body>
  <script type="text/javascript">
        // URL에서 m_id 값을 추출
        var queryString = window.location.search;
        var urlParams = new URLSearchParams(queryString);
        var m_id = urlParams.get("m_id");

        // m_id 값을 화면에 출력
        var mIdDisplayElement = document.getElementById("m_id");
        mIdDisplayElement.textContent = m_id;
        
        
    </script>
</html>