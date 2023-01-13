<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.timestay.vo.BoardQnaVO" %>
<%@page import="java.util.List"%>
    <% 
  //  BoardVO vo = (BoardVO)request.getAttribute("vo");//vo에 담아서 보냈으니까 bidx를 꺼내는 것이 아니라 vo를 꺼내야지
    
	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 상세 페이지</title>
</head>
<body>
	<h2>게시글상세 페이지</h2>
	가상경로 /board/modify.do 수정시 나타나는 페이지 입니다.
	<form  action="BoardQnaModify.do" method="post">
		<input type="hidden" name="bidx" value="${vo.bidx }">
		<table border="1">
			<tr>
				<th align="right">제목</th>
				<td><input type="text" name="title" value="${vo.title}"></td><!-- el이뭐지? -->
			</tr>
			<tr>
				<th align="right">조회수</th>
				<td>${vo.hit}</td>
			</tr>
			<tr>
				<th align="right">작성자</th>
				<td>${vo.username}</td>
			</tr>
			<tr>
				<th align="right">등록일</th>
				<td>${vo.wdate}</td>
			</tr>
			<tr>
				<th align="right">내용</th>
				<td><textarea name="content">${vo.content}</textarea></td>
			</tr>
		</table>
		<button >저장</button>
		<button type="button" onclick="view.do?bidx=${vo.bidx}">취소</button><!-- 그냥으로냅두면 제출이랑똑같 -->
	</form>
</body>
</html>

