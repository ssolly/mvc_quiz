<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>re/index.jsp</title>
</head>
<body>
	<c:set var="contextPath" value="${pageContext.request.contextPath }" />
	<img src="resources/강아지.PNG" width="130px" height="100px">
	<img src="${contextPath }/resources/강아지.PNG" width="130px" height="100px" >
	<img src="<c:url value='/resources/강아지.PNGg'/>" width="130px" height="100px">
	<hr>
	<img src="resources/test/강아지1.PNG" width="130px" height="100px">
	<img src="css/강아지2.PNG" width="130px" height="100px">
	<hr>
	<form action="result">
		<input type="text" name="id"><br>
		<input type="submit" value="전송">
	</form>
</body>
</html>