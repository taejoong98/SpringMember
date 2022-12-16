<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보</title>
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
	<div class="wrap2">
		<table class="table table-hover">
			<thead>
				<tr class="table-active">
					<th scope="col">회원 정보</th>
					<th></th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th scope="col">닉네임</th>
					<td> ${memberDTO.uname} </td>				
				</tr>
				<tr>
					<th scope="col">이메일</th>
					<td>${memberDTO.umail}</td>				
				</tr>
				<tr>
					<th scope="col">비밀번호</th>
					<td>${memberDTO.upw}</td>				
				</tr>
				<tr>
					<th scope="col">가입날짜</th>
					<td>${memberDTO.joinday}</td>				
				</tr>
			</tbody>
		</table>
		<a href="./MemberUpdate?umail=${memberDTO.umail}"><button type="button">수정하기</button></a>
		<a href="./MemberDelete?umail=${memberDTO.umail}&upw=${memberDTO.upw}"><button type="button">삭제하기</button></a>
	</div>
</body>
</html>