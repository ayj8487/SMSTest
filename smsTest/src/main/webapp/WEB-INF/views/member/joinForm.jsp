<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>회원가입</h1>
	<hr>
	<form action="memberjoin" method="get">
		<p><strong>개인정보 수집 및 이용</strong></p>
		<input type="checkbox" value="ck1" id="ck1" required="required">
		약관 내용1	<p>
		<p><strong>도서 구매서비스 이용약관</strong></p>
		<input type="checkbox" value="ck2" id="ck2" required="required">
		약관 내용2	<p>
		<input type="checkbox" value="ck3" id="ck3" required="required">
		약관 내용3	<p>
		<input type="checkbox" value="ck4" id="ck4" required="required">
		약관 내용4 <p>
	<hr>
		<p><input type="checkbox" id="ckAll"> <strong>전체 동의</strong><p>
	<hr>
		<input type="submit" value="다음">
	
	</form>

</body>
<script>
    // 전체 동의 체크 박스와 개별 약관 체크 박스 가져오기
    var ckAll = document.getElementById("ckAll");
    var ck1 = document.getElementById("ck1");
    var ck2 = document.getElementById("ck2");
    var ck3 = document.getElementById("ck3");
    var ck4 = document.getElementById("ck4");

	// 전체 동의 선택시 모든 약관에 체크 
    ckAll.addEventListener("click", function () {
        ck1.checked = ckAll.checked;
        ck2.checked = ckAll.checked;
        ck3.checked = ckAll.checked;
        ck4.checked = ckAll.checked;
    });

	// 개별약관 체크박스 선택해제 시 전체동의 체크박에 선택 해제 
	ck1.addEventListener("click", updateAllCheckbox);
    ck2.addEventListener("click", updateAllCheckbox);
    ck3.addEventListener("click", updateAllCheckbox);
    ck4.addEventListener("click", updateAllCheckbox);

    function updateAllCheckbox() {
        if (!ck1.checked || !ck2.checked || !ck3.checked || !ck4.checked) {
            ckAll.checked = false;
        } else {
            ckAll.checked = true;
        }
    }
</script>
</html>