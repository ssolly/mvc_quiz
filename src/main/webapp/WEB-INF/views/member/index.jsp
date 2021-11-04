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

<a href="${contextPath }/member/join">회원가입</a> &ensp; &ensp;
<a href="${contextPath }/member/membership">모든 회원보기</a>
</body>
</html>