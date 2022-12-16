<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
<c:forEach var="list" items="${list}">
<c:if test="${list.umail eq memberDTO.umail}">
<script type="text/javascript">
alert("입력하신 ${memberDTO.umail}이 존재합니다.");
location.href="./MemberInsert";
</script>
</c:if>
</c:forEach>
</head>
<body>
<script type="text/javascript">
alert("${memberDTO.uname} 님 반갑습니다.")
location.href="./MemberSelect";
</script>
</body>
</html>