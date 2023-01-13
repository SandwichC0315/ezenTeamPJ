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
<title>진행중인 이벤트 - 1</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reset.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/EventNowDetalis.css" type="text/css"/>

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
<div id="contents">
    <div class="titleArea">
        <div class="imgArea"></div>
        <h2>
            <font color = "#333333">기획전/이벤트</font>
        </h2>
        <p>기획전/이벤트</p>
    </div>
    <p class="imgArea"></p>
  </div>

  <div class="ec-base-table typeWrite">
    <table border="1" summary>

      <caption>게시판 상세</caption>
      <colgroup>
      <col style="width: 130px;">
      <col style="width: auto;">
      <tbody>
        <tr>
          <th scope="row">제목</th>
          <td>
            <center>
              <b>
                매주 평일 월~목 진행
                <br>
                <span style="color:rgb(110, 100, 60)">오늘의 특가</span>
              </b>
            </center>
          </td>
        </tr>
        <tr>
          <td colspan="2">
            <div class="datail">
              <div class="fr-view fr-view-artice">
                <p>
                  <br>
                </p>
                <p>
                  <br>
                </p>
                <p>
                  <br>
                </p>
                <p></p>
                <center>
                  <a href="<%=request.getContextPath()%>/Event/EventNowEvent.do">
                    <img src="${pageContext.request.contextPath}/resources/Symbol/icon_event2.jpg">
                  </a>
                </center>
                <p></p>
                <p>
                  <br>
                </p>
                <p>
                  <br>
                </p>
                <p>
                  <br>
                </p>
                <p>
                  <br>
                </p>
                <p>
                  <br>
                </p>
              </div>
            </div>
          </td>
        </tr>
      </tbody>
    </table>
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

</body>
</html>