<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Cafe Stay</title>

	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reset.css" type="text/css"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/Login_pop.css" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/cafestay_Home.css" type="text/css"/>
	
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"/>
	
	<script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script><!--jquery 3.6 적용-->
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
                                <li><a href="#"></a></li>
                            </ul>
                        </div>
                    </li>
                    <li><a href="<%= request.getContextPath() %>/Board/BoardNotice.do">공지사항</a>
                        <div class="sub">
                            <ul>
                                <li><a href="<%= request.getContextPath() %>/Board/BoardNotice.do">공지사항</a></li>
                                <li><a href="<%= request.getContextPath() %>/Board/BoardFaq.do">자주 묻는 질문</a></li>
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
        <section id="main_view1">
            <div class="slider"><!--article.view.vew$*6-->                
                <article class="view view1">
                    <div class="text">
                            <h3>TIME STAY</h3>
                            <p>오직 TIME STAY에서만 느낄 수 있는 이국적인 분위기</p>
                            <a href="<%= request.getContextPath() %>/About/Gallery.do">READ MORE<i class="xi-angle-right"></i></a>
                        </div><!--//.text-->
                    </article>
                    <article class="view view2">
                        <div class="text">
                            <h3>베이커리 전문 카페</h3>
                            <p>TIME STAY에서 빵을 직접 굽고 커피로스팅을 합니다</p>
                            <a href="<%= request.getContextPath() %>/Product/ProductDessert.do">READ MORE<i class="xi-angle-right"></i></a>
                        </div><!--//.text-->
                    </article>
                    <article class="view view3">
                        <div class="text">
                            <h3>오시는 길</h3>
                            <p>도심에서 벗어나 쉼을 누릴 수 있는 TIME STAY</p>
                            <a href="<%= request.getContextPath() %>/About/Location.do">READ MORE<i class="xi-angle-right"></i></a>
                        </div><!--//.text-->
                    </article>
                    <article class="view view4">
                        <div class="text">
                            <h3>Event</h3>
                            <p>TIME STAY에서 진행하는 소소한 이벤트</p>
                            <a href="<%= request.getContextPath() %>/Event/EventNowEvent.do">READ MORE<i class="xi-angle-right"></i></a>
                        </div><!--//.text-->
                    </article>                
                </div><!--//.slider-->
            <div class="swiper-button-next" style="color:#fff; margin-right:50px;"></div>
            <div class="swiper-button-prev" style="color:#fff; margin-left:50px;"></div>
        </section>
        <!--#main_view1-->
        
    <section id="main_view2">   
            
        <div class="cc">
            <div class="container1">
              <div class="block"></div>
              <h1>Menu Story</h1>
              <div class="tabs">
                <ul>
                  <!-- <li><label><input type="checkbox" class="pb" name="product_b" onclick="clickFn1(this)" checked>제빵</label></li>
                  <li><label><input type="checkbox" class="pb" name="product_s" onclick="clickFn2(this)">제과</label></li> -->
                  <li><a onclick="clickFn1(this)">Coffee</a></li>
                  <li><a onclick="clickFn2(this)">Dessert</a></li>
                  <li><a onclick="clickFn3(this)">Food</a></li>
                </ul>
              </div>
            </div>  
            <section class="tabpanelbody">
                <div class="tabpanel">
                  <div class="swiper mySwiper" id="page1">
                    <div class="swiper-wrapper" >
                      <div class="swiper-slide" >
                        <img id="img1" src="${pageContext.request.contextPath}/resources/images/스테이라떼.png">
                        <p>스테이라떼</p>
                      </div>
                      <div class="swiper-slide">
                        <img id="img2" src="${pageContext.request.contextPath}/resources/images/레몬에이드.jpg">
                        <p>레몬에이드</p>
                      </div>
                      <div class="swiper-slide">
                        <img id="img3" src="${pageContext.request.contextPath}/resources/images/자몽에이드.png">
                        <p>자몽에이드</p>
                      </div>
                      <div class="swiper-slide">
                        <img id="img4" src="${pageContext.request.contextPath}/resources/images/매실 에이드.jpg">
                        <p>매실 에이드</p>
                      </div>
                      <div class="swiper-slide">
                        <img id="img5" src="${pageContext.request.contextPath}/resources/images/시그니처 타임주스.jpg">
                        <p>시그니처 타임주스</p>
                      </div> 
                    </div>
                    <div id="button1">
                      <div class="swiper-button-next"></div>
                      <div class="swiper-button-prev"></div>
                      <div class="swiper-pagination"></div>
                    </div>
                  </div> 
                
                  <div class="swiper mySwiper" id="page2">
                    <div class="swiper-wrapper" >
                      <div class="swiper-slide" >
                        <img id="img1" src="${pageContext.request.contextPath}/resources/images/소금빵.jpg">
                        <p>소금빵</p>
                      </div>
                      <div class="swiper-slide">
                        <img id="img2" src="${pageContext.request.contextPath}/resources/images/단호박 크림치즈 치아바타.jpg">
                        <p>단호박 크림치즈 치아바타</p>
                      </div>
                      <div class="swiper-slide">
                        <img id="img3" src="${pageContext.request.contextPath}/resources/images/레몬케이크2.jpg">
                        <p>레몬 케이크</p>
                      </div>
                      <div class="swiper-slide">
                        <img id="img4" src="${pageContext.request.contextPath}/resources/images/코코넛 쿠키.jpg">
                        <p>코코넛 쿠키</p>
                      </div>
                      <div class="swiper-slide">
                        <img id="img5" src="${pageContext.request.contextPath}/resources/images/피스타치오 마들렌.jpg">
                        <p>피스타치오 마들렌</p>
                      </div> 
                    </div><!--swiper-wrapper-->
                    <div id="button2">
                      <div class="swiper-button-next"></div>
                      <div class="swiper-button-prev"></div>
                      <div class="swiper-pagination"></div>
                    </div>
                  </div> <!--swiper mySwiper2-->
                  <div class="swiper mySwiper" id="page3">
                    <div class="swiper-wrapper" >
                      <div class="swiper-slide" >
                         <img id="img1" src="${pageContext.request.contextPath}/resources/images/브런치사진1.jpg">
                        <p>아메리칸 블랙퍼스트</p>
                      </div>
                      <div class="swiper-slide">
                        <img id="img2" src="${pageContext.request.contextPath}/resources/images/브런치사진2.jpg">
                        <p>쉬림프 로제파스타</p>
                      </div>
                      <div class="swiper-slide">
                        <img id="img3" src="${pageContext.request.contextPath}/resources/images/브런치사진3.jpg">
                        <p>페퍼론치노 크림파스타</p>
                      </div>
                      <div class="swiper-slide">
                        <img id="img4" src="${pageContext.request.contextPath}/resources/images/망고빙수.jpg">
                        <p>망고빙수</p>
                      </div>
                      <div class="swiper-slide">
                        <img id="img5" src="${pageContext.request.contextPath}/resources/images/인절미 빙수.jpg">
                        <p>인절미빙수</p>
                      </div> 
                    </div><!--swiper-wrapper-->
                    <div id="button3">
                      <div class="swiper-button-next"></div>
                      <div class="swiper-button-prev"></div>
                      <div class="swiper-pagination"></div>
                    </div>
                  </div> <!--swiper mySwiper3-->
                </div> 
              </section> 
          </div>
        </section>
       
       <section id="main_view3">
       		<div class="slider view3_slider">
       			<article class="mv3 mv3_view1">
       				<div class="mv3_text">
       					<h3>이 달의 신메뉴</h3>
       					<p>레몬케이크<br/>신선한 레몬으로 만든 크림을 가득 담았습니다.</p>
       					<a href="${pageContext.request.contextPath}/Product/ProductDessert.do">주문하기<i class="xi-angle-right"></i></a>
       				</div>
       			</article>
       			
       			<article class="mv3 mv3_view2">
       				<div class="mv3_text">
       					<h3>이 달의 신메뉴</h3>
       					<p>고구마크림치즈호밀빵<br/>달콤한 고구마를 크림치즈와 함께 호밀빵에 쏙</p>
       					<a href="${pageContext.request.contextPath}/Product/ProductDessert.do">주문하기<i class="xi-angle-right"></i></a>
       				</div>
       			</article>
       			
       			<article class="mv3 mv3_view3">
       				<div class="mv3_text">
       					<h3>이 달의 신메뉴</h3>
       					<p>매실 에이드 & 시그니처 타임주스<br/>매실의 상큼하고 달콤한 맛과 시그니처 타임주스의 건강한 맛을 느껴보세요</p>
       					<a href="${pageContext.request.contextPath}/Product/ProductDrink.do">주문하기<i class="xi-angle-right"></i></a>
       				</div>
       			</article>
       		</div><!-- //view3_slider -->
       		<div class="swiper-button-next" style="color:#fff; margin-right:50px; top:250vh; "></div>
       		<div class="swiper-button-prev" style="color:#fff; margin-left:50px; top:250vh;"></div>      
       </section>
        <!--#main_view3-->
        
        
        <section id="main_view4" class="clearfix">
          <div class="page4title">
              <h1>NOTICE<br />&EVENT</h1>
          </div>
  
          <div class="text">
              <a id="text1" onclick="click1()">공지사항</a>
              <a id="text2" onclick="click2()">이벤트</a>
          </div>
  
          <div class="image">
              <p><img src="${pageContext.request.contextPath}/resources/images/online-test.png"></p>
          </div>
  
          <article>
              <div id="news_container">
                  <div id="event_area">
                      <ul class="event_list">
                          <li>
                              <p><a href="<%= request.getContextPath() %>/Event/EventNowDetalis1.do">오늘의 특가!!</a></p>
                          </li>    
                          <li>
                              <p><a href="<%= request.getContextPath() %>/Event/EventNowDetalis2.do">주말 특가!!</a></p>
                          </li>    
                          <li>
                              <p><a href="<%= request.getContextPath() %>/Event/EventNowDetalis3.do">고객님을 위한 특별한 혜택!!</a></p>
                          </li>
                      </ul>
                  </div>
                  <!--//event_area-->
  
                  <div id="notice_area">
                      <ul>
                          <li>
                              <p><a href="<%= request.getContextPath() %>/Board/BoardNotice.do">공지사항 1</a></p>
                          </li>    
                          <li>
                              <p><a href="<%= request.getContextPath() %>/Board/BoardNotice.do">공지사항 1</a></p>
                          </li>    
                          <li>
                              <p><a href="<%= request.getContextPath() %>/Board/BoardNotice.do">공지사항 1</a></p>
                          </li>
                      </ul>
                  </div>
                  <!--//notice_area-->
              </div>
              <!--//news_container-->
          </article>
      </section>
      <!--//main_view4-->
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
	    </main>
	    <script>
         function click1() {
            const text1 = document.getElementById("text1");
            const text2 = document.getElementById("text2");

            text1.style = "none";
            text2.style = "none";

            text1.style.color = "red";
            text1.style.textDecoration = "underline";

            $("#news_container").animate({ paddingLeft: "-500px" }, 1800);
        }
        function click2() {
            const text1 = document.getElementById("text1");
            const text2 = document.getElementById("text2");

            text1.style = "none";
            text2.style = "none";

            text2.style.color = "red";
            text2.style.textDecoration = "underline";

            $("#news_container").animate({ paddingLeft: "500px" }, 1000);
        }

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

        //메인뷰 슬라이더
        var main_view = new Swiper("#main_view1",{
                wrapperClass:"slider", //슬라이드요소를 감싸는 요소의 클래스
                slideClass:"view", //슬라이드요소들의 공통 클래스
                spaceBetween:10, //슬라이드 사이간격
                speed:800, //슬라이드가 전환되는 시간
                autoplay:{ //자동으로 슬라이드됨
                    delay: 10000, //현재슬라이드가 보여지는 시간(1000ms = 1초)
                    disableOnInteraction:false, //상호작용후 다시 자동재생                
                },
                navigation: { //슬라이드 네비게이션 버튼
                    nextEl: ".swiper-button-next",
                    prevEl: ".swiper-button-prev",
                },
                observer: true,
                observeParents: true,
            });
            

        var swiper = new Swiper(".pager", {
                pagination: {
                    el: ".swiper-pagination",
                },
            });    
            
            //
            var swiper = new Swiper(".mySwiper", {
            slidesPerView: 1,
            spaceBetween: 30,
            loop: true,
            pagination: {
                el: ".swiper-pagination",
                clickable: true,
            },
            navigation: {
                nextEl: ".swiper-button-next",
                prevEl: ".swiper-button-prev",
            },
            });
            
            var main_view3 = new Swiper("#main_view3",{
                wrapperClass:"view3_slider", //슬라이드요소를 감싸는 요소의 클래스
                slideClass:"mv3", //슬라이드요소들의 공통 클래스
                spaceBetween:10, //슬라이드 사이간격
                speed:800, //슬라이드가 전환되는 시간
                autoplay:{ //자동으로 슬라이드됨
                    delay: 10000, //현재슬라이드가 보여지는 시간(1000ms = 1초)
                    disableOnInteraction:false, //상호작용후 다시 자동재생                
                },
                navigation: { //슬라이드 네비게이션 버튼
                    nextEl: ".swiper-button-next",
                    prevEl: ".swiper-button-prev",
                },
                observer: true,
                observeParents: true,
            });

            
            function clickFn1(obj){
            $("#page1").css('display','block')
            $("#page2").css('display','none')
            $("#page3").css('display','none')
            $('p').css('display','block')
            $('#button1').css('display','block')
    }
            function clickFn2(obj){
            $("#page1").css('display','none')
            $("#page2").css('display','block')
            $("#page3").css('display','none')
            $('p').css('display','block')
            $('#button2').css('display','block')
    
    }
  
            function clickFn3(obj){
            $("#page1").css('display','none')
            $("#page2").css('display','none')
            $("#page3").css('display','block')
            $('p').css('display','block')
			$('#button3').css('display','block')      	
    }
            
 
            
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