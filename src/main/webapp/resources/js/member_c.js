$(function() {
	//회원가입 유효성 검사
	$("#in").submit(function() {
		// 이메일 유효성 검사
		var emailc = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
		//비밀번호 유효성 검사
		var pwc = RegExp(/^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{6,12}$/);
		//닉네임 유효성 검사
		var namec = /^(?=.*[a-z0-9가-힣])[a-z0-9가-힣]{2,10}$/;
		
		// 이메일 확인
		if (!$("input[name='umail']").val()) {
			alert("이메일을 입력하세요");
			$("input[name='umail']").focus();
			return false;
		}
		//이메일 유효성 검사
		if(!emailc.test($("input[name='umail']").val())) { 
			alert("이메일형식에 맞게 입력해주세요"); 
			$("input[name='umail']").val(""); 
			$("input[name='umail']").focus(); 
			return false; 
			}
		// 비밀번호 확인
		if (!$("input[name='upw']").val()) {
			alert("비밀번호를 입력하세요");
			$("input[name='upw']").focus();
			return false;
		}
		// 비밀번호 유효성 검사
		if (!pwc.test($("input[name='upw']").val())) {
			alert("숫자와 영문자, 특수기호 조합으로 6~12자리를 사용해야 합니다.");
			$("input[name='upw']").val("");
			$("input[name='upw']").focus();
			return false;
		}		
		// 비밀번호 2차 확인
		if (!$("input[name='upw2']").val()) {
			alert("2차 비밀번호를 입력하세요");
			$("input[name='upw2']").focus();
			return false;
		}
		// 비밀번호 일치 확인
		if ($("input[name='upw']").val() != $("input[name='upw2']").val()) {
			alert("비밀번호가 일치하지 않습니다.");
			$("input[name='upw2']").focus();
			return false;
		}
		// 닉네임 확인
		if (!$("input[name='uname']").val()) {
			alert("닉네임을 입력하세요");
			$("input[name='uname']").focus();
			return false;
		}
		// 닉네임 유효성 검사
		if (!namec.test($("input[name='uname']").val())) {
			alert("2자 이상 10자 이하로 입력하세요.");
			$("input[name='uname']").focus();
			return false;
		}
		// 체크박스 확인
		if (!$("input[name='ucheck']").is(":checked")) {
			alert("필수 동의항목에 동의해주세요");
			$("input[name='ucheck']:eq(0)").focus();
			return false;
		}
		if (!$("input[name='ucheck2']").is(":checked")) {
			alert("필수 동의항목에 동의해주세요");
			$("input[name='ucheck2']:eq(0)").focus();
			return false;
		}
		if (!$("input[name='ucheck3']").is(":checked")) {
			alert("필수 동의항목에 동의해주세요");
			$("input[name='ucheck3']:eq(0)").focus();
			return false;
		}		
	});
});


$(function() {
	$("#ud").submit(function() {	
		//비밀번호 유효성 검사
		var pwc = RegExp(/^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{6,12}$/);
		//닉네임 유효성 검사
		var namec = /^(?=.*[a-z0-9가-힣])[a-z0-9가-힣]{2,10}$/;
		
		// 비밀번호 확인
		if (!$("input[name='upw']").val()) {
			alert("비밀번호를 입력하세요");
			$("input[name='upw']").focus();
			return false;
		}
		// 비밀번호 유효성 검사
		if (!pwc.test($("input[name='upw']").val())) {
			alert("숫자와 영문자, 특수기호 조합으로 6~12자리를 사용해야 합니다.");
			$("input[name='upw']").val("");
			$("input[name='upw']").focus();
			return false;
		}		
		// 비밀번호 2차 확인
		if (!$("input[name='upw2']").val()) {
			alert("2차 비밀번호를 입력하세요");
			$("input[name='upw2']").focus();
			return false;
		}
		// 비밀번호 일치 확인
		if ($("input[name='upw']").val() != $("input[name='upw2']").val()) {
			alert("비밀번호가 일치하지 않습니다.");
			$("input[name='upw2']").focus();
			return false;
		}
		// 닉네임 확인
		if (!$("input[name='uname']").val()) {
			alert("닉네임을 입력하세요");
			$("input[name='uname']").focus();
			return false;
		}
		// 닉네임 유효성 검사
		if (!namec.test($("input[name='uname']").val())) {
			alert("2자 이상 10자 이하로 입력하세요.");
			$("input[name='uname']").focus();
			return false;
		}

	});
});
$(function() {
	$("#de").submit(function() {
		// 비밀번호 확인
		if (!$("input[name='upw']").val()) {
			alert("비밀번호를 입력하세요");
			$("input[name='upw']").focus();
			return false;
		}
	});
});