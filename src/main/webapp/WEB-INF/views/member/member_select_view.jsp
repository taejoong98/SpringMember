<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록</title>
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
	<div class="wrap2">
		<table class="table table-hover">
			<thead>
				<tr class="table-active">
					<th scope="col">닉네임</th>
					<th scope="col">이메일</th>
					<th scope="col">비밀번호</th>
					<th scope="col">가입날짜</th>

				</tr>
			</thead>
			<tbody>
				<c:forEach var="list" items="${list}">
					<tr>
						<th scope="row">${list.uname}</th>
						<td><a href="./MemberSelectDetail?umail=${list.umail}"
							class="pwcx">${list.umail}</a></td>
						<td>${list.upw}</td>
						<td>${list.joinday}</td>
					</tr>
				</c:forEach>
				<c:if test="${empty list}">
					<tr>
						<td scope="row">등록된 회원이 없습니다.</td>
					<tr>
				</c:if>
			</tbody>
		</table>
	</div>
</body>
</html>