<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<% String Pimage = (String)request.getAttribute("Pimage"); %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TIME STAY</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reset.css" type="text/css"/>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/ShoppingOrder.css" type="text/css"/>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css" />

    <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script><!--jquery 3.6 적용-->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
                                <li><a href="<%= request.getContextPath() %>/Event/EventNowEvent.do">진행중 이벤트</a></li>
                                <li><a href="<%= request.getContextPath() %>/Event/EventEndEvent.do">종료된 이벤트</a></li>
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
            <a href="#" class="navbar_toggleBtn"><i class="fas fa-bars"></i></a>
        </nav>
    
        <ul class="navbar_links">
     		<c:if test ="${login!=null}">
            <li><a href="<%=request.getContextPath()%>/Member/logout.do">로그아웃</a></li>
            <li><a href="#">마이페이지</a></li>
            <li><a href="#">장바구니</a></li>
            <li><a href="#">고객센터</a></li>
  		    </c:if>  
  		    <c:if test= "${login==null}">
 			<li><a href="<%=request.getContextPath()%>/Member/Login.do">로그인</a></li>  		    
            <li><a href="<%=request.getContextPath()%>/MyPage/MyPageShoppingCart.do">장바구니</a></li>
            <li><a href="#">고객센터</a></li>
            </c:if>
        </ul>
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
	                 <img src= "${pageContext.request.contextPath}/resources/images/${param.Pimage}" >
	                <p>${param.ProductName }</p>
	              </div>
	            </td>
	            <td class="td1" style="width: 10%;">${param.delivery}</td>
	            <td style="width: 10%;">${param.count_product}</td>
	            <td style="width: 10%;">${param.totalSum }원</td>
	            <td style="width: 10%;">${param.totalSum }원</td>
	            <td style="width: 10%;">${param.delivery_fee }원</td>
	          </tr>
	        </table>
	        <table class="pd_c">
	          <tr class="pd_c_top">
	            <td><p>주문금액:${param.totalSum }</p></td>
	            <td><p>할인금액:0</p></td>
	            <td rowspan="2">
	              <p>결제예정금액:${param.totalSum}+${param.delivery_fee }</p>
	              
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
	              <td><input type="text" name="" id="" onKeyup="this.value=this.value.replace(/[^-0-9]/g,'');" placeholder="휴대폰번호(숫자만)"></td>
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
	             <td><input type="text" onKeyup="this.value=this.value.replace(/[^-0-9]/g,'');" name="" id="" placeholder="휴대폰번호(숫자만)"></td>
	            </tr> 
	            <tr style="height:200px">
	              <td style="">주소</td>
	              <td class="address" style="display:block">
	              	<input style="height:22%; margin-top:5px;" type="text" id="sample6_postcode" placeholder="우편번호">
					<input style="height:18%"type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br/>
					<input style="height:22%; margin: 10px 0;" type="text" id="sample6_extraAddress" placeholder="참고항목">
					<input style="height:22%"type="text" id="sample6_address" placeholder="주소"><br>
					<input style="height:22%; margin-bottom:5px;"type="text" id="sample6_detailAddress" placeholder="상세주소">
					
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
	              <td><input type="text" name="" id="Date"></td>
	            </tr> 
	          </table>
	        </div>
	      
	        <div class="pd_pay">  
	          <h2>결제선택</h2>
	          <table class="pd_p">
	            <tr>
	              <td>총 결제금액</td>
	              <td><p>${param.totalSum}+${param.delivery_fee }원</p></td>
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
	<script>
	$(function() {
	    $( "#Date" ).datepicker({
	    	buttonImage: "/application/db/jquery/images/calendar.gif",
	    	 buttonImageOnly: true,
	    		changeMonth: true, // 월을 바꿀수 있는 셀렉트 박스를 표시한다.
	    		  changeYear: true, // 년을 바꿀 수 있는 셀렉트 박스를 표시한다.
	    		  closeText: '닫기',  // 닫기 버튼 패널
	    		  dateFormat: "yy-mm-dd", // 텍스트 필드에 입력되는 날짜 형식.
	    		  showAnim: "slide",
	    		  yearRange: 'c-0:c+1', // 년도 선택 셀렉트박스를 현재 년도에서 이전, 이후로 얼마의 범위를 표시할것인가.
	    });
	});
	
	
	
	    //퀵메뉴
	    $(document).ready(function(){
	    var currentPosition = parseInt($(".quickmenu").css("top"));
	    $(window).scroll(function() {
	      var position = $(window).scrollTop(); 
	      $(".quickmenu").stop().animate({"top":position+currentPosition+"px"},10);
	     });
	    });
	    
	//주소
	    function sample6_execDaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

	                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var addr = ''; // 주소 변수
	                var extraAddr = ''; // 참고항목 변수

	                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                    addr = data.roadAddress;
	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                    addr = data.jibunAddress;
	                }

	                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
	                if(data.userSelectedType === 'R'){
	                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                        extraAddr += data.bname;
	                    }
	                    // 건물명이 있고, 공동주택일 경우 추가한다.
	                    if(data.buildingName !== '' && data.apartment === 'Y'){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                    if(extraAddr !== ''){
	                        extraAddr = ' (' + extraAddr + ')';
	                    }
	                    // 조합된 참고항목을 해당 필드에 넣는다.
	                    document.getElementById("sample6_extraAddress").value = extraAddr;

	                } else {
	                    document.getElementById("sample6_extraAddress").value = '';
	                }

	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('sample6_postcode').value = data.zonecode;
	                document.getElementById("sample6_address").value = addr;
	                // 커서를 상세주소 필드로 이동한다.
	                document.getElementById("sample6_detailAddress").focus();
	            }
	        }).open();
	    }

	</script>
</body>
</html>