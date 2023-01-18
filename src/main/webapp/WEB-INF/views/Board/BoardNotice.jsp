<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.timestay.vo.BoardNoticeVO" %>
<%@ page import="com.timestay.vo.MemberVO" %>
<%@	page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% List<BoardNoticeVO> list = (List<BoardNoticeVO>)request.getAttribute("list"); %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>공지사항</title>

	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reset.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/notice.css"/>	
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
                               	<li><a href="<%=request.getContextPath()%>/Event/EventNowEvent.do">진행중 이벤트</a></li>
                                <li><a href="<%=request.getContextPath()%>/Event/EventEndEvent.do">종료된 이벤트</a></li>
                                <li><a href="#"></a></li>
                            </ul>
                        </div>
                    </li>
                    <li><a href="<%=request.getContextPath()%>/Board/BoardNotice.do">공지사항</a>
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
    	<h2>공지사항</h2>
    	<table>
    		<thead>
    			<tr>
	    			<th>글번호</th>
	    			<th>제목</th>
	    			<th>조회수</th>
    			</tr>
    		</thead>
    		
    		<tbody>
    			<%for (BoardNoticeVO vo : list) {%>
    			<tr>
    				<td><%=vo.getBNidx() %></td>
    				<td><a href="BoardNoticeView.do?BNidx=<%=vo.getBNidx()%>"><%=vo.getBNtitle()%></a></td>
    				<td><%=vo.getBNhit() %></td>
    			</tr>
    			<%} %>
    		</tbody>
    	</table>
    	
    	<c:if test="${login != null}">
	    	<c:if test="${Mvo.getMgrade() == 'A'}">
	    		<button id="write" onclick="location.href='BoardNoticeWrite.do'">등록</button>
			</c:if>
		</c:if>
		
		
		
		
		<ul class="btn-group pagination">
			    <c:if test="${pageMaker.prev }">
				    <li>
				        <a href='<c:url value="/Board/BoardNotice.do?page=${pageMaker.startPage-1 }"/>'>◀<i class="fa fa-chevron-left"></i></a>
				    </li>
			    </c:if>
			    
			    <c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="pageNum">
					<c:if test="${select ne pageNum}">
						<a href='<c:url value="/Board/BoardNotice.do?page=${pageNum}"/>'>${pageNum }</a>
					</c:if>

					<c:if test="${pageNum eq select }">
						<a id="bold" href='<c:url value="/Board/BoardNotice.do?page=${pageNum}"/>'>${pageNum }</a>
					</c:if>
			    </c:forEach>
			    
			    <c:if test="${pageMaker.next && pageMaker.endPage >0 }">
				       <a href='<c:url value="/Board/BoardNotice.do?page=${pageMaker.endPage+1 }"/>'>▶<i class="fa fa-chevron-right"></i></a>
			    </c:if>
		</ul>
		
		<!--  
    	<div id="searchbox" class="search_area">
	    	<button id="search" onclick="location.href='BoardNotice.do?page=1&keyword=${pageMaker.cri.keyword}'">검색</button>
	    	<input type="text" name="keyword" id="searchbar" value="${pageMaker.cri.keyword}">
    	</div>
    	-->
    	<div id="searchbox">
	    	<button id="search" onclick="searchfrm.submit();">검색</button>
	    	<form name="searchfrm" action="BoardNotice.do?page=1&keyword=${pageMaker.cri.keyword}" method="get">
			    <input type="text" name="keyword" id="searchbar" value="${pageMaker.cri.keyword}">
	    	</form>
    	</div>

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