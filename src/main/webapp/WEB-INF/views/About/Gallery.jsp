<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="utf-8">
  <title>GALLERY</title>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/reset.css"/>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/lightbox.css">  
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/Login_pop.css"/>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/Gallery.css">
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
                                <li><a href="#">진행중 이벤트</a></li>
                                <li><a href="#">종료된 이벤트</a></li>
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
	            <li><a href="#" style="padding:0 4px">마이페이지</a></li>
	            <li><a href="#" style="padding:0 4px">장바구니</a></li>
	            <li><a href="#" style="padding:0 4px">고객센터</a></li>
	        </ul>
  		</c:if>  
        
    </header>
    <main>       
        <div class="gallery">        
            <h3>GALLERY</h3>
            <section class="inside" >            
                <h4>인테리어</h4>
                <div class="view view1" >
                    <a class="example-image-link" href="${pageContext.request.contextPath}/resources/images/카페내부1.jpg" data-lightbox="example-set" data-title="이미지 좌우측의 화살표를 누르면 이미지가 넘어갑니다"><img class="example-image" src="${pageContext.request.contextPath}/resources/images/카페내부1.jpg" alt=""/></a>
                </div>
                <div class="view view2" >
                    <a class="example-image-link" href="${pageContext.request.contextPath}/resources/images/카페내부2.jpg" data-lightbox="example-set" data-title="이미지 좌우측의 화살표를 누르면 이미지가 넘어갑니다"><img class="example-image" src="${pageContext.request.contextPath}/resources/images/카페내부2.jpg" alt="" /></a>
                </div>
                <div class="view view3">
                    <a class="example-image-link" href="${pageContext.request.contextPath}/resources/images/카페내부3.jpg" data-lightbox="example-set" data-title="이미지 좌우측의 화살표를 누르면 이미지가 넘어갑니다"><img class="example-image" src="${pageContext.request.contextPath}/resources/images/카페내부3.jpg" alt="" /></a>
                </div>
                <div class="view view4">
                    <a class="example-image-link" href="${pageContext.request.contextPath}/resources/images/카페내부4.jpg" data-lightbox="example-set" data-title="이미지 좌우측의 화살표를 누르면 이미지가 넘어갑니다"><img class="example-image" src="${pageContext.request.contextPath}/resources/images/카페내부4.jpg" alt="" /></a>
                </div>
                <div class="view view5">
                    <a class="example-image-link" href="${pageContext.request.contextPath}/resources/images/카페내부5.jpg" data-lightbox="example-set" data-title="이미지 좌우측의 화살표를 누르면 이미지가 넘어갑니다"><img class="example-image" src="${pageContext.request.contextPath}/resources/images/카페내부5.jpg" alt="" /></a>
                </div>
                <div class="view view6">
                    <a class="example-image-link" href="${pageContext.request.contextPath}/resources/images/카페내부6.jpg" data-lightbox="example-set" data-title="이미지 좌우측의 화살표를 누르면 이미지가 넘어갑니다"><img class="example-image" src="${pageContext.request.contextPath}/resources/images/카페내부6.jpg" alt="" /></a>
                </div>
                <div class="view view7">
                    <a class="example-image-link" href="${pageContext.request.contextPath}/resources/images/카페사진1.jpg" data-lightbox="example-set" data-title="이미지 좌우측의 화살표를 누르면 이미지가 넘어갑니다"><img class="example-image" src="${pageContext.request.contextPath}/resources/images/카페사진1.jpg" alt="" /></a>
                </div>
            </section><!--.inside-->        
            <section class="outside">            
                <h4>카페전경</h4>
                <div class="view view8">
                    <a class="example-image-link" href="${pageContext.request.contextPath}/resources/images/카페사진2.jpg" data-lightbox="example-set" data-title="이미지 좌우측의 화살표를 누르면 이미지가 넘어갑니다"><img class="example-image" src="${pageContext.request.contextPath}/resources/images/카페사진2.jpg" alt=""/></a>
                </div>
                <div class="view view9">
                    <a class="example-image-link" href="${pageContext.request.contextPath}/resources/images/카페사진3.jpg" data-lightbox="example-set" data-title="이미지 좌우측의 화살표를 누르면 이미지가 넘어갑니다"><img class="example-image" src="${pageContext.request.contextPath}/resources/images/카페사진3.jpg" alt="" /></a>
                </div>
                <div class="view view10">
                    <a class="example-image-link" href="${pageContext.request.contextPath}/resources/images/카페사진4.jpg" data-lightbox="example-set" data-title="이미지 좌우측의 화살표를 누르면 이미지가 넘어갑니다"><img class="example-image" src="${pageContext.request.contextPath}/resources/images/카페사진4.jpg" alt="" /></a>
                </div>
                <div class="view view11">
                    <a class="example-image-link" href="${pageContext.request.contextPath}/resources/images/카페사진5.jpg" data-lightbox="example-set" data-title="이미지 좌우측의 화살표를 누르면 이미지가 넘어갑니다"><img class="example-image" src="${pageContext.request.contextPath}/resources/images/카페사진5.jpg" alt="" /></a>
                </div>
                <div class="view view12">
                    <a class="example-image-link" href="${pageContext.request.contextPath}/resources/images/카페사진6.jpg" data-lightbox="example-set" data-title="이미지 좌우측의 화살표를 누르면 이미지가 넘어갑니다"><img class="example-image" src="${pageContext.request.contextPath}/resources/images/카페사진6.jpg" alt="" /></a>
                </div>
                <div class="view view13">
                    <a class="example-image-link" href="${pageContext.request.contextPath}/resources/images/카페사진7.jpg" data-lightbox="example-set" data-title="이미지 좌우측의 화살표를 누르면 이미지가 넘어갑니다"><img class="example-image" src="${pageContext.request.contextPath}/resources/images/카페사진7.jpg" alt="" /></a>
                </div>
            </section><!--.outside-->
            <section class="food">            
                <h4>메뉴사진</h4>
                <div class="view view14">
                    <a class="example-image-link" href="${pageContext.request.contextPath}/resources/images/제과사진5.jpg" data-lightbox="example-set" data-title="이미지 좌우측의 화살표를 누르면 이미지가 넘어갑니다"><img class="example-image" src="${pageContext.request.contextPath}/resources/images/제과사진5.jpg" alt=""/></a>
                </div>
                <div class="view view15">
                    <a class="example-image-link" href="${pageContext.request.contextPath}/resources/images/제과사진4.jpg" data-lightbox="example-set" data-title="이미지 좌우측의 화살표를 누르면 이미지가 넘어갑니다"><img class="example-image" src="${pageContext.request.contextPath}/resources/images/제과사진4.jpg" alt="" /></a>
                </div>
                <div class="view view16">
                    <a class="example-image-link" href="${pageContext.request.contextPath}/resources/images/제과사진3.jpg" data-lightbox="example-set" data-title="이미지 좌우측의 화살표를 누르면 이미지가 넘어갑니다"><img class="example-image" src="${pageContext.request.contextPath}/resources/images/제과사진3.jpg" alt="" /></a>
                </div>
                <div class="view view17">
                    <a class="example-image-link" href="${pageContext.request.contextPath}/resources/images/제과사진2.jpg" data-lightbox="example-set" data-title="이미지 좌우측의 화살표를 누르면 이미지가 넘어갑니다"><img class="example-image" src="${pageContext.request.contextPath}/resources/images/제과사진2.jpg" alt="" /></a>
                </div>
                <div class="view view18">
                    <a class="example-image-link" href="${pageContext.request.contextPath}/resources/images/제과사진1.jpg" data-lightbox="example-set" data-title="이미지 좌우측의 화살표를 누르면 이미지가 넘어갑니다"><img class="example-image" src="${pageContext.request.contextPath}/resources/images/제과사진1.jpg" alt="" /></a>
                </div>
                <div class="view view19">
                    <a class="example-image-link" href="${pageContext.request.contextPath}/resources/images/브런치사진1.jpg" data-lightbox="example-set" data-title="이미지 좌우측의 화살표를 누르면 이미지가 넘어갑니다"><img class="example-image" src="${pageContext.request.contextPath}/resources/images/브런치사진1.jpg" alt="" /></a>
                </div>
                <div class="view view19">
                    <a class="example-image-link" href="${pageContext.request.contextPath}/resources/images/브런치사진2.jpg" data-lightbox="example-set" data-title="이미지 좌우측의 화살표를 누르면 이미지가 넘어갑니다"><img class="example-image" src="${pageContext.request.contextPath}/resources/images/브런치사진2.jpg" alt="" /></a>
                </div>
                <div class="view view19">
                    <a class="example-image-link" href="${pageContext.request.contextPath}/resources/images/브런치사진3.jpg" data-lightbox="example-set" data-title="이미지 좌우측의 화살표를 누르면 이미지가 넘어갑니다"><img class="example-image" src="${pageContext.request.contextPath}/resources/images/브런치사진3.jpg" alt="" /></a>
                </div>
            </section><!--.food-->
        </div><!--.gallery-->     
        
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
    <script src="${pageContext.request.contextPath}/resources/js/lightbox-plus-jquery.js"></script>
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