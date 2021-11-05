<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member/membership.jsp</title>
</head>
<body>
	<h2>모든 회원보기</h2>
	<c:choose>
		<c:when test="${list.size() != 0 }">
			<table border="1">
				<tr>
					<th>id</th>
					<th>password</th>
					<th>name</th>
				</tr>
				<c:choose>
					<c:when test="${list.size() != 0 }">
						<c:forEach var="mem" items="${list }">
							<tr>
								<td>${mem.id }</td>
								<td>${mem.pwd }</td>
								<td><a
									href="${contextPath }/member/memberInfo?id=${mem.id }">${mem.name }</a>
								</td>
							</tr>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<tr>
							<th colspan="3">데이터가 존재하지 않습니다</th>
						</tr>
					</c:otherwise>
				</c:choose>
			</table>
		</c:when>
		<c:otherwise>
			데이터가 존재하지 않습니다
		</c:otherwise>
	</c:choose>
	<br>
	<a href="${contextPath }/member/index">index 이동</a>
</body>
</html>