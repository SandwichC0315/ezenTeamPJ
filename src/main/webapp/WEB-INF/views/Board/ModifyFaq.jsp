<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>자주 묻는 질문</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reset.css"/>
 	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/faq.css"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script><!--jquery 3.6 적용-->
	
	<script src="https://code.jquery.com/jquery-1.11.3.js"></script>
<script>

</script>



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
                                <li><a href="<%=request.getContextPath()%>/Board/BoardQna.do">1:1 문의 게시판</a></li>
                                <li><a href="#">카카오톡 문의</a></li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>
    
  		<c:if test= "${login==null}">
	  		<ul class="navbar_links">
	 			<li><a href="#" onclick="return false;" id="modal_btn">로그인</a></li>  		    
	            <li><a href="<%=request.getContextPath()%>/MyPage/MyPageShoppingCart.do">장바구니</a></li>
	            <li><a href="#">고객센터</a></li>
	        </ul>
        </c:if>
     	<c:if test ="${login!=null}">
	        <ul class="navbar_links" style="width:330px;">
	            <li><a href="<%=request.getContextPath()%>/Member/logout.do" style="padding:0 4px">로그아웃</a></li>
	            <li><a href="<%=request.getContextPath()%>/MyPage/member_Modify.do?Mid=${Mid}" style="padding:0 4px">마이페이지</a></li>
	            <li><a href="<%=request.getContextPath()%>/MyPage/MyPageShoppingCart.do" style="padding:0 4px">장바구니</a></li>
	            <li><a href="#" style="padding:0 4px">고객센터</a></li>
	        </ul>
  		</c:if>  
        
    </header>
    
    
    
    <main>
    	<div class="ViewFaq">
    		<h3>질문 수정하기</h3>     		
  			
  			<form action="ModifyFaq.do" method="post">
				<div class="outline">				
					<input type="hidden" name="BFidx" value="${vo.BFidx}">
					<table border="1">
						<tr>
							<td><input type="text" name="BFtitle" value="${vo.BFtitle}"></td>
						</tr>
						<tr>
							<td><textarea name="BFcontent" rows="10" cols="50">${vo.BFcontent}</textarea></td>
						</tr>
					</table>
					<button id="submit" onclick="if(!confirm('수정 하시겠습니까?')){return false;}">수정</button>
					<button id="cancel"type="button" onclick="location.href='BoardFaq.do'">취소</button>
				</div>
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
        


   
    </script>
</body>
</html>