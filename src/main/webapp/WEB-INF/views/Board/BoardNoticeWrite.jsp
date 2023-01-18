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
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/BoardNoticeWrite.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/Login_pop.css" type="text/css"/>

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
                            </ul>
	                        </div>
	                    </li>
	                </ul>
	                </div>
	                <a href="#" class="navbar_toggleBtn"><i class="fas fa-bars"></i></a>
	        </nav>
	
  		<c:if test= "${login==null}">
	  		<ul class="navbar_links">
	 			<li><a href="#" onclick="return false;" id="modal_btn">로그인</a></li>	    
	            <li><a href="<%=request.getContextPath()%>/Member/Login.do">장바구니</a></li>
	            <li><a href="<%=request.getContextPath()%>/Board/BoardFaq.do">고객센터</a></li>
	        </ul>
        </c:if>
     	<c:if test ="${login!=null}">
	        <ul class="navbar_links" style="width:330px;">
	            <li><a href="<%=request.getContextPath()%>/Member/logout.do" style="padding:0 4px">로그아웃</a></li>
	            <li><a href="<%=request.getContextPath()%>/MyPage/member_Modify.do?Mid=${Mid}" style="padding:0 4px">마이페이지</a></li>
	            <li><a href="<%=request.getContextPath()%>/Shopping/ShoppingCart.do" style="padding:0 4px">장바구니</a></li>
	            <li><a href="<%=request.getContextPath()%>/Board/BoardFaq.do" style="padding:0 4px">고객센터</a></li>
	        </ul>
  		</c:if> 
	    </header>
	    
	    <main>
		    <form action="BoardNoticeWrite.do" method="post"  accept-charset="utf-8">
		    	<h2>공지사항</h2>
		    	<table>
		    		<thead>
		    			<tr>
		    				<td>제목</td>
		    				<td colspan="3"><textarea id="bntitle" name="BNtitle"></textarea></td>
		    			</tr>
		    		</thead>
		    			
		    		<tbody>
		    			<tr>
		    				<td>내용</td>
		    				<td colspan="3"><textarea id="bncontent" name="BNcontent"></textarea></td>
		    			</tr>
		    			
		    			<tr>
		    				<td>첨부파일</td>
		    				<td colspan="3"><input type="file" name="BNimage"></td>
		    			</tr>
		    		</tbody>
		    	</table>
		    	
		    	<div id="btn">
			    	<button type="button" onclick="location.href='BoardNotice.do'">취소</button>
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
    	<div class="black_bg"></div>
	    <div class="modal_wrap">
	        <div class="modal_close"><a href="#" onclick="return false;">close</a></div>
	        <div class="modalContents">
	            <h2>로그인</h2>
		        
		        <c:if test="${login==null }">
					
					<form action= "<%= request.getContextPath() %>/Member/login.do" method="post" id="frm">
			            <input name= "Mid" class="loginId" type="text" placeholder="아이디"/>
			            <input name= "Mpwd" class="loginPw" type="password" placeholder="비밀번호"/>
			            <button class="login_btn">로그인</button>
			        </form>
			        
		            <div class="login_bottom">
		                <a href="<%= request.getContextPath() %>/Member/signup1.do">회원가입</a> 
		                <a href="<%= request.getContextPath() %>/Member/find_ID.do">아이디 찾기</a> 
		                <a href="<%= request.getContextPath() %>/Member/find_PW.do">비밀번호 찾기</a>
		            </div>	
		                    
		        </c:if>
		                  
	        </div>
	    </div>
	<script>

    // 스크롤 시 header 색변화 fade-in
    $(function(){
        $(document).on('scroll', function(){
            if($(window).scrollTop() > 100){
                $("#header").removeClass("deactive");
                $("#header").addClass("active");
            }else{
                $("#header").removeClass("active");
                $("#header").addClass("deactive");
            }
        })
    });   
    
    //로그인 팝업창
    window.onload = function() {     
        function onClick() {
            document.querySelector('.modal_wrap').style.display ='block';
            document.querySelector('.black_bg').style.display ='block';
        }   
        function offClick() {
            document.querySelector('.modal_wrap').style.display ='none';
            document.querySelector('.black_bg').style.display ='none';
        }
    
        document.getElementById('modal_btn').addEventListener('click', onClick);
        document.querySelector('.modal_close').addEventListener('click', offClick);     
    };
	</script>    
    </body>
</html>