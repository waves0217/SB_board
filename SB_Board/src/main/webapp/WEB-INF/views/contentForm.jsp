<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 내용</title>
</head>
<h2>글 내용</h2>
<body>
	<form action="updateAction" method="post">
		<table width="500" border="1" cellpadding="0" cellspacing="0">
			<input type="hidden" name="board_idx" value="${dto.board_idx}"> 
			<input type="hidden" name="board_name" value="${dto.board_name}"> 
			<tr>
				<td>번호</td>
				<td>${dto.board_idx}</td>
			</tr>
			<tr>
				<td>조회수</td>
				<td>${dto.board_hit}</td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="board_name" value="${dto.board_name}" size="50"></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" name="board_title" value="${dto.board_title}" size="50"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea row="10" cols="55" name="board_content">${dto.board_content}</textarea></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="수정하기">&nbsp;&nbsp;
					<a href="listForm"><input type="button" value="목록보기"></a>&nbsp;&nbsp;
					<a href="deleteAction?board_idx=${dto.board_idx}"><input type="button" value="삭제하기"></a></td>
			</tr>
		</table>
	</form>
</body>
</html>