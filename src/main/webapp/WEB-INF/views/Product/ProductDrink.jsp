<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    <%@ page import="com.timestay.vo.ProductVO" %>
    <%@	page import="java.util.List" %>  
<% List<ProductVO> ProductList3 = (List<ProductVO>)request.getAttribute("ProductList3"); %>  
<% List<ProductVO> ProductList4 = (List<ProductVO>)request.getAttribute("ProductList4"); %>  
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TIME STAY</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reset.css" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/Product.css" type="text/css"/>
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
                                <li><a href="#">진행중 이벤트</a></li>
                                <li><a href="#">종료된 이벤트</a></li>
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
            <li><a href="<%=request.getContextPath()%>/Shopping/ShoppingCart.do">장바구니</a></li>
            <li><a href="#">고객센터</a></li>
  		    </c:if>  
  		    <c:if test= "${login==null}">
 			<li><a href="<%=request.getContextPath()%>/Member/Login.do">로그인</a></li>  		    
            <li><a href="<%=request.getContextPath()%>/Shopping/ShoppingCart.do">장바구니</a></li>
            <li><a href="#">고객센터</a></li>
            </c:if>
        </ul>
    </header>
    <main> 
	  <div class="content">
	    <h1>음료</h1>
	    <div class="product_kind_wrap"> 
	      <div class="product_menu_top">
	        <h2>분류 보기</h2>
	        <div class="product_menu_button">
	          <img src="${pageContext.request.contextPath}/resources/images/list_up_btn.png" alt="분류보기 메뉴 접기" style="height: 42px;">
	        </div><!--사과 이미지 바꾸는거 참고--> 
	      </div>
	      <div class="proudct_toggle_wrap">
	        <hr class="hr">
	          <ul>
	            <li>
	            <label><input type="checkbox" name="product_all" onclick="allClickFn(this)">전체</label>
	              <!-- <label for="product_all">전체</label> -->
	            </li>
	            <li><label><input type="checkbox" class="pb" name="product_b" onclick="clickFn1(this)" checked>커피</label></li>
	            <li><label><input type="checkbox" class="pb" name="product_s" onclick="clickFn2(this)">에이드</label></li>
	          </ul>      
	      </div>
	    </div>
	    <div class="product">
	      <div class="product_b">
	        <p>커피</p>
	        <ul>
		        <%for(ProductVO vo : ProductList3){ %>
   		          <li>
     				<dl><a href="ProductInfo.do?Pidx=<%=vo.getPidx()%>"><img src="${pageContext.request.contextPath}/resources/images/<%=vo.getPimage() %>" alt=""></a></dl>
 					<dt><%=vo.getPtitle() %></dt>     				 
		          </li>
		          		<%} 
		%>			        		          	        	
	        </ul>
	      </div>
	      <div class="product_s">
	
	        <p>에이드</p>
	        <ul>
		        <%for(ProductVO vo : ProductList4){ %>
   		          <li>
     				<dl><a href="ProductInfo.do?Pidx=<%=vo.getPidx()%>"><img src="${pageContext.request.contextPath}/resources/images/<%=vo.getPimage() %>" alt=""></a></dl>
 					<dt><%=vo.getPtitle() %></dt>     				 
		          </li>
		          		<%} 
		%>			        		          	        	
	        </ul>	        
	      </div>
	    </div>
		   <div class="quickmenu">
	          <div><a href="#"><img src="${pageContext.request.contextPath}/resources/images/free-icon-up-arrow-3042413.png" alt="위로가기"></a></div>
	          <div><a href="<%=request.getContextPath()%>/Shopping/ShoppingCart.do"><img src="${pageContext.request.contextPath}/resources/images/shopping-cart.png" alt="장바구니"></a></div>
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
    <script>
		    //분류보기 
		    $(function (){
		      $(".product_menu_button").click(function (){
		        $(".proudct_toggle_wrap").toggle();
		      var src= $(".product_menu_button>img").attr("src");
		      if(src == '${pageContext.request.contextPath}/resources/images/list_up_btn.png'){
		        $(".product_menu_button>img").attr("src","${pageContext.request.contextPath}/resources/images/list_down_btn.png");
		      }else{
		        $(".product_menu_button>img").attr("src","${pageContext.request.contextPath}/resources/images/list_up_btn.png");
		      }
		    }); 
		  });
		
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
					//체크박스 설정
					$(function (){
						$("input[name=product_b]").click(function (){
					  //	 $(".product_b").toggle();
					    var check1 = $("input[name=product_b]").is(":checked")
					    var check2 = $("input[name=product_s]").is(":checked")
					    if(check1== true){
					      $(".product_b").css("display","block");
					    }else if(check1 ==false){
					      $(".product_b").css("display","none");
					      $("input[name=product_all]").prop("checked",false)
					      }
					  }); 
					});
					
					$(function (){
						$("input[name=product_s]").click(function (){
					  //	 $(".product_b").toggle();
					    var check1 = $("input[name=product_b]").is(":checked")
					    var check2 = $("input[name=product_s]").is(":checked")
					    if(check2== true){
					      $(".product_s").css("display","block");
					    }else if(check2 ==false){
					      $(".product_s").css("display","none");
					      $("input[name=product_all]").prop("checked",false)
					      }
					  }); 
					});
					$(function (){
						$("input[name=product_b]").click(function (){
					  //	 $(".product_b").toggle();
					    var check1 = $("input[name=product_b]").is(":checked")
					    var check2 = $("input[name=product_s]").is(":checked")
					    if(check1==true&&check2== true){
					      $("input[name=product_all]").prop("checked",true)
					      $(".product_s").css("display","block");
					    }
					     }); 
					});
					$(function (){
						$("input[name=product_s]").click(function (){
					  //	 $(".product_b").toggle();
					    var check1 = $("input[name=product_b]").is(":checked")
					    var check2 = $("input[name=product_s]").is(":checked")
					    if(check1==true&&check2== true){
					      $("input[name=product_all]").prop("checked",true)
					      $(".product_s").css("display","block");
					    }
					     }); 
					});
					$(function (){
						$("input[name=product_all]").click(function (){
					  //	 $(".product_b").toggle();
					    var check1 = $("input[name=product_b]").is(":checked")
					    var check2 = $("input[name=product_s]").is(":checked")
					    var checkall = $("input[name=product_all]").is(":checked")
					    if(checkall== true){
					      $(".product_s").css("display","block");
					      $(".product_b").css("display","block");
					      $("input[name=product_b]").prop("checked",true)
					      $("input[name=product_s]").prop("checked",true)
					    }else if(checkall ==false){
					      $(".product_s").css("display","none");
					      $(".product_b").css("display","none");
					      $("input[name=product_b]").prop("checked",false)
					      $("input[name=product_s]").prop("checked",false)
					    }
					
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
    </script>
</body>
</html>