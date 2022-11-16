<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Cafe Stay</title>

	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reset.css" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/cafestay_Home.css" type="text/css"/>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script><!--jquery 3.6 적용-->
</head>
<body>
	    <header id="header" class="deactive">        
        <nav class="navbar">
            <div class="navbar_menu">
                <div id="title"> 
                    <h4><a href="#">TIME STAY</a></h4>
                </div>
                <ul>
                    <li><a href="#">카페소개</a>
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
                                <li><a href="#">제과</a></li>
                                <li><a href="#">음료</a></li>
                                <li><a href="#">음식</a></li>
                                <li><a href="#">원두</a></li>
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
                                <li><a href="#">공지사항</a></li>
                                <li><a href="#">자주 묻는 질문</a></li>
                                <li><a href="#">1:1 문의 게시판</a></li>
                                <li><a href="#">카카오톡 문의</a></li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>          
            <a href="#" class="navbar_toggleBtn"><i class="fas fa-bars"></i></a>
        </nav>
    
        <ul class="navbar_links">
            <li><a href="<%= request.getContextPath() %>/Login/Login.do">로그인</a></li>
            <li><a href="#">장바구니</a></li>
            <li><a href="#">고객센터</a></li>
        </ul>
    </header>
    <main> 
        <section id="main_view1">
            <div class="slider"><!--article.view.vew$*6-->                
                <article class="view view1">
                    <div class="text">
                        <h3>TIME STAY는...</h3>
                        <p>TIME STAY는 베이커리 전문 카페로서<br>
                            이렇고 저런 저런 카페입니다
                        </p>
                        <a href="#">READ MORE<i class="xi-angle-right"></i></a>
                    </div><!--//.text-->
                </article>
                <article class="view view2">
                    <div class="text">
                        <h3>매일 신선한 빵</h3>
                        <p>TIME STAY에서는 매일 아침 ?시<br>
                            신선한 빵을~ 설명 설명 설명 제공하고 있습니다</p>
                        <a href="#">READ MORE<i class="xi-angle-right"></i></a>
                    </div><!--//.text-->
                </article>
                <article class="view view3">
                    <div class="text">
                        <h3>브런치 메뉴</h3>
                        <p>00시 ~ 00시 까지<br>
                            브런치 메뉴를 제공합니다</p>
                        <a href="#">READ MORE<i class="xi-angle-right"></i></a>
                    </div><!--//.text-->
                </article>
                <article class="view view4">
                    <div class="text">
                        <h3>인기메뉴 이름</h3>
                        <p>XXX는 OO한 맛과 OOO가 특징인<br>
                            TIME STAY의 대표 메뉴입니다<br>
                            홈페이지에서도 직접 주문하실 수 있습니다</p>
                        <a href="#">주문하기<i class="xi-angle-right"></i></a>
                    </div><!--//.text-->
                </article>
                <article class="view view5">
                    <div class="text">
                        <h3>갤러리</h3>
                        <p>TIME STAY는 어디에 위치한 베이커리 카페로<br>
                            XX의 아름다운 전경과 인테리어를 자랑합니다</p>
                        <a href="#">READ MORE<i class="xi-angle-right"></i></a>
                    </div><!--//.text-->
                </article>               
            </div><!--//.slider-->
            <div class="swiper-button-next" style="color:#fff; margin-right:50px;"></div>
            <div class="swiper-button-prev" style="color:#fff; margin-left:50px;"></div>
        </section>
        <!--#main_view1-->
        
    <section id="main_view2">   
            
    
        <!--#main_view2-->
        <div class="cc">
            <div class="container1">
              <div class="block"></div>
              <h1>menu story</h1>
              <div class="tabs">
                <ul>
                  <!-- <li><label><input type="checkbox" class="pb" name="product_b" onclick="clickFn1(this)" checked>제빵</label></li>
                  <li><label><input type="checkbox" class="pb" name="product_s" onclick="clickFn2(this)">제과</label></li> -->
                  <li><a onclick="clickFn1(this)">coffee</a></li>
                  <li><a onclick="clickFn2(this)">dessert</a></li>
                  <li><a onclick="clickFn3(this)">food</a></li>
                </ul>
              </div>
            </div>  
            <section class="tabpanelbody">
                <div class="tabpanel">
                  <div class="swiper mySwiper" id="page1">
                    <div class="swiper-wrapper" >
                      <div class="swiper-slide" >
                        <img id="img1" src="${pageContext.request.contextPath}/resources/images/브런치사진1.jpg">
                      </div>
                      <div class="swiper-slide">
                        <img id="img2" src="${pageContext.request.contextPath}/resources/images/브런치사진2.jpg">
                      </div>
                      <div class="swiper-slide">
                        <img id="img3" src="${pageContext.request.contextPath}/resources/images/브런치사진3.jpg">
                      </div>
                      <div class="swiper-slide">
                        <img id="img4" src="${pageContext.request.contextPath}/resources/images/브런치사진4.jpg">
                      </div>
                      <div class="swiper-slide">
                        <img id="img5" src="${pageContext.request.contextPath}/resources/images/브런치사진5.jpg">
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
                        <img id="img1" src="${pageContext.request.contextPath}/resources/images/제과사진1.jpg">
                      </div>
                      <div class="swiper-slide">
                        <img id="img2" src="${pageContext.request.contextPath}/resources/images/제과사진2.jpg">
                      </div>
                      <div class="swiper-slide">
                        <img id="img3" src="${pageContext.request.contextPath}/resources/images/제과사진3.jpg">
                      </div>
                      <div class="swiper-slide">
                        <img id="img4" src="${pageContext.request.contextPath}/resources/images/제과사진4.jpg">
                      </div>
                      <div class="swiper-slide">
                        <img id="img5" src="${pageContext.request.contextPath}/resources/images/제과사진5.jpg">
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
                        <img id="img1" src="${pageContext.request.contextPath}/resources/images/카페내부1.jpg">
                      </div>
                      <div class="swiper-slide">
                        <img id="img2" src="${pageContext.request.contextPath}/resources/images/카페내부2.jpg">
                      </div>
                      <div class="swiper-slide">
                        <img id="img3" src="${pageContext.request.contextPath}/resources/images/카페내부3.jpg">
                      </div>
                      <div class="swiper-slide">
                        <img id="img4" src="${pageContext.request.contextPath}/resources/images/카페내부4.jpg">
                      </div>
                      <div class="swiper-slide">
                        <img id="img5" src="${pageContext.request.contextPath}/resources/images/카페내부5.jpg">
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
                              <p>이벤트 1</p>
                          </li>    
                          <li>
                              <p>이벤트 1</p>
                          </li>    
                          <li>
                              <p>이벤트 1</p>
                          </li>
                      </ul>
                  </div>
                  <!--//event_area-->
  
                  <div id="notice_area">
                      <ul>
                          <li>
                              <p>공지사항 1</p>
                          </li>    
                          <li>
                              <p>공지사항 1</p>
                          </li>    
                          <li>
                              <p>공지사항 1</p>
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
                }
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
            function clickFn1(obj){
            $("#page1").css('display','block')
            $("#page2").css('display','none')
            $("#page3").css('display','none')
            $('#button1').css('display','block')
    }
            function clickFn2(obj){
            $("#page1").css('display','none')
            $("#page2").css('display','block')
            $("#page3").css('display','none')
            $('#button2').css('display','block')
    
    }
  
            function clickFn3(obj){
            $("#page1").css('display','none')
            $("#page2").css('display','none')
            $("#page3").css('display','block')
            $('#button3').css('display','block')
      
    }
    </script>
</body>
</html>