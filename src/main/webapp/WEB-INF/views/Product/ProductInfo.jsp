<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@	page import="java.util.*" %>
<%@	page import="java.net.*" %>
<%@ page import="com.timestay.vo.ProductVO" %>
<%@ page import="com.timestay.vo.ProductReviewVO" %>
<%@ page import="com.timestay.vo.MemberVO" %>
<%     List<ProductReviewVO> lrvo = (List<ProductReviewVO>)request.getAttribute("lrvo"); %>
<%  ProductReviewVO rvo = (ProductReviewVO)request.getAttribute("rvo");//vo에 담아서 보냈으니까 bidx를 꺼내는 것이 아니라 vo를 꺼내야지	%> 
<%  ProductVO vo = (ProductVO)request.getAttribute("vo");//vo에 담아서 보냈으니까 bidx를 꺼내는 것이 아니라 vo를 꺼내야지	%> 
<%     List<MemberVO> mvo = (List<MemberVO>)request.getAttribute("mvo"); %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TIME STAY</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reset.css" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/ProductInfo.css" type="text/css"/>

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
	    <div class="section">
	      <div class="section1">
	        <div class="product_info_container">
	          <div class="product_img">
	            <img src="${pageContext.request.contextPath}/resources/images/<%=vo.getPimage()%>" >
	          </div>
	          <div class="product_info">
	            <div class="product_info1">
	              <ul>
	                <li><strong><%=vo.getPtitle() %></strong></li>
	                <li style="border-bottom:1px solid #000; width:100%; padding-bottom: 10px;"><%=vo.getPcontent() %></li>
	                <li><p>유통기한:</p>  구매일로부터 몇일</li>
	                <li><p>보관방법:</p> 냉장or 냉동</li>
	                <li><p>배송비:</p>  3000원</li>
	                <li><p>수령방법:</p> <input type="radio" name="delivery" value="delivery" checked>택배 &nbsp; 
	                  <input type="radio" name="receive" value="package">방문포장 &nbsp; 
	                  <input type="radio" name="receive" value="reservation">예약</li>
	                </ul>
	            </div>
	            <div class="selected_optionbox">
	              <div class="selected_option1">
	                <span>상품명:<%=vo.getPtitle() %></span>
	                <div class="spinnerBox">
	                  <!--<button type="button" id="btn_minus" value="-" onclick=minuss(this)>-</button>-->
	                  <div class="selected_option2" >
	                    <input id="count_product" type="number" value=1 min="1">
	                  </div>
	                  <!--<button type="button" id="btn_plus" value="+" onclick=pluss(this) >+</button>-->
	                </div>  
	              </div>
	            </div>
	            <div class="total1" ><p class="totalSum">총상품금액:<%=vo.getPprice() %></p></div>
	            <div class="product_info2">
	            <c:choose>
	              <c:when test="${login==null }">	
	              <a href="<%=request.getContextPath()%>/Member/Login.do"><div class="heart" onclick="alret(로그인)" ><img src="${pageContext.request.contextPath}/resources/images/heart.png" alt="찜하기"> 찜하기</div></a>
	              <a href="<%=request.getContextPath()%>/Member/Login.do"><div><img src="${pageContext.request.contextPath}/resources/images/shopping-cart.png" alt="장바구니"> 장바구니</div></a>
	              <a href="<%=request.getContextPath()%>/Member/Login.do"><div><img src="${pageContext.request.contextPath}/resources/images/credit-card.png" alt="구매하기"> 구매하기</div></a><!--button submit -->
	              </c:when>
	              <c:otherwise>
	              <a><div class="heart" onclick="changeFn()" ><img src="${pageContext.request.contextPath}/resources/images/heart.png" alt="찜하기"> 찜하기</div></a>
	              <a href=""><div><img src="${pageContext.request.contextPath}/resources/images/shopping-cart.png" alt="장바구니"> 장바구니</div></a>
	              <a href="${pageContext.request.contextPath}/Shopping/Order.do"><div><img src="${pageContext.request.contextPath}/resources/images/credit-card.png" alt="구매하기"> 구매하기</div></a>	              
	              </c:otherwise>
	            </c:choose>  
	            </div>          
	          </div>
	        </div>
	      </div>
	      <div class="section2">
	          <div class="tabs">
	            <div role="tablist" aria-labelledby="tablist-1" class="automatic">
	              <button id="tab-1" type="button" role="tab" aria-selected="true" aria-controls="tabpanel-1">
	                <span class="focus">공지사항</span>
	              </button>
	              <button id="tab-2" type="button" role="tab" aria-selected="false" aria-controls="tabpanel-2" tabindex="-1">
	                <span class="focus">상품리뷰</span>
	              </button>
	              <button id="tab-3" type="button" role="tab" aria-selected="false" aria-controls="tabpanel-3" tabindex="-1">
	                <span class="focus">Q&A</span>
	              </button>
	            </div>            
	            <div id="tabpanel-1" role="tabpanel" tabindex="0" aria-labelledby="tab-1">
	              <h3>공지사항</h3>
	              <div>내용</div>
	            </div>
	            <div id="tabpanel-2" role="tabpanel" tabindex="0" aria-labelledby="tab-2" class="is-hidden">
	              <div>
	                <div class="product_review">
	                  <h3>상품리뷰</h3>
	        <!--          <h2 type="hidden"><%=vo.getPidx()%></h2> --> <!-- 평점을 내기 위해서 해당 pidx를 받아와야한다. 그러기위해서 rvo.getPidx가 필요한데 어디에 숨기지 -->
	        <!-- 내 생각엔 처음에 pidx가0인데도 오류가안난 이유는 controller에서 pidx를 넣어줬기 때문인듯.  -->
	                  <h2>상품 평점:<%=rvo.getAvgRscore() %></h2>
	                  <div class="modal">
	                    <div class="modal_body">
	                      <div class="modal_close"><button class="modal_close_btn"><img src="${pageContext.request.contextPath}/resources/images/cancle.png" alt=""></button></div>
	                      <h2>리뷰작성</h2>
	                      <form action= "<%=request.getContextPath() %>/Product/ProductInsertReview.do" method="post">
	                        <!--별점 작성-->
	                        <span class="star-input">
	                          <span class="input">
	                              <input type="radio" name="Rscore" value="1" id="p1">
	                              <label id="p1" for="p1">1/5</label>
	                              <input type="radio" name="Rscore" value="2" id="p2">
	                              <label id="p2" for="p2">2/5</label>
	                              <input type="radio" name="Rscore" value="3" id="p3">
	                              <label id="p3" for="p3">3/5</label>
	                              <input type="radio" name="Rscore" value="4" id="p4">
	                              <label id="p4" for="p4">4/5</label>
	                              <input type="radio" name="Rscore" value="5" id="p5">
	                              <label id="p5" for="p5">5/5</label>
	                            </span>
	                            <output for="Rscore"><b>0/5</b></output>						
	                        </span>
	                        <table>
	                          <tr>
	                            <td><input type="hidden" name="Pidx" value="<%=vo.getPidx()%>"></td>
	                            <td><textarea name="Rtitle"></textarea></td>
	                          </tr>
	                        </table>       
	                        <button>작성</button>                  
	                      </form>
	                    </div>           
	                  </div> 
	 				  <div class="modal2">
	                    <div class="modal_body2">
	                      <div class="modal_close2"><button class="modal_close_btn2"><img src="${pageContext.request.contextPath}/resources/images/cancle.png" alt=""></button></div>
	                      <h2>리뷰수정</h2>
	                      <form action= "<%=request.getContextPath() %>/Product/ProductReviewModify.do" method="post">
                  	        <span class="star-input">
	                          <span class="input">
	                              <input type="radio" name="Rscore" value="1" id="p1">
	                              <label id="p1" for="p1">1/5</label>
	                              <input type="radio" name="Rscore" value="2" id="p2">
	                              <label id="p2" for="p2">2/5</label>
	                              <input type="radio" name="Rscore" value="3" id="p3">
	                              <label id="p3" for="p3">3/5</label>
	                              <input type="radio" name="Rscore" value="4" id="p4">
	                              <label  id="p4" for="p4">4/5</label>
	                              <input type="radio" name="Rscore" value="5" id="p5">
	                              <label id="p5" for="p5">5/5</label>
	                            </span>
	                            <output for="Rscore"><b>0/5</b></output>						
	                        </span>
	                        <table>
	                          <tr>
								<td><input type=hidden  name="Pidx" value="<%=vo.getPidx()%>"></td><!-- Pidx보내기 -->	                          
	                            <td><input type=hidden name="Ridx" value="<%=rvo.getRidx()%>"></td>	  
							 	<td><input type=hidden id=ModifyRscore  name="Rscore" value=""></td> 		                                                    
	                            <td><textarea name="Rtitle"></textarea></td>
	                          </tr>
	                        </table>       
	                        <button>수정</button>                  
	                      </form>
	                    </div>           
	                  </div>                                     	                  
					<c:if test="${login != null }">	                                      
	                <button class="btn-open-popup">리뷰작성</button>
	                </c:if>
	                </div>
	              </div>
	              <table class="pd_review">
	                <tr>
	                  <th style="width: 10%;">번호</th>
	                  <th style="width: 45%;">내용</th>
	                  <th style="width: 15%;">평점</th>
	                  <th style="width: 15%;">작성자</th>
	                  <th style="width: 15%;">작성일</th>
	                </tr>
   			        <%for(ProductReviewVO VO : lrvo){ %>
	                <tr>
	                  <td><%=VO.getRidx()%></td>
	                  
	                  <!--<c:if test="세션에서 받아온 Midx == 리뷰의 Midx">
	         
	                  </c:if>-->
                      <td><%=VO.getRtitle() %>
                      <c:if test="${login != null }">	 
                      <form>
                      <input type="hidden" value="<%=VO.getPidx()%>">
                      <input type="hidden" value="<%=VO.getRidx()%>">
                      <button type="button" class="btn-open-popup2" data-value="<%=VO.getRidx()%>" data-score="<%=VO.getRscore()%>">리뷰수정</button>
                     
                      </form>
                       </c:if>
                      </td>
	                  <td><%=VO.getRscore() %></td>
	                  <td><%=VO.getMidmasking() %></td>
	                  <td><%=VO.getRwdate() %></td>
	                </tr>
		          		<%} %>		       
	              </table>
	            </div>
	            <div id="tabpanel-3" role="tabpanel" tabindex="0" aria-labelledby="tab-3" class="is-hidden">
	            <h3>반품/환불</h3>
	            <h3>교환 및 환불 안내</h3>
	            <div></div>
	            <h3>반품 보내실 주소</h3>
	            <div></div>
	            <h3>교환/환불 정책</h3>
	            <div></div>
	            </div>
	          </div>
	        </div>
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
	    </div>
    </main>
    <footer>
        <div id="container">
            <div id="footer1">
                <h2>Cafe Time Stay</h2>
                <p>법인명(상호) : Cafe Time stay<br/>
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
		            class TabsAutomatic {
		                constructor(groupNode) {
		                  this.tablistNode = groupNode;
		                  console.log(groupNode);
		                  this.tabs = [];
		                  
		                  this.firstTab = null;
		                  this.lastTab = null;
		                  
		                  this.tabs = Array.from(this.tablistNode.querySelectorAll('[role=tab]'));
		                  //Array.from 은 유사 배열 객체들을 배열과 같이 만들어 주는 역할을 한다.
		                  this.tabpanels = [];
		                  
		                  for (var i = 0; i < this.tabs.length; i += 1) {
		                    var tab = this.tabs[i];
		                    var tabpanel = document.getElementById(tab.getAttribute('aria-controls'));
		                    
		                    tab.tabIndex = -1;
		                    tab.setAttribute('aria-selected', 'false');
		                    this.tabpanels.push(tabpanel);
		                    
		                    tab.addEventListener('keydown', this.onKeydown.bind(this));
		                    tab.addEventListener('click', this.onClick.bind(this));
		                    
		                    if (!this.firstTab) {
		                      this.firstTab = tab;
		                    }
		                    this.lastTab = tab;
		                  }
		                  
		                  this.setSelectedTab(this.firstTab, false);
		                }
		                
		                setSelectedTab(currentTab, setFocus) {
		                  if (typeof setFocus !== 'boolean') {
		                    setFocus = true;
		                  }
		                  for (var i = 0; i < this.tabs.length; i += 1) {
		                    var tab = this.tabs[i];
		                    if (currentTab === tab) {
		                      tab.setAttribute('aria-selected', 'true');//element.setAttribute( 'attributename', 'attributevalue' )
		                      tab.removeAttribute('tabindex');//element.removeAttribute('attributename')
		                      this.tabpanels[i].classList.remove('is-hidden');//classList 를 사용하면 
		                      //class명을 변경할 때 이전의 클래스가 사라지는 경우를 방지해준다.
		                      if (setFocus) {
		                        tab.focus();
		                      }
		                    } else {
		                      tab.setAttribute('aria-selected', 'false');
		                      tab.tabIndex = -1;
		                      this.tabpanels[i].classList.add('is-hidden');
		                    }
		                  }
		                }
		                
		                setSelectedToPreviousTab(currentTab) {
		                  var index;
		                  
		                  if (currentTab === this.firstTab) {
		                    this.setSelectedTab(this.lastTab);
		                  } else {
		                    index = this.tabs.indexOf(currentTab);
		                    this.setSelectedTab(this.tabs[index - 1]);
		                  }
		                }
		                
		                setSelectedToNextTab(currentTab) {
		                  var index;

		                  if (currentTab === this.lastTab) {
		                    this.setSelectedTab(this.firstTab);
		                  } else {
		                    index = this.tabs.indexOf(currentTab);
		                    this.setSelectedTab(this.tabs[index + 1]);
		                  }
		                }
		                
		                /* EVENT HANDLERS */
		                
		                onKeydown(event) {
		                  var tgt = event.currentTarget,
		                  flag = false;
		                  
		                  switch (event.key) {
		                    case 'ArrowLeft':
		                    this.setSelectedToPreviousTab(tgt);//이전 탭을 선택하라는거 같은데
		                    flag = true;
		                    break;
		                    
		                    case 'ArrowRight':
		                    this.setSelectedToNextTab(tgt);//다음탭을 선택해라
		                    flag = true;
		                    break;
		                    
		                    case 'Home':
		                    this.setSelectedTab(this.firstTab);//home키 누르면 첫번째 탭 선택해라
		                    flag = true;
		                    break;
		                    
		                    case 'End':
		                    this.setSelectedTab(this.lastTab);//end키 누르면 마지막 탭 선택해라
		                    flag = true;
		                    break;
		                    
		                    default:
		                    break;
		                  }
		                  
		                  if (flag) {
		                    event.stopPropagation();//이벤트가 상위 엘리먼트에 전달되지 않도록 막아주는 역할 한다.
		                    event.preventDefault();//고유 동작을 중지시키는 역할을 한다.   이벤트가 상위 엘리먼트에 전달되지 않도록
		                    //e.preventDefault는 고유 동작을 중단시키고, e.stopPropagation 는 상위 엘리먼트들로의 이벤트 전파를 중단시킨다.
		                  }
		                }
		                
		                onClick(event) {
		                  this.setSelectedTab(event.currentTarget);
		                }
		              }
		              
		              // Initialize tablist
		              
		              window.addEventListener('load', function () {
		                var tablists = document.querySelectorAll('[role=tablist].automatic');//class automatic
		                for (var i = 0; i < tablists.length; i++) {
		                  new TabsAutomatic(tablists[i]);
		                }
		              });

		              //modal
		              $('.btn-open-popup').on("click",function(){
		                    $('.modal').addClass('show')
		                    $('body').css('overflow','hidden')
		                  
		                  })

		                    $('.modal_close_btn').on("click",function(){
		                      $('.modal').removeClass('show')
		                      $('body').css('overflow','auto')
		                    })
		                    $('body').on('click',function(){
		                      if($('modal').hasClass('show')){
		                        $('.modal').removeClass('show')
		                        $('body').css('overflow','auto')
		                    }
		                    })

		                //modal2

		                 
		                  $('.btn-open-popup2').on("click",function(){
		                    $('.modal2').addClass('show')
		                    $('body').css('overflow','hidden')
		                  	 $(this).data('value')
		                  	 console.log($(this).data('value'))
		                  	 $('input[name=Ridx]').val($(this).data('value'))
		                  	//$('input[name=Rscore]').val($(input[name=Rscore]).val()) 이거때문에 모든 value 가 0으로 바뀐거고 그래서 0이 계속 들어간거고
	                  		
		                  })
	                  			
                 	$('#p1').on('click',function(){
						$('#ModifyRscore').val("1")})	//왜 계속 1만나오지?
	                 	$('#p2').on('click',function(){
							$('#ModifyRscore').val("2")})
               			$('#p3').on('click',function(){
							$('#ModifyRscore').val("3")})
               			$('#p4').on('click',function(){
							$('#ModifyRscore').val("4")})
               			$('#p5').on('click',function(){
							$('#ModifyRscore').val("5")})							
