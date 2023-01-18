<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>아이디 찾기</title>

  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reset.css"/>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/Login_pop.css"/>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/find_ID.css">

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
                    <li><a href="<%=request.getContextPath()%>/Board/BoardNotice.do">공지사항</a>
                        <div class="sub">
                            <ul>
                                <li><a href="<%=request.getContextPath()%>/Board/BoardNotice.do">공지사항</a></li>
                                <li><a href="<%=request.getContextPath()%>/Board/BoardFaq.do">자주 묻는 질문</a></li>
                            </ul>
                        </div>
                    </li>
                </ul>   
            </div>                     
        </nav>    
    
  		<c:if test= "${login==null}">
	  		<ul class="navbar_links">
	 			<li><a href="#" onclick="return false;" id="modal_btn">로그인</a></li>	    
	            <li><a href="<%=request.getContextPath()%>/Member/Login.do">장바구니</a></li>
	            <li><a href="<%=request.getContextPath()%>/Board/BoardFaq.do">고객센터</a></li>
	        </ul>
        </c:if>
     	<c:if test ="${login!=null}">
	        <ul class="navbar_links" style="width:330px;">
	            <li><a href="<%=request.getContextPath()%>/Member/logout.do" style="padding:0 4px">로그아웃</a></li>
	            <li><a href="<%=request.getContextPath()%>/MyPage/member_Modify.do?Mid=${Mid}" style="padding:0 4px">마이페이지</a></li>
	            <li><a href="<%=request.getContextPath()%>/Shopping/ShoppingCart.do" style="padding:0 4px">장바구니</a></li>
	            <li><a href="<%=request.getContextPath()%>/Board/BoardFaq.do" style="padding:0 4px">고객센터</a></li>
	        </ul>
  		</c:if> 
        
    </header>
    <main>
        <div class="find">         
            <div class="find_ID">  
                <h4>아이디 찾기</h4>
                <form action="find_ID.do" method="post" name="find_ID" >
                <table>
                    <tr>
                        <td><input name="Memail" class="Memail" type="text" placeholder="이메일">
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
                        <td><input name="Mname" class="Mname" type="text" placeholder="이름"></td>   
                    </tr>
                    <tr>
                    	<td class="result">
		                    <c:if test="${check == 1}">
								<script>
									alert("입력하신 정보로 가입한 아이디가 존재하지 않습니다")
								</script>
								<p>해당 정보로 가입한 아이디가 존재하지 않습니다</p>
							</c:if>
					
							<!-- 이메일과 이름이 일치할 때 -->
							<c:if test="${check == 0 }">
							<script>
								alert("입력하신 정보로 가입된 아이디는 '${Mid}' 입니다")
							</script>
								<p>해당 정보로 가입된 아이디는 <span>'${Mid}'</span> 입니다.</p>		
							</c:if>                    	
                    	</td>
                    </tr>
                    <tr>
                        <td>
                            <button id="submit" class="findId" onclick="return findId()">아이디 확인</button>
                            <input type="button" value="취소" id="cancel" onclick="location.href='<%=request.getContextPath()%>/'">
                        </td>
                    </tr>
                    
                </table> 
                </form>
                <div class="find_bottom">
                    <a href="<%= request.getContextPath() %>/Member/Login.do">로그인</a> 
                    <a href="<%= request.getContextPath() %>/Member/signup1.do">회원가입</a> 
                    <a href="<%= request.getContextPath() %>/Member/find_PW.do">비밀번호 찾기</a>
                </div> 
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


        function findId()
		{
			//아이디 확인
			if ($(".Memail").val() == ""){
				alert("이메일을 입력해주세요.");
				$(".Memail").focus();
				
				return false;
			}
			
	        //비밀번호 확인	  
	        if ($(".Mname").val() == "" ) {
				alert("이름을 입력해주세요.");
				$(".Mname").focus();
	        		        	
				return false;
			}
		}

    </script>
</body>
</html>
        
