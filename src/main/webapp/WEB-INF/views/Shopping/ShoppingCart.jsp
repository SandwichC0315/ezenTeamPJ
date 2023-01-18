<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@	page import="java.util.*"%>
<%@	page import="java.net.*"%>
<%@ page import="com.timestay.vo.ProductVO"%>
<%@ page import="com.timestay.vo.ProductReviewVO"%>
<%@ page import="com.timestay.vo.MemberVO"%>
<%@ page import="com.timestay.vo.ShoppingCartVO"%>
<%
	List<ShoppingCartVO> Svo = (List<ShoppingCartVO>) request.getAttribute("Svo");
%>
<%
	ShoppingCartVO SvoChecked = (ShoppingCartVO) request.getAttribute("SvoChecked");
%>
<%
	List<ProductVO> vo = (List<ProductVO>) request.getAttribute("vo");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!--jquery 3.6 적용-->
<!--//location-->
<script>
  
    </script>

<!--삭제할 상품을 선택하세요-->
<script type="text/javascript">
	    function DelChk(){
	        var select_obj = 0;//초기값 숫자 설정
	        
	        $('input[name="pidxList"]:checked').each(function(index){
	            
	            select_obj += parseInt($(this).data('value'));
	        });
            $('input[name="finalTotalSum"]').val(select_obj);
	        $(".CheckedTotalSum").html(select_obj+"원");
	        $(".CheckedTotalSum").val(select_obj);
			console.log(select_obj);
	        if(select_obj==""){
	            alert('구매할 상품을 선택하세요');
	            return;
	        }
	
	  //      location.href="? mode=cart_seldel&idx="+select_obj;
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
        
        //로그인 팝업창
//        window.onload = function() {     
//            function onClick() {
//                document.querySelector('.modal_wrap').style.display ='block';
//                document.querySelector('.black_bg').style.display ='block';
//            }   
//            function offClick() {
//                document.querySelector('.modal_wrap').style.display ='none';
//                document.querySelector('.black_bg').style.display ='none';
//            }
//        
//            document.getElementById('modal_btn').addEventListener('click', onClick);
//           document.querySelector('.modal_close').addEventListener('click', offClick);     
//        };
	</script>
<title>장바구니</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/reset.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/Login_pop.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/Login.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/MyPageshoppingCart.css"
	type="text/css" />

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!--jquery 3.6 적용-->

</head>
<body>
	<header id="header" class="deactive">

		<nav class="navbar">
			<div class="navbar_menu">
				<div id="title">
					<h4>
						<a href="<%=request.getContextPath()%>/">TIME STAY</a>
					</h4>
				</div>
				<ul>
					<li><a
						href="<%=request.getContextPath()%>/About/About_us.do">카페소개</a>
						<div class="sub">
							<ul>
								<li><a
									href="<%=request.getContextPath()%>/About/About_us.do">Time
										stay</a></li>
								<li><a
									href="<%=request.getContextPath()%>/About/Location.do">오시는
										길</a></li>
								<li><a
									href="<%=request.getContextPath()%>/About/Gallery.do">갤러리</a></li>
							</ul>
						</div></li>
					<li><a href="#">메 뉴</a>
						<div class="sub">
							<ul>
								<li><a
									href="${pageContext.request.contextPath}/Product/ProductDessert.do">제과</a></li>
								<li><a
									href="${pageContext.request.contextPath}/Product/ProductDrink.do">음료</a></li>
								<li><a
									href="${pageContext.request.contextPath}/Product/ProductFood.do">음식</a></li>
								<li><a
									href="${pageContext.request.contextPath}/Product/ProductCoffeeBean.do">원두</a></li>
							</ul>
						</div></li>
					<li><a href="#">EVENT</a>
						<div class="sub">
							<ul>
								<li><a
									href="<%=request.getContextPath()%>/Event/EventNowEvent.do">진행중
										이벤트</a></li>
								<li><a
									href="<%=request.getContextPath()%>/Event/EventEndEvent.do">종료된
										이벤트</a></li>
								<li><a href="#"></a></li>
							</ul>
						</div></li>
					<li><a href="#">공지사항</a>
						<div class="sub">
							<ul>
								<li><a
									href="<%=request.getContextPath()%>/Board/BoardNotice.do">공지사항</a></li>
								<li><a
									href="<%=request.getContextPath()%>/Board/BoardFaq.do">자주
										묻는 질문</a></li>
							</ul>
						</div></li>
				</ul>
			</div>
			<a href="#" class="navbar_toggleBtn"><i class="fas fa-bars"></i></a>
		</nav>

		<c:if test="${login==null}">
			<ul class="navbar_links">
				<li><a href="#" onclick="return false;" id="modal_btn">로그인</a></li>
				<li><a href="<%=request.getContextPath()%>/Member/Login.do">장바구니</a></li>
				<li><a href="<%=request.getContextPath()%>/Board/BoardFaq.do">고객센터</a></li>
			</ul>
		</c:if>
		<c:if test="${login!=null}">
			<ul class="navbar_links" style="width: 330px;">
				<li><a href="<%=request.getContextPath()%>/Member/logout.do"
					style="padding: 0 4px">로그아웃</a></li>
				<li><a
					href="<%=request.getContextPath()%>/MyPage/member_Modify.do?Mid=${Mid}"
					style="padding: 0 4px">마이페이지</a></li>
				<li><a
					href="<%=request.getContextPath()%>/Shopping/ShoppingCart.do"
					style="padding: 0 4px">장바구니</a></li>
				<li><a href="<%=request.getContextPath()%>/Board/BoardFaq.do" style="padding: 0 4px">고객센터</a></li>
			</ul>
		</c:if>

	</header>
	<main>

		<c:if test="${login==null }">
			<div class="find">
				<div class="Login">
					<h4>로그인</h4>
					<form action="<%=request.getContextPath()%>/Member/login.do"
						method="post" id="frm">
						<table>
							<tr>
								<td><input class="login_ID" type="text" placeholder="아이디"
									name="Mid"></td>
							</tr>
							<tr>
								<td><input class="login_PW" type="password"
									placeholder="비밀번호" name="Mpwd"></td>
								<!-- name값 필드값과 동일하게 하기!! -->
							</tr>
							<tr>
								<td>
									<button id="submit">로그인</button>
								</td>
							</tr>
						</table>
					</form>

					<div class="login_bottom">
						<a href="<%=request.getContextPath()%>/Member/signup1.do">회원가입</a>
						<a href="<%=request.getContextPath()%>/Member/find_ID.do">아이디
							찾기</a> <a href="<%=request.getContextPath()%>/Member/find_PW.do">비밀번호
							찾기</a>
					</div>
				</div>

			</div>
		</c:if>

		<c:if test="${login!=null}">

			<!--서브메뉴-->
			<nav id="lnb">
				<ul>
					<li class="on"><a
						href="<%=request.getContextPath()%>/Shopping/ShoppingCart.do">장바구니</a>
					</li>
					<br>
					<li><a
						href="<%=request.getContextPath()%>/Shopping/ShoppingOrderView.do">주문배송조회</a>
					</li>
					<br>
				</ul>
			</nav>

			<!--서브메뉴-->
			<div id="contents">
				<div class="contbox">
					<!--마이페이지-->
					<div class="location">
						<span class="tit">마이페이지</span> <span class="bar"></span> <strong>장바구니</strong>
					</div>
					<div class="cart_box">
						<form name="frm3" id="frm3">
							<input type="hidden" name="Svol"> <input type="hidden"
								name="Sidx">
						</form>
						<form name="frm4" id="frm4">
							 <input type="hidden" name="Sidx">
						</form>						
						<form
							action='${pageContext.request.contextPath}/Shopping/ShoppingCartBuy.do'
							method="post">
							<div class="table_list">
								<div class="titlebox">
									<div class="box_cell box_1">선택</div>
									<div class="box_cell box_2"></div>
									<div class="box_cell box_3 txt_left">상품정보</div>
									<div class="box_cell box_4 txt_right">판매가</div>
									<div class="box_cell box_5">구매수량</div>
									<div class="box_cell box_7">합계</div>
								</div>

								<!--list-->
								<ul>
									<c:forEach var='Svo' items='${Svo}'>
										<li class="nolist">
											<div class="box_cell box_1">
												<input onclick="DelChk();" style="margin: 0px 10px"
													name="pidxList" type="checkbox"
													data-value="${Svo.getTotalSum()}" value="${Svo.getPidx()}">
											</div>
											<div class="box_cell box_2">
												<img style="width: 100px; margin-left: 20px;"
													src="${pageContext.request.contextPath}/resources/images/${Svo.getPimage()}">
											</div>
											<div class="box_cell box_3 txt_left">${Svo.getPtitle()}</div>
											<div class="box_cell box_4 txt_right">${Svo.getPprice()}</div>
											<div class="box_cell box_5">
												<!--  	<form  name="frm2"> -->
												<input type="number" name="Svol" value="${Svo.getSvol()}" min=1 data-value="${Svo.getSidx()}" style="width: 40px; height: 20px;"> 
												<input type="hidden" name="Sidx" value="${Svo.getSidx()}">
												<br />
												<button type="button"
													onclick="modify(${Svo.getSidx()},this)"
													style="width: 60px; height: 30px; margin: 10px 20px 0 20px;">수정</button>
												<!--     </form> -->
<%-- 												<form
													action='${pageContext.request.contextPath}/Shopping/ShoppingCartDelete.do'
													method="post"> --%>
													<input type="hidden" name="Sidx" value="${Svo.getSidx()}">
													<button type="button" onclick="delList(${Svo.getSidx()})"
														style="width: 60px; height: 30px; margin: 10px 20px 0 20px;">삭제</button>
<!-- 												</form> -->
											</div>
											<div class="box_cell box_7 ">
												${Svo.getTotalSum()} <input type="hidden"
													class="ProductTotalSum" name="totalSumList"
													value="${Svo.getTotalSum()}"> <input type="hidden"
													name="Ptitle" value="${Svo.getPtitle()}"> <input
													type="hidden" name="Pimage" value="${Svo.getPimage()}">
												<input type="hidden" name="delivery" value="택배">
												<!-- 이름 , 이미지 , 배송수단 -->
											</div>
										</li>
									</c:forEach>
								</ul>
							</div>
							<div
								style="display: flex; justify-content: flex-end; align-items: center;">
								<strong class="CheckedTotalSum">0원</strong> <input
									type="hidden" class="CheckedTotalSum" name="finalTotalSum"
									value="0">
								<button  style="width: 80px; height: 30px;">결제하기</button>
								<br />
							</div>
						</form>
					</div>

					<div class="naver_paybox"></div>
				</div>
			</div>

			<div class="totalbox">
				총 주문 금액 <strong></strong> <span class="plus">+</span>배송비 <strong></strong>
			</div>
			<div class="btn_box">
				<div class="btn_left">
					<a href="#" class="a_btn">선택삭제</a>
				</div>
				<div class="btn_right">
					<span class="sbox"> <a href="#" class="shopping">계속 쇼핑하기</a>
						<a href="#" class="payment">전체주문하기</a>
					</span>
				</div>
			</div>
		</c:if>
	</main>

	<footer>
		<div id="container">
			<div id="footer1">
				<h2>Cafe Time Stay</h2>
				<p>
					법인명(상호) : Cafe Time stay<br /> 사업자등록번호 : 123-45-67890<br /> 주소 :
					전북 전주시<br /> 이메일 : cafetimestay@help.com
				</p>
			</div>
			<!--//footer1-->

			<div id="footer2">
				<h2>대표전화 : 1234-5678</h2>
				<p>
					팩스 : 063) 123 - 4567<br /> 운영시간 : 10:00 ~ 18:00<br /> 매주 월요일은
					휴무일입니다.
				</p>
			</div>
			<!--//footer2-->
		</div>
		<!--//container-->
	</footer>

	<div class="black_bg"></div>
	<div class="modal_wrap">
		<div class="modal_close">
			<a href="#" onclick="return false;">close</a>
		</div>
		<div class="modalContents">
			<h2>로그인</h2>

			<c:if test="${login==null }">

				<form action="<%=request.getContextPath()%>/Member/login.do"
					method="post" id="frm">
					<input name="Mid" class="loginId" type="text" placeholder="아이디" />
					<input name="Mpwd" class="loginPw" type="password"
						placeholder="비밀번호" />
					<button class="login_btn">로그인</button>
				</form>

				<div class="login_bottom">
					<a href="<%=request.getContextPath()%>/Member/signup1.do">회원가입</a>
					<a href="<%=request.getContextPath()%>/Member/find_ID.do">아이디
						찾기</a> <a href="<%=request.getContextPath()%>/Member/find_PW.do">비밀번호
						찾기</a>
				</div>

			</c:if>

		</div>
	</div>
	<script>

           $('input[name=Svol]').on("propertychange change keyup paste",function(){
			var Svol = $('input[name=Svol]').val();
         	 if($('input[name=Svol]').data('value')==$('input[name=Sidx]').val()){
        	   $('input[name=Svol]').val();
//          	 console.log($(this).data('value'))
//          	 $('input[name=Ridx]').val($(this).data('value'))//이 방법은ㅇ 폼태그 안에
          	//$('input[name=Rscore]').val($(input[name=Rscore]).val()) 이거때문에 모든 value 가 0으로 바뀐거고 그래서 0이 계속 들어간거고
         	 }
            })
            
	console.log($("input[name=TotalSum]").val())
	
	
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
          
           


        	
           function modify(Sidx,obj){
        	  var svolObj = $(obj).prev().prev().prev();
		       	document.frm3.action="${pageContext.request.contextPath}/Shopping/ShoppingCartModify.do"
		       	document.frm3.Svol.value=svolObj.val();
		       	document.frm3.Sidx.value=Sidx;   	
		       	document.frm3.method="post";
	      		document.frm3.submit(); 
          }
           function delList(Sidx){

 		       	document.frm4.action="${pageContext.request.contextPath}/Shopping/ShoppingCartDelete.do"
 		       	document.frm4.Sidx.value=Sidx;   	
 		       	document.frm4.method="post";
 	      		document.frm4.submit(); 
           }
           
           
           
           
           
/*           function modify(Svol,Sidx){
        	  var form =document.createElement("form");
        	  form.setAttribute("method","POST");
        	  form.setAttribute("action","${pageContext.request.contextPath}/Shopping/ShoppingCartModify.do");
        	  form.setAttribute("name","test2");
        	  var input1 =document.createElement("input");
        	  input1.setAttribute("value",Svol);
        	  input1.setAttribute("name","Svol");
        	  form.appendChild(input1);
        	  var input2 =document.createElement("input");
        	  input2.setAttribute("value",Sidx);
        	  input2.setAttribute("name","Sidx");
        	  form.appendChild(input2);
        	  console.log("test");
        	  document.test2.submit();
          } */
          
    
/*     //로그인 팝업창
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
    }; */


    </script>
</html>