//checked값 바뀌면 text를 바꿔야하나?
		                    $('.modal_close_btn2').on("click",function(){
		                      $('.modal2').removeClass('show')
		                      $('body').css('overflow','auto')
		                    })
		                    $('body').on('click',function(){
		                      if($('modal2').hasClass('show')){
		                        $('.modal2').removeClass('show')
		                        $('body').css('overflow','auto')
		                    }
		                    })
		                  
		                  //별점 
						  $(function(){
						    var $star = $(".star-input"),
						    $result = $star.find("output>b");
							
						      $(document)
						     .on("focusin", ".star-input>.input", 
						      function(){
						        $(this).addClass("focus");
						      })
								 
						    	.on("focusout", ".star-input>.input", function(){
						    	var $this = $(this);
						    	setTimeout(function(){
						      		if($this.find(":focus").length === 0){
						       			$this.removeClass("focus");
						     	 	}
						   		}, 100);
						 	    })
						      
						      .on("change", ".star-input :radio", function(){
						        $result.text($(this).next().text());
						      })
						      .on("mouseover", ".star-input label", function(){
						        $result.text($(this).text());
						      })
						      .on("mouseleave", ".star-input>.input", function(){
						        var $checked = $star.find(":checked");
						      if($checked.length === 0){
						        $result.text("0/5");
						      } else {
						        $result.text($checked.next().text());
						      }
						    });
						  });
		              

		                  
		                  //찜하기
						function changeFn(){
						var src = $(".heart>img").attr("src");
						if(src == "${pageContext.request.contextPath}/resources/images/heart.png"){
							$(".heart>img").attr("src","${pageContext.request.contextPath}/resources/images/heartred.png");
						}else{
							$(".heart>img").attr("src","${pageContext.request.contextPath}/resources/images/heart.png");
							}
						};
		                  //퀵메뉴
		                  $(document).ready(function(){
		                  var currentPosition = parseInt($(".quickmenu").css("top"));
		                  $(window).scroll(function() {
		                    var position = $(window).scrollTop(); 
		                    $(".quickmenu").stop().animate({"top":position+currentPosition+"px"},10);
		                   });
		                  });
    </script>
</body>
</html>