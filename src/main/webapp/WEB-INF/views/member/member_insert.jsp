<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
<link href="./css/bootstrap.css" rel="stylesheet">
	<script src="./js/jquery-3.5.1.min.js" type="text/javascript"></script>
	<script type="text/javascript" src="./js/member_c.js"></script>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Home</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarColor01">
      <ul class="navbar-nav me-auto">
      
        <li class="nav-item">
          <a class="nav-link active" href="./MemberInsert">회원 가입
          </a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link active" href="./MemberSelect">회원 목록</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
	<div class="wrap">
		<div class="tae">
			<h2>이메일 주소로 회원가입</h2>
		</div>		
		<form id="in" method="post">
			<fieldset>
				<legend></legend>
				<div class="form-group">
					<label for="umail" class="form-label mt-4"></label> <input
						type="email" class="form-control" id="umail" name="umail"
						placeholder="이메일">
				</div>
				<div class="form-group">
					<label for="upw" class="form-label mt-4"></label> <input
						type="password" class="form-control" id="upw" name="upw"
						placeholder="비밀번호">
				</div>
				<div class="form-group">
					<label for="upw2" class="form-label mt-4"></label> <input
						type="password" class="form-control" id="upw2" name="upw2"
						placeholder="비밀번호 확인">
				</div>
				<div class="form-group">
					<label for="uname" class="form-label mt-4"></label> <input
						type="text" class="form-control" id="uname" name="uname"
						placeholder="닉네임">													
				</div>			
				<div>               
				</div>
			</fieldset>
			<fieldset class="form-group">
				<legend class="mt-4"></legend>
				<div class="form-check">
					<input class="form-check-input" type="checkbox" 
						id="ucheck" name="ucheck"> <label class="form-check-label"
						for="ucheck"> 사이트 이용약관에 대한 동의 (필수) </label>
				</div>
				<div class="form-check">
					<input class="form-check-input" type="checkbox" 
						id="ucheck2" name="ucheck2"> <label class="form-check-label"
						for="ucheck2"> 개인정보 수집 및 이용 동의 (필수) </label>
				</div>
				<div class="form-check">
					<input class="form-check-input" type="checkbox" 
						id="ucheck3" name="ucheck3"> <label class="form-check-label"
						for="ucheck3"> 만 14세 이상임을 확인합니다 (필수) </label>
				</div>
			</fieldset>

			<fieldset class="form-group">
				<legend class="mt-4"></legend>
				<button type="submit" class="btn btn-danger" >가입하기</button>			
			</fieldset>

			<fieldset class="form-group">
				<legend class="mt-4"></legend>
				<div class="joong">
					이미 가입하셨나요?<a href="#"> 로그인</a>
				</div>
			</fieldset>
		</form>		
	</div>
</body>
</html>