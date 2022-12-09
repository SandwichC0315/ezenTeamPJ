<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<!--//location-->
    <script>
        $(function(){
            $('.sel_box').selectric();
        })
    </script>

	<!--삭제할 상품을 선택하세요-->
	<script type="text/javascript">
	    function DelChk(){
	        var select_obj = '';
	        
	        $('input[name="idx"]:checked').each(function(index){
	            if(index != 0){
	                select_obj += ', ';
	            }
	            select_obj += $(this).val();
	        });
	
	        if(select_obj==""){
	            alert('삭제할 상품을 선택하세요');
	            return;
	        }
	
	        location.href="? mode=cart_seldel&idx="+select_obj;
	    }
	</script>
<title>장바구니</title>

 	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reset.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/MyPageshoppingCart.css" type="text/css"/>
    
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
            <li><a href="<%=request.getContextPath()%>/Member/Login.do">로그인</a></li>
            <li><a href="<%=request.getContextPath()%>/MyPage/MyPageShoppingCart.do">장바구니</a></li>
            <li><a href="#">고객센터</a></li>
        </ul>
    </header>
 <main> 
        <!--서브메뉴-->
        <nav id="lnb">
            <ul>
                <li class="on">
                    <a href="<%=request.getContextPath()%>/MyPage/MyPageShoppingCart.do">장바구니</a>
                </li>
                <br>
                <li>
                    <a href="<%=request.getContextPath()%>/MyPage/MyPageOrderView.do">주문배송조회</a>
                </li>
                <br>
            </ul>
        </nav>

        <!--서브메뉴-->
        <div id="contents">
            <div class="contbox">
                <!--마이페이지-->
                <div class="location">
                    <span class="tit">마이페이지</span>
                    <span class="bar"></span>
                    <strong>장바구니</strong>
                </div>
                <div class="cart_box">
                    <div class="table_list">
                        <div class="titlebox">
                            <div class="box_cell box_1">선택</div>
                            <div class="box_cell box_2"></div>
                            <div class="box_cell box_3 txt_left">상품정보</div>
                            <div class="box_cell box_4 txt_right">적립금</div>
                            <div class="box_cell box_5">판매가</div>
                            <div class="box_cell box_6">구매수량</div>
                            <div class="box_cell box_7">합계</div>
                        </div>

                        <!--list-->
                        <ul>
                            <li class="nolist">
                                <p>장바구니가 비었습니다</p>
                            </li>
                        </ul>

                        <!--//list-->
                        <!--total-->
                        <div class="totalbox">
                            총 주문 금액
                            <strong>0원</strong>
                            <span class="plus">+</span>
                            배송비
                            <strong>0원</strong>
                        </div>
                        <!--//total-->
                    </div>
                </div>

                <div class="naver_paybox"></div>
            </div>
        </div>

        <div class="totalbox">총 주문 금액
        <strong></strong>
        <span class="plus">+</span>배송비
        <strong></strong>
        </div>
        <div class="btn_box">
            <div class="btn_left">
                <a href="#" class="a_btn">선택삭제</a>
            </div>
            <div class="btn_right">
                <span class="sbox">
                    <a href="#" class="shopping">계속 쇼핑하기</a>
                    <a href="#" class="payment">전체주문하기</a>
                </span>
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
                <p> 팩스 : 063) 123 - 4567<br />
                    운영시간 : 10:00 ~ 18:00<br />
                    매주 월요일은 휴무일입니다.</p>
            </div>
            <!--//footer2-->
        </div>
        <!--//container-->
    </footer>
</html>