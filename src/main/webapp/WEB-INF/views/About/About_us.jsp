<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TIME STAY</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reset.css" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/Login_pop.css" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/About_us.css" type="text/css"/>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css" />

    <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script><!--jquery 3.6 적용-->

    <style>   
 	
    </style>
</head>
<body>
    <header id="header" class="deactive">
        
        <nav class="navbar">
            <div class="navbar_menu">
                <div id="title"> 
                    <h4><a href="../">TIME STAY</a></h4>
                </div>
                <ul>
                    <li><a href="About_us.do">카페소개</a>
                        <div class="sub">
                            <ul>
                                <li><a href="About_us.do">Time stay</a></li>
                                <li><a href="Location.do">오시는 길</a></li>
                                <li><a href="Gallery.do">갤러리</a></li>
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
        </nav>
    
        <ul class="navbar_links">
            <li><a href="#" id="modal_btn" onclick="">로그인</a></li>
            <li><a href="#">장바구니</a></li>
            <li><a href="#">고객센터</a></li>
        </ul>
    </header>
    <main> 
        <div class="info">
            <h4>TIME STAY</h4>
            <section id="main_view">
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
                            <h3>베이커리 전문 카페</h3>
                            <p>TIME STAY에서는 매일 아침 ?시<br>
                                신선한 빵을~ 설명 설명 설명 제공하고 있습니다</p>
                            <a href="#">READ MORE<i class="xi-angle-right"></i></a>
                        </div><!--//.text-->
                    </article>
                    <article class="view view3">
                        <div class="text">
                            <h3>아름다운 VIEW</h3>
                            <p>TIME STAY는 어디어디 위치한 카페로<br>
                                고급스러운 가구들로 이루어진 인테리어, 어디어디의 아름다운 전경을 자랑합니다</p>
                            <a href="#">READ MORE<i class="xi-angle-right"></i></a>
                        </div><!--//.text-->
                    </article>
                    <article class="view view4">
                        <div class="text">
                            <h3>카페 설명4</h3>
                            <p>XXX는 OO와 OOO가 특징인 TIME STAY는<br> 
                                00시 부터 00시 까지 영업합니다 (?째주 ?요일 휴무)</p>
                            <a href="#">주문하기<i class="xi-angle-right"></i></a>
                        </div><!--//.text-->
                    </article>                
                </div><!--//.slider-->
                <div class="swiper-button-next" style="color:#fff; margin:180px 350px;"></div>
                <div class="swiper-button-prev" style="color:#fff; margin:180px 0 0 350px;"></div>
            </section>
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
        <div class="modal_close"><a href="#">close</a></div>
        <div class="modalContents">
            <h2>로그인</h2>
            <input name="id" class="loginId" type="text" placeholder="아이디"/>
            <input name="password" class="loginPw" type="password" placeholder="비밀번호"/>
            <button class="login_btn">로그인</button>
            <div class="login_bottom">
                <a href="#">회원가입</a> 
                <a href="../Login/find_ID.do">아이디 찾기</a> 
                <a href="../Login/find_PW.do">비밀번호 찾기</a>
            </div>            
        </div>
    <div>  
        
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

        //메인뷰 슬라이더
        var main_view = new Swiper("#main_view",{
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