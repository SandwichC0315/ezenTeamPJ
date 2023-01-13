<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>게시글 등록 페이지</h2>
	<form action="BoardQnaInsert.do" method="post">
	<table border="1">
		<tr>
			<th align = "right">제목</th>
			<td><input type="text" name="title"></td>
		</tr>
		<tr height="50">
			<th align="right">내용</th>
			<td><textarea name="content" rows="10" cols="50"></textarea></td>
		</tr>

	</table>
	<button></button>
	<button type="button">취소</button>
	</form>
</body>
</html>