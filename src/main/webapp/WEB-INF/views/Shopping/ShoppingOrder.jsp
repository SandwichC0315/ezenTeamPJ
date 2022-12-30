<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TIME STAY</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reset.css" type="text/css"/>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/ShoppingOrder.css" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/Login_pop.css"/>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css" />

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
                    <li><a href="#">공지사항</a>
                        <div class="sub">
                            <ul>
                                <li><a href="<%= request.getContextPath() %>/Board/BoardNotice.do">공지사항</a></li>
                                <li><a href="<%= request.getContextPath() %>/Board/BoardFaq.do">자주 묻는 질문</a></li>
                                <li><a href="<%= request.getContextPath() %>/Board/BoardQna.do">1:1 문의 게시판</a></li>
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
	    <section id="order">
	      <div class="order_top">
	        <div><h1>주문작성</h1></div>
	        <div class="order_step">
	          <ul>
	            <li><span>01</span>장바구니</li>
	            <li><img src="${pageContext.request.contextPath}/resources/images/app-gd9242d1e5_640.png" alt=""></li>
	            <li><span>02</span>주문작성</li>
	            <li><img src="${pageContext.request.contextPath}/resources/images/app-gd9242d1e5_640.png" alt=""></li>
	            <li><span>03</span>주문완료</li>
	          </ul>
	        </div>
	      </div>	    
	      <form class="frm" action="post">
	        <table class="pd_n">
	          <tr class="pd_n_top">
	            <td style="width: 50%;">상품명</td>
	            <td style="width: 10%;">배송수단</td>
	            <td style="width: 10%;">수량</td>
	            <td style="width: 10%;">상품가</td>
	            <td style="width: 10%;">주문금액</td>
	            <td style="width: 10%;">배송비</td>
	          </tr>
	          <tr class="pd_n_bottom">
	            <td style="width: 50% ">
	              <div>
	                <img src="${pageContext.request.contextPath}/resources/images/초코머핀.jpg" alt="">
	                <p>1</p>
	              </div>
	            </td>
	            <td class="td1" style="width: 10%;">2</td>
	            <td style="width: 10%;">3</td>
	            <td style="width: 10%;">4</td>
	            <td style="width: 10%;">5</td>
	            <td style="width: 10%;">6</td>
	          </tr>
	        </table>
	        <table class="pd_c">
	          <tr class="pd_c_top">
	            <td><p>주문금액:</p></td>
	            <td><p>할인금액:</p></td>
	            <td rowspan="2">
	              <p>결제예정금액:</p>
	              
	              <p>적립:</p>
	            </td>
	          </tr>
	          <tr class="pd_c_bottom">
	            <td colspan="2">
	              <p>적립금</p>
	              <input type="text" name="" id="">
	              &nbsp;원
	              <button type="button">모두적용</button>
	              <!-- a태그 써야하나 -->
	              &nbsp;<p>(</p><p>p)</p>
	            </td>
	          </tr>
	        </table>
	        
	        <div class="pd_order">
	          <h2>주문하시는 분</h2>
	          <table class="pd_o">
	            <tr>
	              <td>이름</td>
	              <td><input type="text" name="" id=""></td>
	            </tr>
	            <tr>
	              <td>휴대폰번호</td>
	              <td><input type="text" name="" id="" placeholder="휴대폰번호(숫자만)"></td>
	            </tr>
	          </table>
	        </div>
	        
	        <div class="pd_recive">
	          <h2>받으시는 분<input type="checkbox">(주문자와동일)</h2>
	          <table class="pd_r">
	            <tr>
	              <td>받으시는분</td>
	              <td><input type="text" name="" id=""></td>
	              
	            </tr>
	            <tr>
	              <td>휴대폰번호</td>
	              <td><input type="text" name="" id=""></td>
	            </tr> 
	            <tr>
	              <td>주소</td>
	              <td>
	                <input type="text" name="" id="">
	                <a href="">우편번호찾기</a>
	              </td>
	            </tr> 
	            <tr>
	              <td>주문시요청사항</td>
	              <td><input type="text" name="" id="">
	                <select value="">
	                  <option value="">----선택----</option>
	                  <option value="경비실에 맡겨주세요">경비실에 맡겨주세요</option>
	                  <option value="문앞에 놓아주세요">문앞에 놓아주세요</option>
	                </select>
	              </td>
	            </tr> 
	            <tr>
	              <td>배송희망일</td>
	              <td><input type="text" name="" id=""></td>
	            </tr> 
	            <tr>
	              <td>배송시간</td>
	              <td><input type="text" name="" id=""></td>
	            </tr> 
	          </table>
	        </div>
	      
	        <div class="pd_pay">  
	          <h2>결제선택</h2>
	          <table class="pd_p">
	            <tr>
	              <td>총 결제금액</td>
	              <td><p>20000원</p></td>
	            </tr>
	            <tr>
	              <td>결제방법</td>
	              <td><select name="" id="">
	                <option value="">----선택----</option>
	                <option value="신용카드">신용카드</option>
	                <option value="카카오페이">카카오페이</option>
	                <option value="휴대폰">휴대폰</option>
	                <option value="무통장입금">무통장입금</option>
	              </select>
	              </td>
	            </tr>
	          </table>
	          <div class="pd_pay_div1">
	            <input type="checkbox">(필수) 결제서비스 약관에 동의하며, 원활한 배송을 위한 개인정보 제공에 동의합니다. 
	            <a href="">[약관보기]</a>
	          </div>
	          <div class="pd_pay_div2">
	            <a><img src="${pageContext.request.contextPath}/resources/images/shopping-cart.png" alt=""> 장바구니</a>
	            <a><img src="${pageContext.request.contextPath}/resources/images/credit-card.png" alt=""> 결제진행</a>
	          </div>
	        </div>
	      </form>  
   	        <div class="quickmenu">
	          <div><a href="#"><img src="${pageContext.request.contextPath}/resources/images/free-icon-up-arrow-3042413.png" alt="위로가기"></a></div>
	          <div><a href="#"><img src="${pageContext.request.contextPath}/resources/images/shopping-cart.png" alt="장바구니"></a></div>
	          <div><a href="#"><img src="${pageContext.request.contextPath}/resources/images/free-icon-kakao-talk-3991924.png" alt="카카오톡"></a></div>
	          <div><strong>최근상품</strong></div>
	          <div class="recent_product"> 
	            <ul>
	              <li>1</li>
	              <li>1</li>
	            </ul>
	          </div>
	        </div>
	    </section>
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
	    //퀵메뉴
	    $(document).ready(function(){
	    var currentPosition = parseInt($(".quickmenu").css("top"));
	    $(window).scroll(function() {
	      var position = $(window).scrollTop(); 
	      $(".quickmenu").stop().animate({"top":position+currentPosition+"px"},10);
	     });
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