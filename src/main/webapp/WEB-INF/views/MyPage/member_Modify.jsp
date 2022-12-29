<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원정보 수정</title>

  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reset.css"/>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/Login_pop.css"/>  
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/member_Modify.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/Login.css">

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
                    <li><a href="<%=request.getContextPath()%>/Board/BoardNotice.do">공지사항</a>
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
         
     	<c:if test ="${login!=null}">
	        <ul class="navbar_links" style="width:330px;">
	            <li><a href="<%=request.getContextPath()%>/Member/logout.do" style="padding:0 4px">로그아웃</a></li>
	            <li><a href="<%=request.getContextPath()%>/MyPage/member_Modify.do?Mid=${Mid}" style="padding:0 4px">마이페이지</a></li>
	            <li><a href="#" style="padding:0 4px">장바구니</a></li>
	            <li><a href="#" style="padding:0 4px">고객센터</a></li>
	        </ul>
  		</c:if>  
  		<c:if test= "${login==null}">
	  		<ul class="navbar_links">
	 			<li><a href="#" onclick="return false;" id="modal_btn">로그인</a></li>  		    
	            <li><a href="<%=request.getContextPath()%>/MyPage/MyPageShoppingCart.do">장바구니</a></li>
	            <li><a href="#">고객센터</a></li>
	        </ul>
        </c:if>
        
    </header>
    <main>
      
      <c:if test="${login==null }">
        <div class="find">   
            <div class="Login">
                <h4>로그인</h4>
				<form action= "<%= request.getContextPath() %>/Member/login.do" method="post" id="frm">
               		<table>  
                	    <tr>
                   		<td><input class="login_ID" type="text" placeholder="아이디"  name= "Mid"></td>   
                    	    </tr>
                    	    <tr>
                   		 <td><input class="login_PW" type="password" placeholder="비밀번호"   name= "Mpwd"></td><!-- name값 필드값과 동일하게 하기!! -->
                            </tr>
                    	    <tr>
                            	 <td>
                           	 <button id="submit">로그인</button>
                        	 </td>
                    	    </tr>
                	</table> 
   				</form>
	
                <div class="login_bottom">
                    <a href="<%= request.getContextPath() %>/Member/signup1.do">회원가입</a> 
                    <a href="<%= request.getContextPath() %>/Member/find_ID.do">아이디 찾기</a> 
                    <a href="<%= request.getContextPath() %>/Member/find_PW.do">비밀번호 찾기</a>
                </div>            
            </div>
            
        </div>        
      </c:if>   
      
      <c:if test="${login!=null}">
	    <div class="member_menu">
	        <p>마이 페이지</p>
	        <ul>
	            <li><a href="<%=request.getContextPath()%>/MyPage/member_Modify.do?Mid=${Mid}" style="font-weight: bold;">회원정보 수정</a></li>
	            <li><a href="<%=request.getContextPath()%>/MyPage/member_Point.do">나의 마일리지</a></li>
	            <li><a href="<%=request.getContextPath()%>/MyPage/member_QA.do">나의 문의내역</a></li>
	            <li><a href="#">장바구니</a></li>
	            <li><a href="#">주문/배송조회</a></li>
	            <li><a href="#">취소/반품내역</a></li>
	        </ul>
	    </div>
        <div class="member_modify">
            <h4>회원정보 수정</h4>
            
            <form action="member_Modify.do" method="post">
	            <div id="member_info">
	                <table>
	                    <tr>
	                        <td>아이디</td>
	                        <td><input type="hidden" name="Mid" value="${Mid}">${Mid}</td>
	                    </tr>
	                    <tr>
	                        <td>현재 비밀번호</td>
	                        <td><input name="Mpwd" id="Mpwd" type="password" placeholder="현재 비밀번호를 입력하세요"><span></span></td>
	                    </tr>
	                    <tr>
	                        <td>신규 비밀번호</td>
	                        <td>
	                            <input name="NewMpwd" id="NewMpwd" type="password" placeholder="신규 비밀번호" style="margin-bottom: 5px;"><span></span><br>
	                            <input name="NewMPwd2" id="NewMpwd2" type="password" placeholder="비밀번호 확인"><span></span>
	                        </td>
	                    </tr>                   
	                    <tr>
	                        <td>이름</td>
	                        <td><input type="hidden" name="Mname" value="${Mname}">${Mname}</td>
	                    </tr>
	                    <tr>
	                        <td>이메일</td>
	                        <td><input class="member_email" type="text" placeholder="현재이메일@naver.com"> 
	                            <select name="email_domain">
	                                <option value="self">직접입력</option>
	                                <option value="naver">@naver.com</option>
	                                <option value="daum">@daum.net</option>
	                                <option value="gmail">@gmail.com</option>
	                                <option value="kakao">@kakao.com</option>
	                                <option value="yahoo">@yahoo.com</option>
	                            </select>
	                        </td>
	                    </tr>
	                    <tr>
	                        <td>연락처</td>
	                        <td><input name="Mphone" type="text" value="${Mphone}">
	                            <button class="phone_verify">인증하기</button>
	                        </td>
	                    </tr>
	                    <tr>
	                        <td>주소</td>
	                        <td><input name="Madd" value="${Madd}" type="text" style="margin-bottom: 5px;"><button class="find_Addr">우편번호 찾기</button>
	                        <br><input class="addr2" type="text" style="width:300px;"></td>                        
	                    </tr>                    
	                    <tr>
	                        <td>생년월일</td>
	                        <td>
	                            <select name="yy" id="year"></select>년
	                            <select name="mm" id="month"></select>월
	                            <select name="dd" id="day"></select>일
	                        </td>
	                    </tr>
	                </table>
	                <div class="bottom_btn">
	                    <button id="submit" onclick="return fnSubmit();"> 수 정 </button>
	                    <button id="cancel"type="button" onclick="location.href='member_Modify.do?Mid=${Mid}'">취 소</button>
	                </div>
	
	            </div>
     		</form>
        </div>
     	</c:if>
     	
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
        
       
        //생년월일 select 박스
        $(document).ready(function(){            
            var now = new Date();
            var year = now.getFullYear();
            var mon = (now.getMonth() + 1) > 9 ? ''+(now.getMonth() + 1) : '0'+(now.getMonth() + 1); 
            var day = (now.getDate()) > 9 ? ''+(now.getDate()) : '0'+(now.getDate());           
            //년도 selectbox만들기               
            for(var i = 1900 ; i <= year ; i++) {
                $('#year').append('<option value="' + i + '">' + i + '년</option>');    
            }

            // 월별 selectbox 만들기            
            for(var i=1; i <= 12; i++) {
                var mm = i > 9 ? i : "0"+i ;            
                $('#month').append('<option value="' + mm + '">' + mm + '월</option>');    
            }
            
            // 일별 selectbox 만들기
            for(var i=1; i <= 31; i++) {
                var dd = i > 9 ? i : "0"+i ;            
                $('#day').append('<option value="' + dd + '">' + dd+ '일</option>');    
            }
            $("#year  > option[value="+year+"]").attr("selected", "true");        
            $("#month  > option[value="+mon+"]").attr("selected", "true");    
            $("#day  > option[value="+day+"]").attr("selected", "true");       
        
        });
        
        //비밀번호 확인
        function fnSubmit() {
			
        	//현재 비밀번호 확인
        	if ($("#Mpwd").val() == "" ) {
				alert("현재 비밀번호를 입력해주세요.");
				$("#Mpwd").next().text(" 비밀번호를 입력하세요").css("color","red").css("font-size","12px");
				$("#Mpwd").focus();
	        	
				$("#NewMpwd").next().empty();
	        	$("#NewMpwd2").next().empty();
	        	
				return false;
			}
	        
	        if ($("#Mpwd").val() != "${Mpwd}") {
	        	alert("현재 비밀번호가 일치하지 않습니다.");
	        	$("#Mpwd").next().text(" 불일치").css("color","red").css("font-size","12px");
	        	$("#Mpwd").focus();
	        	
				$("#NewMpwd").next().empty();
	        	$("#NewMpwd2").next().empty();
	        	 
	        	return false;
	        }
	        
	        if ($("#Mpwd").val() == "${Mpwd}") {
	        	$("#Mpwd").next().empty();	        	 
	        }
	        
	        if ($("#NewMpwd").val() == "" && $("#NewMpwd2").val() == ""){
	        	$("#NewMpwd").val($("#Mpwd").val());
	        	$("#NewMpwd2").val($("#Mpwd").val());
	        }	
	        
	        //신규 비밀번호 확인	        
	        if ($("#NewMpwd").val() != "" && $("#NewMpwd2").val() == "") {
	        	$("#NewMpwd2").next().text(" 입력해주세요").css("color","red").css("font-size","12px");
	        	$("#NewMpwd").next().empty();
	        	alert("비밀번호 확인을 입력해주세요.");
	        	$("#NewMpwd2").focus();
	        	 
	        	return false;
	        }
	        	 
	        if ($("#NewMpwd2").val() != "" && $("#NewMpwd").val() == "") {
	        	$("#NewMpwd").next().text(" 입력해주세요").css("color","red").css("font-size","12px");
	        	$("#NewMpwd2").next().empty();
	        	alert("신규 비밀번호를 입력해주세요.");
	        	$("#NewMpwd").focus();
	        	 
	        	return false;
	        }
	        	 
	        if ($("#NewMpwd").val() != $("#NewMpwd2").val()) {
	        	$("#NewMpwd2").next().text(" 불일치").css("color","red").css("font-size","12px");
	        	$("#NewMpwd").next().empty();
	        	alert("비밀번호 확인이 일치하지 않습니다.");
	        	$("#NewMpwd2").focus();
	        	 
	        	return false;
	        }
	        
	        if ($("#NewMpwd").val() == $("#NewMpwd2").val()) {
	        	$("#NewMpwd").next().empty();
	        	$("#NewMpwd2").next().empty();	        	
	        }
	        
	        //최종 확인 
	        if (!confirm('수정 하시겠습니까?')) {
	        	return false;
	        }        
        }
    </script>
</body>
</html>