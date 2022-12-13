<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="utf-8">
  <title>GALLERY</title>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/reset.css"/>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/lightbox.css">  
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/Login_pop.css"/>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/Gallery.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script><!--jquery 3.6 ����-->
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
                    <li><a href="<%= request.getContextPath() %>/About/About_us.do">ī��Ұ�</a>
                        <div class="sub">
                            <ul>
                                <li><a href="<%= request.getContextPath() %>/About/About_us.do">Time stay</a></li>
                                <li><a href="<%= request.getContextPath() %>/About/Location.do">���ô� ��</a></li>
                                <li><a href="<%= request.getContextPath() %>/About/Gallery.do">������</a></li>
                            </ul>
                        </div>
                    </li>
                    <li><a href="#">��  ��</a>
                        <div class="sub">
                            <ul>
                                <li><a href="${pageContext.request.contextPath}/Product/ProductDessert.do">����</a></li>
                                <li><a href="${pageContext.request.contextPath}/Product/ProductDrink.do">����</a></li>
                                <li><a href="${pageContext.request.contextPath}/Product/ProductFood.do">����</a></li>
                                <li><a href="${pageContext.request.contextPath}/Product/ProductCoffeeBean.do">����</a></li>
                            </ul>
                        </div>
                    </li>
                    <li><a href="#">EVENT</a>
                        <div class="sub">
                            <ul>
                                <li><a href="#">������ �̺�Ʈ</a></li>
                                <li><a href="#">����� �̺�Ʈ</a></li>
                                <li><a href="#"></a></li>
                            </ul>
                        </div>
                    </li>
                    <li><a href="<%=request.getContextPath()%>/Board/BoardNotice.do">��������</a>
                        <div class="sub">
                            <ul>
                                <li><a href="<%=request.getContextPath()%>/Board/BoardNotice.do">��������</a></li>
                                <li><a href="<%=request.getContextPath()%>/Board/BoardFaq.do">���� ���� ����</a></li>
                                <li><a href="<%=request.getContextPath()%>/Board/BoardQna.do">1:1 ���� �Խ���</a></li>
                                <li><a href="#">īī���� ����</a></li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>            
        </nav>    
    
  		<c:if test= "${login==null}">
	  		<ul class="navbar_links">
	 			<li><a href="#" onclick="return false;" id="modal_btn">�α���</a></li>  		    
	            <li><a href="<%=request.getContextPath()%>/MyPage/MyPageShoppingCart.do">��ٱ���</a></li>
	            <li><a href="#">������</a></li>
	        </ul>
        </c:if>
     	<c:if test ="${login!=null}">
	        <ul class="navbar_links" style="width:330px;">
	            <li><a href="<%=request.getContextPath()%>/Member/logout.do" style="padding:0 4px">�α׾ƿ�</a></li>
	            <li><a href="#" style="padding:0 4px">����������</a></li>
	            <li><a href="#" style="padding:0 4px">��ٱ���</a></li>
	            <li><a href="#" style="padding:0 4px">������</a></li>
	        </ul>
  		</c:if>  
        
    </header>
    <main>       
        <div class="gallery">        
            <h3>GALLERY</h3>
            <section class="inside" >            
                <h4>���׸���</h4>
                <div class="view view1" >
                    <a class="example-image-link" href="${pageContext.request.contextPath}/resources/images/ī�䳻��1.jpg" data-lightbox="example-set" data-title="�̹��� �¿����� ȭ��ǥ�� ������ �̹����� �Ѿ�ϴ�"><img class="example-image" src="${pageContext.request.contextPath}/resources/images/ī�䳻��1.jpg" alt=""/></a>
                </div>
                <div class="view view2" >
                    <a class="example-image-link" href="${pageContext.request.contextPath}/resources/images/ī�䳻��2.jpg" data-lightbox="example-set" data-title="�̹��� �¿����� ȭ��ǥ�� ������ �̹����� �Ѿ�ϴ�"><img class="example-image" src="${pageContext.request.contextPath}/resources/images/ī�䳻��2.jpg" alt="" /></a>
                </div>
                <div class="view view3">
                    <a class="example-image-link" href="${pageContext.request.contextPath}/resources/images/ī�䳻��3.jpg" data-lightbox="example-set" data-title="�̹��� �¿����� ȭ��ǥ�� ������ �̹����� �Ѿ�ϴ�"><img class="example-image" src="${pageContext.request.contextPath}/resources/images/ī�䳻��3.jpg" alt="" /></a>
                </div>
                <div class="view view4">
                    <a class="example-image-link" href="${pageContext.request.contextPath}/resources/images/ī�䳻��4.jpg" data-lightbox="example-set" data-title="�̹��� �¿����� ȭ��ǥ�� ������ �̹����� �Ѿ�ϴ�"><img class="example-image" src="${pageContext.request.contextPath}/resources/images/ī�䳻��4.jpg" alt="" /></a>
                </div>
                <div class="view view5">
                    <a class="example-image-link" href="${pageContext.request.contextPath}/resources/images/ī�䳻��5.jpg" data-lightbox="example-set" data-title="�̹��� �¿����� ȭ��ǥ�� ������ �̹����� �Ѿ�ϴ�"><img class="example-image" src="${pageContext.request.contextPath}/resources/images/ī�䳻��5.jpg" alt="" /></a>
                </div>
                <div class="view view6">
                    <a class="example-image-link" href="${pageContext.request.contextPath}/resources/images/ī�䳻��6.jpg" data-lightbox="example-set" data-title="�̹��� �¿����� ȭ��ǥ�� ������ �̹����� �Ѿ�ϴ�"><img class="example-image" src="${pageContext.request.contextPath}/resources/images/ī�䳻��6.jpg" alt="" /></a>
                </div>
                <div class="view view7">
                    <a class="example-image-link" href="${pageContext.request.contextPath}/resources/images/ī�����1.jpg" data-lightbox="example-set" data-title="�̹��� �¿����� ȭ��ǥ�� ������ �̹����� �Ѿ�ϴ�"><img class="example-image" src="${pageContext.request.contextPath}/resources/images/ī�����1.jpg" alt="" /></a>
                </div>
            </section><!--.inside-->        
            <section class="outside">            
                <h4>ī������</h4>
                <div class="view view8">
                    <a class="example-image-link" href="${pageContext.request.contextPath}/resources/images/ī�����2.jpg" data-lightbox="example-set" data-title="�̹��� �¿����� ȭ��ǥ�� ������ �̹����� �Ѿ�ϴ�"><img class="example-image" src="${pageContext.request.contextPath}/resources/images/ī�����2.jpg" alt=""/></a>
                </div>
                <div class="view view9">
                    <a class="example-image-link" href="${pageContext.request.contextPath}/resources/images/ī�����3.jpg" data-lightbox="example-set" data-title="�̹��� �¿����� ȭ��ǥ�� ������ �̹����� �Ѿ�ϴ�"><img class="example-image" src="${pageContext.request.contextPath}/resources/images/ī�����3.jpg" alt="" /></a>
                </div>
                <div class="view view10">
                    <a class="example-image-link" href="${pageContext.request.contextPath}/resources/images/ī�����4.jpg" data-lightbox="example-set" data-title="�̹��� �¿����� ȭ��ǥ�� ������ �̹����� �Ѿ�ϴ�"><img class="example-image" src="${pageContext.request.contextPath}/resources/images/ī�����4.jpg" alt="" /></a>
                </div>
                <div class="view view11">
                    <a class="example-image-link" href="${pageContext.request.contextPath}/resources/images/ī�����5.jpg" data-lightbox="example-set" data-title="�̹��� �¿����� ȭ��ǥ�� ������ �̹����� �Ѿ�ϴ�"><img class="example-image" src="${pageContext.request.contextPath}/resources/images/ī�����5.jpg" alt="" /></a>
                </div>
                <div class="view view12">
                    <a class="example-image-link" href="${pageContext.request.contextPath}/resources/images/ī�����6.jpg" data-lightbox="example-set" data-title="�̹��� �¿����� ȭ��ǥ�� ������ �̹����� �Ѿ�ϴ�"><img class="example-image" src="${pageContext.request.contextPath}/resources/images/ī�����6.jpg" alt="" /></a>
                </div>
                <div class="view view13">
                    <a class="example-image-link" href="${pageContext.request.contextPath}/resources/images/ī�����7.jpg" data-lightbox="example-set" data-title="�̹��� �¿����� ȭ��ǥ�� ������ �̹����� �Ѿ�ϴ�"><img class="example-image" src="${pageContext.request.contextPath}/resources/images/ī�����7.jpg" alt="" /></a>
                </div>
            </section><!--.outside-->
            <section class="food">            
                <h4>�޴�����</h4>
                <div class="view view14">
                    <a class="example-image-link" href="${pageContext.request.contextPath}/resources/images/��������5.jpg" data-lightbox="example-set" data-title="�̹��� �¿����� ȭ��ǥ�� ������ �̹����� �Ѿ�ϴ�"><img class="example-image" src="${pageContext.request.contextPath}/resources/images/��������5.jpg" alt=""/></a>
                </div>
                <div class="view view15">
                    <a class="example-image-link" href="${pageContext.request.contextPath}/resources/images/��������4.jpg" data-lightbox="example-set" data-title="�̹��� �¿����� ȭ��ǥ�� ������ �̹����� �Ѿ�ϴ�"><img class="example-image" src="${pageContext.request.contextPath}/resources/images/��������4.jpg" alt="" /></a>
                </div>
                <div class="view view16">
                    <a class="example-image-link" href="${pageContext.request.contextPath}/resources/images/��������3.jpg" data-lightbox="example-set" data-title="�̹��� �¿����� ȭ��ǥ�� ������ �̹����� �Ѿ�ϴ�"><img class="example-image" src="${pageContext.request.contextPath}/resources/images/��������3.jpg" alt="" /></a>
                </div>
                <div class="view view17">
                    <a class="example-image-link" href="${pageContext.request.contextPath}/resources/images/��������2.jpg" data-lightbox="example-set" data-title="�̹��� �¿����� ȭ��ǥ�� ������ �̹����� �Ѿ�ϴ�"><img class="example-image" src="${pageContext.request.contextPath}/resources/images/��������2.jpg" alt="" /></a>
                </div>
                <div class="view view18">
                    <a class="example-image-link" href="${pageContext.request.contextPath}/resources/images/��������1.jpg" data-lightbox="example-set" data-title="�̹��� �¿����� ȭ��ǥ�� ������ �̹����� �Ѿ�ϴ�"><img class="example-image" src="${pageContext.request.contextPath}/resources/images/��������1.jpg" alt="" /></a>
                </div>
                <div class="view view19">
                    <a class="example-image-link" href="${pageContext.request.contextPath}/resources/images/�귱ġ����1.jpg" data-lightbox="example-set" data-title="�̹��� �¿����� ȭ��ǥ�� ������ �̹����� �Ѿ�ϴ�"><img class="example-image" src="${pageContext.request.contextPath}/resources/images/�귱ġ����1.jpg" alt="" /></a>
                </div>
                <div class="view view19">
                    <a class="example-image-link" href="${pageContext.request.contextPath}/resources/images/�귱ġ����2.jpg" data-lightbox="example-set" data-title="�̹��� �¿����� ȭ��ǥ�� ������ �̹����� �Ѿ�ϴ�"><img class="example-image" src="${pageContext.request.contextPath}/resources/images/�귱ġ����2.jpg" alt="" /></a>
                </div>
                <div class="view view19">
                    <a class="example-image-link" href="${pageContext.request.contextPath}/resources/images/�귱ġ����3.jpg" data-lightbox="example-set" data-title="�̹��� �¿����� ȭ��ǥ�� ������ �̹����� �Ѿ�ϴ�"><img class="example-image" src="${pageContext.request.contextPath}/resources/images/�귱ġ����3.jpg" alt="" /></a>
                </div>
            </section><!--.food-->
        </div><!--.gallery-->     
        
    </main>
    <footer>
        <div id="container">
            <div id="footer1">
                <h2>Cafe Time Stay</h2>
                <p>���θ�(��ȣ) : Cafe Time stay<br />
                    ����ڵ�Ϲ�ȣ : 123-45-67890<br />
                    �ּ� : ���� ���ֽ�<br />
                    �̸��� : cafetimestay@help.com</p>
            </div>
            <!--//footer1-->        
            <div id="footer2">
                <h2>��ǥ��ȭ : 1234-5678</h2>
                <p> �ѽ� : 063) 123 - 4567<br/>
                    ��ð� : 10:00 ~ 18:00<br/>
                    ���� �������� �޹����Դϴ�.</p>
            </div>
            <!--//footer2-->
        </div>
        <!--//container-->
    </footer>    
    <div class="black_bg"></div>
    <div class="modal_wrap">
        <div class="modal_close"><a href="#" onclick="return false;">close</a></div>
        <div class="modalContents">
            <h2>�α���</h2>
	        
	        <c:if test="${login==null }">
				
				<form action= "<%= request.getContextPath() %>/Member/login.do" method="post" id="frm">
		            <input name= "Mid" class="loginId" type="text" placeholder="���̵�"/>
		            <input name= "Mpwd" class="loginPw" type="password" placeholder="��й�ȣ"/>
		            <button class="login_btn">�α���</button>
		        </form>
		        
	            <div class="login_bottom">
	                <a href="<%= request.getContextPath() %>/Member/signup1.do">ȸ������</a> 
	                <a href="<%= request.getContextPath() %>/Member/find_ID.do">���̵� ã��</a> 
	                <a href="<%= request.getContextPath() %>/Member/find_PW.do">��й�ȣ ã��</a>
	            </div>	
	                    
	        </c:if>
	                         
        </div>
    </div>    
    <script src="${pageContext.request.contextPath}/resources/js/lightbox-plus-jquery.js"></script>
    <script>
    
	    // ��ũ�� �� header ����ȭ fade-in
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

        //�α��� �˾�â
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