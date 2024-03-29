<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.timestay.vo.MemberVO" %>
<%@	page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<% List<MemberVO> list = (List<MemberVO>)request.getAttribute("list"); %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원 관리</title>

  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reset.css"/>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/Login_pop.css"/>  
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/Login.css"> 
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/MPMemberManage.css">

    <script type="text/javascript" src="http://code.jquery.com/jquery-1.12.4.min.js"></script> <!--생년월일 select 박스-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script><!--jquery 3.6 적용-->

    <style>
    
    </style>
</head>
<body>
    <header id="header" class="deactive">        
        <nav class="navbar">
            <div class="navbar_menu">
                <div id="title"> 
                    <h4><a href="<%= request.getContextPath() %>/">TIME STAY</a></h4>
                </div>
                <ul>
                    <li><a href="<%= request.getContextPath() %>/About/About_us.do">카페소개</a>
                        <div class="sub">
                            <ul>
                                <li><a href="<%= request.getContextPath() %>/About/About_us.do">Time stay</a></li>
                                <li><a href="<%= request.getContextPath() %>/About/Location.do">오시는 길</a></li>
                                <li><a href="<%= request.getContextPath() %>/About/Gallery.do">갤러리</a></li>
                            </ul>
                        </div>
                    </li>
                    <li><a href="#">메  뉴</a>
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
        <div class="member_menu">
	        <p>마이 페이지</p>
	        <ul>
	            <li><a href="<%=request.getContextPath()%>/MyPage/member_Modify.do?Mid=${Mid}" style="font-weight: bold;">회원정보 수정</a></li>
	            <li><a href="<%=request.getContextPath()%>/MyPage/member_Point.do">나의 마일리지</a></li>

	            <li><a href="<%=request.getContextPath()%>/Shopping/ShoppingCart.do">장바구니</a></li>
	            <li><a href="<%=request.getContextPath()%>/Shopping/ShoppingOrderView.do">주문/배송조회</a></li>
	            
	            <c:if test="${ Mgrade == 'A'}">
					<li>관리자 메뉴</li>
		        	<li><a href="<%=request.getContextPath()%>/MyPage/MPMemberManage.do" style="font-weight: bold;">회원 관리</a></li>
		        	<li><a href="<%=request.getContextPath()%>/MyPage/MPProductManage.do">상품 관리</a></li>
	        	</c:if>
	        	
	            <li><a href="<%=request.getContextPath()%>/MyPage/member_Delete.do?Mid=${Mid}">회원 탈퇴</a></li>
	        </ul>
        </div>
        
        <div class="member_QA">         
            <div id="Member_list">
                <h4>회원 관리</h4>
                <table>
                	<thead>
	                    <tr class="t_head">
	                        <td>이름</td>   
	                        <td>아이디</td>
	                        <td>가입 날짜</td> 
	                        <td>사용자 등급</td>  
	                        <td>탈퇴 여부</td>
	                        <td>탈퇴 일자</td>        
	                    </tr>
                    </thead>
                    
                    <tbody>
                    	<%for (MemberVO vo : list){ %>
                    	<tr>
                    		<td><%=vo.getMname() %></td>
                    		<td><%=vo.getMid() %></td>
                    		<td><%=vo.getMenter() %></td>
                    		<td><%=vo.getMgrade() %></td>
                    		<td><%=vo.getMbreakyn() %></td>
                    		<td><%=vo.getMbreakdate() %></td>
                    	</tr>
                    	<%} %>
                    </tbody>
                </table>                
            </div>   
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