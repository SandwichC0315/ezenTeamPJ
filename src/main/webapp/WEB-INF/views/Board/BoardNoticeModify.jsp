<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.timestay.vo.BoardNoticeVO" %>
<%@	page import="java.util.List" %>
<% List<BoardNoticeVO> list = (List<BoardNoticeVO>)request.getAttribute("list"); %>
<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("UTF-8");
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reset.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/BoardNoticeModify.css"/>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script><!--jquery 3.6 적용-->
</head>
<body>
	<header id="header" class="deactive">
	        <nav class="navbar">
	            <div class="navbar_menu">
	                <div id="title">
	                    <h4><a href="<%=request.getContextPath()%>/">TIME STAY</a></h4>
	                </div>
	                <ul>
	                    <li><a href="<%= request.getContextPath() %>/About/About_us.do">카페소개</a>
	                        <div class="sub">
	                            <ul>
	                                <li><a href="<%=request.getContextPath()%>/About/About_us.do">Time stay</a></li>
	                                <li><a href="<%=request.getContextPath()%>/About/Location.do">오시는 길</a></li>
	                                <li><a href="<%=request.getContextPath()%>/About/Gallery.do">갤러리</a></li>
	                            </ul>
	                        </div>
	                    </li>
	                    <li><a href="#">메 뉴</a>
	                        <div class="sub">
	                            <ul>
	                                <li><a href="${pageContext.request.contextPath}/Product/ProductDessert.do">제과</a></li>
	                                <li><a href="${pageContext.request.contextPath}/Product/ProductDrink.do">음료</a></li>
	                                <li><a href="${pageContext.request.contextPath}/Product/ProductFood.do">음식</a></li>
	                                <li><a href="${pageContext.request.contextPath}/Product/ProductCoffeeBean.do">원두</a></li>
	                            </ul>
	                        </div>
	                    </li>
	                    <li><a href="#">EVENT</a>
	                        <div class="sub">
	                            <ul>
	                                <li><a href="#">진행중 이벤트</a></li>
	                                <li><a href="#">종료된 이벤트</a></li>
	                                <li><a href="#"></a></li>
	                            </ul>
	                        </div>
	                    </li>
	                    <li><a href="#">공지사항</a>
	                        <div class="sub">
	                            <ul>
	                                <li><a href="<%=request.getContextPath()%>/Board/BoardNotice.do">공지사항</a></li>
	                                <li><a href="<%=request.getContextPath()%>/Board/BoardFaq.do">자주 묻는 질문</a></li>
	                                <li><a href="<%=request.getContextPath()%>/Board/BoardQna.do">1:1 문의 게시판</a></li>
	                                <li><a href="#">카카오톡 문의</a></li>
	                            </ul>
	                        </div>
	                    </li>
	                </ul>
	                </div>
	                <a href="#" class="navbar_toggleBtn"><i class="fas fa-bars"></i></a>
	        </nav>
	
	        <ul class="navbar_links">
     		<c:if test ="${login!=null}">
            <li><a href="<%=request.getContextPath()%>/Member/logout.do">로그아웃</a></li>
            <li><a href="#">마이페이지</a></li>
            <li><a href="#">장바구니</a></li>
            <li><a href="#">고객센터</a></li>
  		    </c:if>  
  		    <c:if test= "${login==null}">
 			<li><a href="<%=request.getContextPath()%>/Member/Login.do">로그인</a></li>  		    
            <li><a href="<%=request.getContextPath()%>/MyPage/MyPageShoppingCart.do">장바구니</a></li>
            <li><a href="#">고객센터</a></li>
            </c:if>
        </ul>
	    </header>
	    
	    <main>
		    <form action="BoardNoticeModify.do" method="post"  accept-charset="utf-8">
		    <input type="hidden" name="BNidx" value="${vo.BNidx}">
		    	<h2>공지사항</h2>
		    	<table>
		    		<thead>
		    			<tr>
		    				<td>제목</td>
		    				<td colspan="3"><textarea id="bntitle" name="BNtitle">${vo.BNtitle}</textarea></td>
		    			</tr>
		    			
		    			<tr>
		    				<td>작성일</td>
		    				<td>${vo.BNwdate}</td>
		    				<td>조회수</td>
		    				<td>${vo.BNhit}</td>
		    			</tr>
		    		</thead>
		    			
		    		<tbody>
		    			<tr>
		    				<td colspan="4"><textarea id="bncontent" name="BNcontent">${vo.BNcontent}</textarea></td>
		    			</tr>
		    			
		    			<tr>
		    				<td>첨부파일</td>
		    				<td colspan="3"><input type="file" name="noticeFile"></td>
		    			</tr>
		    		</tbody>
		    	</table>
		    	
		    	<div id="btn">
			    	<button type="button" onclick="location.href='BoardNoticeView.do?BNidx=${vo.BNidx}'">취소</button>
			    	<button type="submit">등록</button>
		    	</div>
		    </form>
	    </main>
	    
	    
	    <footer>
        <div id="container">
            <div id="footer1">
                <h2>Cafe Time Stay</h2>
                <p>법인명(상호) : Cafe Time stay<br />
                    사업자등록번호 : 123-45-67890<br />
                    주소 : 전북 전주시<br />
                    이메일 : cafetimestay@help.com</p>
            </div>
            <!--//footer1-->
        
            <div id="footer2">
                <h2>대표전화 : 1234-5678</h2>
                <p> 팩스 : 063) 123 - 4567<br/>
                    운영시간 : 10:00 ~ 18:00<br/>
                    매주 월요일은 휴무일입니다.</p>
            </div>
            <!--//footer2-->
        </div>
        <!--//container-->
    </footer>