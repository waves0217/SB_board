<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록</title>
<style type="text/css">
	* {
		margin: 0 auto;
		padding: 0 auto;
		overflow:hidden;
	}
	td, h1 {
		text-align: center;
	}
</style>
</head>
<body>
	<h1>게시판 글 목록</h1>
	<table width="500" border="1" cellpadding="0" cellspacing="0">
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>제목</th>
			<th>날짜</th>
			<th>조회수</th>
		</tr>
		<c:forEach var="dto" items="${list}">
			<tr>
				<td>${dto.board_idx}</td>
				<td>${dto.board_name}</td>
				<td>
					<a href="contentForm?board_idx=${dto.board_idx}">${dto.board_title}</a>
				</td>
				<td>
					<c:set var="dateVar" value="${dto.board_date}"/>
					<fmt:formatDate value="${dateVar}" pattern="yyyy-MM-dd"/>
				</td>
				<td>${dto.board_hit}</td>
			</tr>
		
		</c:forEach>
		<tr>
			<td colspan="5"><a href="writeForm">글작성</a></td>
		</tr>
	</table>
	
</body>
</html>