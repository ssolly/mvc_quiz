<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member/join.jsp</title>
</head>
<body>
	<h2> 회원가입 페이지 </h2>
	<form action="${contextPath }/member/register" method="post" >
		<input type="text" name="id" placeholder="id"><br>
		<input type="password" name="pwd" placeholder="passwrod"><br>
		<input type="text" name="name" placeholder="name"><br>
		<input type="submit" value="가입">
	</form>
</body>
</html>