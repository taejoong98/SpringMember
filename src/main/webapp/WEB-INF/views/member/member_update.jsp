<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정</title>
<link href="./css/bootstrap.css" rel="stylesheet">
<script src="./js/jquery-3.5.1.min.js" type="text/javascript"></script>
<script type="text/javascript" src="./js/member_c.js"></script>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Home</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarColor01"
				aria-controls="navbarColor01" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarColor01">
				<ul class="navbar-nav me-auto">

					<li class="nav-item"><a class="nav-link active"
						href="./MemberInsert">회원 가입
					</a></li>

					<li class="nav-item"><a class="nav-link active"
						href="./MemberSelect">회원 목록</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="wrap">
		<div class="tae2">
			<h2>회원 수정</h2>
		</div>
		<form id="ud" method="post">
			<fieldset>
				<legend></legend>
				<div class="form-group">
					<label for="umail" class="form-label mt-4"></label> <input
						type="email" class="form-control" id="umail" name="umail"
						value="${param.umail}" disabled>
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
			</fieldset>

			<fieldset class="form-group">
				<legend class="mt-4"></legend>
				<button type="submit" class="btn btn-danger">수정하기</button>
			</fieldset>
		</form>
	</div>
</body>
</html>