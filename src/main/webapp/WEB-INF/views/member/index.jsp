<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member/index.jsp</title>
</head>
<body>

<h2> Index page </h2>
<c:choose>
	<c:when test="${ reMap == null || reMap.usercheck.chk != 0}">
		<script> ucheck(${reMap.usercheck.chk}) </script>
		<form action="check" method="post">
			<input type="text" name="id" placeholder="id"><br>
			<input type="password" name="pwd" placeholder="password"><br>
			<input type="submit" value="login">
			<br>
			<a href="${contextPath }/member/join">회원가입</a>
		</form>
	</c:when>
	<c:otherwise>
		<h3>
			<img src="${contextPath }/resources/강아지.PNG" width="50px">
			${reMap.usercheck.name} 님 환영합니다!!!
		</h3>
	</c:otherwise>
</c:choose>
<a href="${contextPath }/member/membership">모든 회원보기</a>
</body>
</html>