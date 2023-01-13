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
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/Login.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/member_Modify.css">

    <script type="text/javascript" src="http://code.jquery.com/jquery-1.12.4.min.js"></script> <!--생년월일 select 박스-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script><!--jquery 3.6 적용-->    
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script><!-- 주소검색 적용 -->

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
                               	<li><a href="<%=request.getContextPath()%>/Event/EventNowEvent.do">진행중 이벤트</a></li>
                                <li><a href="<%=request.getContextPath()%>/Event/EventEndEvent.do">종료된 이벤트</a></li>
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

	            <li><a href="<%=request.getContextPath()%>/MyPage/MyPageShoppingCart.do">장바구니</a></li>
	            <li><a href="<%=request.getContextPath()%>/MyPage/MyPageOrderView.do">주문/배송조회</a></li>
	            
	            <c:if test="${ Mgrade == 'A'}">
					<li>관리자 메뉴</li>
		        	<li><a href="<%=request.getContextPath()%>/MyPage/MPMemberManage.do" style="font-weight: bold;">회원 관리</a></li>
		        	<li><a href="<%=request.getContextPath()%>/MyPage/MPProductManage.do">상품 관리</a></li>
	        	</c:if>
	        	
	            <li><a href="<%=request.getContextPath()%>/MyPage/member_Delete.do?Mid=${Mid}">회원 탈퇴</a></li>
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
	                        <td><input name="Mpwd" id="Mpwd" type="password" placeholder="현재 비밀번호를 입력하세요"><span class="result"></span></td>
	                    </tr>
	                    <tr>
	                        <td>신규 비밀번호</td>
	                        <td>
	                            <input name="NewMpwd" id="NewMpwd" type="password" placeholder="신규 비밀번호"><span class="result"></span><br>
	                            <input name="NewMPwd2" id="NewMpwd2" type="password" placeholder="비밀번호 확인"><span class="result"></span>
	                        </td>
	                    </tr>                   
	                    <tr>
	                        <td>이름</td>
	                        <td><input type="hidden" name="Mname" value="${Mname}">${Mname}</td>
	                    </tr>
	                    <tr>
	                        <td>연락처</td>
	                        <td><input id="Mphone" name="Mphone" type="text" value="${Mphone}" placeholder="연락처"><span class="result"></span>
	                        </td>
	                    </tr>	           	                    
	                    <tr>
	                        <td>이메일</td>
	                        <td><input id="Memail" name="Memail" type="text" value="${Memail}" placeholder="이메일 주소"> 
	                            <select name="email_domain">
	                                <option value="self">직접입력</option>
	                                <option value="naver">@naver.com</option>
	                                <option value="kakao">@kakao.com</option>
	                                <option value="gmail">@gmail.com</option>
	                                <option value="yahoo">@yahoo.com</option>
	                            </select><span class="result"></span>
	                        </td>
	                    </tr>
	                    <tr>
	                        <td>주소</td>
	                        <td><input type="text" id="Madd" name="Madd" value="${Madd}" placeholder="우편번호">
								<input type="button" class ="findAdd" onclick="Postcode()" value="우편번호 찾기"><span class="result"></span><br>
		                        <input type="text" id="Madd2" name="Madd2" value="${Madd2}" placeholder="주소" style="width:300px;"><span class="result"></span><br>
		                        <input type="text" id="Madd3" name="Madd3" value="${Madd3}" placeholder="상세주소" style="width:300px;"> <span class="result"></span>
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
       

        
        //비밀번호 확인
        function fnSubmit() {
			
        	//현재 비밀번호 확인
        	if ($("#Mpwd").val() == "" ) {
				$(".result").empty();
				$("#Mpwd").next().text(" 비밀번호를 입력하세요").css("color","red").css("font-size","12px");
				alert("현재 비밀번호를 입력해주세요.");
				$("#Mpwd").focus();
	        	
				//$("#NewMpwd").next().empty();
	        	//$("#NewMpwd2").next().empty();
	        	
				return false;
			}
	        
	        if ($("#Mpwd").val() != "${Mpwd}") {
				$(".result").empty();
	        	$("#Mpwd").next().text(" 불일치").css("color","red").css("font-size","12px");
	        	alert("현재 비밀번호가 일치하지 않습니다.");
	        	$("#Mpwd").focus();
	        	
				//$("#NewMpwd").next().empty();
	        	//$("#NewMpwd2").next().empty();
	        	 
	        	return false;
	        }
	        
	        if ($("#Mpwd").val() == "${Mpwd}") {
				$(".result").empty();
	        	//$("#Mpwd").next().empty();	        	 
	        }
	        
	        if ($("#NewMpwd").val() == "" && $("#NewMpwd2").val() == ""){
				$(".result").empty();
	        	//$("#NewMpwd").val($("#Mpwd").val());
	        	//$("#NewMpwd2").val($("#Mpwd").val());
	        }	
	        
	        //신규 비밀번호 확인	        
	        if ($("#NewMpwd").val() != "" && $("#NewMpwd2").val() == "") {
				$(".result").empty();
	        	$("#NewMpwd2").next().text(" 입력해주세요").css("color","red").css("font-size","12px");
	        	//$("#NewMpwd").next().empty();
	        	alert("비밀번호 확인을 입력해주세요.");
	        	$("#NewMpwd2").focus();
	        	 
	        	return false;
	        }
	        	 
	        if ($("#NewMpwd2").val() != "" && $("#NewMpwd").val() == "") {
				$(".result").empty();
	        	$("#NewMpwd").next().text(" 입력해주세요").css("color","red").css("font-size","12px");
	        	//$("#NewMpwd2").next().empty();
	        	alert("신규 비밀번호를 입력해주세요.");
	        	$("#NewMpwd").focus();
	        	 
	        	return false;
	        }
	        	 
	        if ($("#NewMpwd").val() != $("#NewMpwd2").val()) {
				$(".result").empty();
	        	$("#NewMpwd2").next().text(" 불일치").css("color","red").css("font-size","12px");
	        	//$("#NewMpwd").next().empty();
	        	alert("비밀번호 확인이 일치하지 않습니다.");
	        	$("#NewMpwd2").focus();
	        	 
	        	return false;
	        }
	        
	        if ($("#NewMpwd").val() == $("#NewMpwd2").val()) {
				$(".result").empty();
	        	//$("#NewMpwd").next().empty();
	        	//$("#NewMpwd2").next().empty();	        	
	        }
	        
        	if ($("#Mphone").val() == "" ) {
				$(".result").empty();
				$("#Mphone").next().text(" *필수").css("color","red").css("font-size","12px");
				alert("연락처를 입력해주세요.");
				$("#Mphone").focus();
	        	
				return false;
			}
	        
        	if ($("#Memail").val() == "" ) {
				$(".result").empty();
				$("#Memail").next().text(" *필수").css("color","red").css("font-size","12px");
				alert("이메일 주소를 입력해주세요.");
				$("#Memail").focus();
	        	
				return false;
			}
	        
        	if ($("#Madd").val() == "" || $("#Madd2").val() == "" || $("#Madd3").val() == "") {
				$(".result").empty();
				$(".findAdd").next().text(" *필수").css("color","red").css("font-size","12px");
				alert("주소를 모두 입력해주세요.");
				$("#Madd3").focus();
	        	
				return false;
			}

        	
	        //최종 확인 
	        if (!confirm('수정 하시겠습니까?')) {
	        	return false;
	        }        
        }
        
        //주소 검색
	    function Postcode() {
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


	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('Madd').value = data.zonecode;
	                document.getElementById("Madd2").value = addr;
	                // 커서를 상세주소 필드로 이동한다.
	                document.getElementById("Madd3").focus();
	            }
	        }).open();
	    }
    </script>
</body>
</html>