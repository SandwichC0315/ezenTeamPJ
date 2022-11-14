<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>나의 마일리지</title>

  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reset.css"/>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/Login_pop.css"/>  
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/member_QA.css">

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
                    <h4><a href="#">TIME STAY</a></h4>
                </div>
                <ul>
                    <li><a href="../About/About_us.do">카페소개</a>
                        <div class="sub">
                            <ul>
                                <li><a href="../About/About_us.do">Time stay</a></li>
                                <li><a href="../About/Location.do">오시는 길</a></li>
                                <li><a href="../About/Gallery.do">갤러리</a></li>
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
                                <li><a href="#">진행중인 이벤트</a></li>
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
            </ul>            
        </nav>    
        <ul class="navbar_links">
            <li><a href="member_Modify.do">내정보</a></li>
            <li><a href="#">장바구니</a></li>
            <li><a href="#">고객센터</a></li>
        </ul>
    </header>
    <main>
        <div class="member_menu">
            <p>마이 페이지</p>
            <ul>
                <li><a href="member_Modify.do">회원정보 수정</a></li>
                <li><a href="member_Point.do">나의 마일리지</a></li>
                <li><a href="member_QA.do" style="font-weight: bold;">나의 문의내역</a></li>
                <li><a href="#">장바구니</a></li>
                <li><a href="#">주문/배송조회</a></li>
                <li><a href="#">취소/반품내역</a></li>
            </ul>
        </div>
        <div class="member_QA">         
            <div id="QA_list">
                <h4>나의 문의내역</h4>
                <table>
                    <tr>
                        <td>카테고리</td>   
                        <td>문의 내용</td>   
                        <td>작성날짜</td>
                        <td>답변</td>
                        <td>답변날짜</td>                  
                    </tr>
                </table>                
            </div>               
            <div id="QA_bottom">
                <section class="QA_search">
                    <select>
                        <option value="subject">제목</option>
                        <option value="content">내용</option>
                        <input type="text" name="keyword" size="10">
                        <input type="submit" name="submit" value="검색">
                    </select>                
                    <button id="QA_write"value="write">문의하기</button>                
                </section>
            </div>
            <div id="page">
                <a href="#">1</a>
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