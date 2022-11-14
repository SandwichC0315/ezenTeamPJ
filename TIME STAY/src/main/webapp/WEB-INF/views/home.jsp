<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1> fsfd
	TIME STAY  
</h1>
<h3>카페소개</h3>
<a href="<%= request.getContextPath() %>/About/About_us.do">TIME STAY</a><br>
<a href="<%= request.getContextPath() %>/About/Location.do">오시는 길</a><br>
<a href="<%= request.getContextPath() %>/About/Gallery.do">갤러리</a><br>

<h3>로그인</h3>
<a href="<%= request.getContextPath() %>/Login/Login.do">로그인</a><br>
<a href="<%= request.getContextPath() %>/Login/find_ID.do">아이디 찾기</a><br>
<a href="<%= request.getContextPath() %>/Login/find_PW.do">비밀번호 찾기</a><br>
<a href="<%= request.getContextPath() %>/Login/find_PW2.do">비밀번호 변경</a><br>

<h3>마이페이지</h3>
<a href="<%= request.getContextPath() %>/MyPage/member_Modify.do">회원정보 수정</a><br>
<a href="<%= request.getContextPath() %>/MyPage/member_Point.do">나의 마일리지</a><br>
<a href="<%= request.getContextPath() %>/MyPage/member_QA.do">나의 문의내역</a><br>

<P>  The time on the server is ${serverTime}. </P>
</body>
</html>
