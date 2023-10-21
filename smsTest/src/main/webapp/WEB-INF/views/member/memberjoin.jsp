<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- 카카오  주소 API -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>

<script type="text/javascript">
    function idcon() {
        var m_id = document.getElementById("m_id").value;
        var xhr = new XMLHttpRequest();
        xhr.open("GET", "/member/idConfirm?m_id=" + m_id, true);
        xhr.onreadystatechange = function () {
            if (xhr.readyState === 4 && xhr.status === 200) {
                var result = xhr.responseText;
                var idConResult = document.getElementById("idConResult");
                if (result === "exist") {
                    idConResult.innerHTML = "이미 존재하는 아이디입니다.";
                } else if (result === "available") {
                    idConResult.innerHTML = "사용 가능한 아이디입니다.";
                }
            }
        };
        xhr.send();
    }
</script>

</head>
<body>
	
	<h1>회원가입</h1>
	<form action="" method="post" id="frm">
		이름 <input type="text" id="m_name" name="m_name" placeholder="이름을 입력해주세요." required="required"> <p>	
		아이디 <input type="text" id="m_id" name="m_id" placeholder="아이디를 입력해주세요" required="required"> <button onclick="idcon()">중복확인</button> <div id="idConResult"></div><p>
		<small>(4자 ~ 12자라의 영문자, 숫자 / @,#,$ 등 특수문자는 제외)</small> <p>
		이메일 
		<input type="text"  id="m_email1" name="m_email" size="8" required="required">
		 @ 
		 <input type="text" id="m_email2" name="m_email2" required="required"> 
		 <select>
		 	<option>naver.com</option>
		 	<option>gmail.com</option>
		 	<option>daum.com</option>
		 	<option>hanmail.com</option>
		 	<option>nate.com</option>
		 	<option>yahoo.com</option>
		 	<option selected="selected">직접 입력</option>
		 </select><p>
		
		비밀번호 <input type="password" id="m_pw" name="m_pw" placeholder="비밀번호를 입력해주세요" required="required"> <p>
			<small>영문,숫자,특수문자 조합하여 8자~20자리</small> <p>
		비밀번호 재입력 <input type="password" id="pw_ck" required="required">	<p>
		
		휴대전화 
			<input type="text" size="4" id="m_ph1" name="m_ph1" required="required"> 
			-
			<input type="text" size="4" id="m_ph2" name="m_ph2" required="required"> 
			-
			<input type="text" size="4" id="m_ph3" name="m_ph3" required="required"> <p>
		생년월일 
			<input type="text" id="m_birth" name="m_birth" size="8" maxlength="8" placeholder="ex)20020101">			
			<small>생년월일 8 자리를 입력하세요</small> <p>
		
		주소 
			<input type="text" id="sample6_postcode" placeholder="주소검색 버튼을 이용해주세요" size="25">
			<input type="button" onclick="sample6_execDaumPostcode()" value="주소 검색"><br>
			<input type="text" id="sample6_address" placeholder="주소" size="40" required="required"><br>
			<input type="text" id="sample6_extraAddress" placeholder="참고항목" size="40"><p>
	상세주소입력 <input type="text" id="sample6_detailAddress" placeholder="상세주소를 입력해주세요" size="25" required="required"> <p>
		
		추천인 <input type="text" id="m_reid" name="m_reid" placeholder="추천인 아이디를 입력해주세요 : 선택 " size="35"><p>	
					
		<input type="submit" value="회원 가입하기">
		
	</form>
	
	
</body>


<script type="text/javascript">
// ********* 이메일 처리 *********
	// select  요소 가져옴	
    var emailSelect = document.querySelector("select");

	// m_email2 입력 필드 가져옴
    var mEmail2 = document.getElementById("m_email2");

	// select 요소의 이벤트 change
    emailSelect.addEventListener("change", function() {
    	// 선택된 select 요소의 옵션에서 value 속성 값을 selectedOption 변수에 할당
  		 var selectedOption = emailSelect.options[emailSelect.selectedIndex].value;

        // "직접입력" 옵션을 선택한 경우
        if (selectedOption === "직접입력") {
            // m_email2 입력 필드를 활성화하고 포커스를 설정,  disabled : 비활성화
            mEmail2.removeAttribute("disabled");
            mEmail2.value = ""; // 입력 필드 초기화
            mEmail2.focus();
        } else {
            // 다른 옵션을 선택한 경우 m_email2 입력 필드를 비활성화하고 값을 설정
            mEmail2.setAttribute("disabled", "disabled");
            mEmail2.value = selectedOption;
        }
    });
	
 // ********* 전화번호 처리 *********
    // 각 입력 필드의 최대 길이 지정
    var maxLength = 4;

    // 각 입력 필드의 이벤트 리스너를 추가
    document.getElementById("m_ph1").addEventListener("input", function() {

        // this 키워드로 현재객체를 가르킴 
        // 현재 입력필드 값의 길이 > 지정최대값(4) 일때 
        // 현재 입력필드의  값 = 0 부터 지정최대값(4) 
        // 이후 현재 값이 최대값일 때 다음으로 포커스 이동
        if (this.value.length > maxLength) {
            this.value = this.value.slice(0, maxLength);
        }
        // 입력이 최대값에 도달하면 두 번째 입력 필드로 포커스를 이동
        if (this.value.length === maxLength) {
            document.getElementById("m_ph2").focus();
        }
    });

    document.getElementById("m_ph2").addEventListener("input", function() {
        if (this.value.length > maxLength) {
            this.value = this.value.slice(0, maxLength);
        }
        if (this.value.length === maxLength) {
            document.getElementById("m_ph3").focus();
        }
    });

    document.getElementById("m_ph3").addEventListener("input", function() {
        if (this.value.length > maxLength) {
            this.value = this.value.slice(0, maxLength);
        }
    });
	
	
</script>


</html>