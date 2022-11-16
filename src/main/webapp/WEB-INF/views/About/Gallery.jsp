<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
                    <h4><a href="../">TIME STAY</a></h4>
                </div>
                <ul>
                    <li><a href="About_us.do">ī��Ұ�</a>
                        <div class="sub">
                            <ul>
                                <li><a href="About_us.do">Time stay</a></li>
                                <li><a href="Location.do">���ô� ��</a></li>
                                <li><a href="Gallery.do">������</a></li>
                            </ul>
                        </div>
                    </li>
                    <li><a href="#">��  ��</a>
                        <div class="sub">
                            <ul>
                                <li><a href="#">����</a></li>
                                <li><a href="#">����</a></li>
                                <li><a href="#">����</a></li>
                                <li><a href="#">����</a></li>
                            </ul>
                        </div>
                    </li>
                    <li><a href="#">EVENT</a>
                        <div class="sub">
                            <ul>
                                <li><a href="#">�������� �̺�Ʈ</a></li>
                                <li><a href="#">����� �̺�Ʈ</a></li>
                                <li><a href="#"></a></li>
                            </ul>
                        </div>
                    </li>
                    <li><a href="#">��������</a>
                        <div class="sub">
                            <ul>
                                <li><a href="#">��������</a></li>
                                <li><a href="#">���� ���� ����</a></li>
                                <li><a href="#">1:1 ���� �Խ���</a></li>
                                <li><a href="#">īī���� ����</a></li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>            
        </nav>    
        <ul class="navbar_links">
            <li><a href="#" id="modal_btn" onclick="">�α���</a></li>
            <li><a href="#">��ٱ���</a></li>
            <li><a href="#">������</a></li>
        </ul>
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
                <div class="view view1">
                    <a class="example-image-link" href="${pageContext.request.contextPath}/resources/images/ī�����2.jpg" data-lightbox="example-set" data-title="�̹��� �¿����� ȭ��ǥ�� ������ �̹����� �Ѿ�ϴ�"><img class="example-image" src="${pageContext.request.contextPath}/resources/images/ī�����2.jpg" alt=""/></a>
                </div>
                <div class="view view2">
                    <a class="example-image-link" href="${pageContext.request.contextPath}/resources/images/ī�����3.jpg" data-lightbox="example-set" data-title="�̹��� �¿����� ȭ��ǥ�� ������ �̹����� �Ѿ�ϴ�"><img class="example-image" src="${pageContext.request.contextPath}/resources/images/ī�����3.jpg" alt="" /></a>
                </div>
                <div class="view view3">
                    <a class="example-image-link" href="${pageContext.request.contextPath}/resources/images/ī�����4.jpg" data-lightbox="example-set" data-title="�̹��� �¿����� ȭ��ǥ�� ������ �̹����� �Ѿ�ϴ�"><img class="example-image" src="${pageContext.request.contextPath}/resources/images/ī�����4.jpg" alt="" /></a>
                </div>
                <div class="view view3">
                    <a class="example-image-link" href="${pageContext.request.contextPath}/resources/images/ī�����5.jpg" data-lightbox="example-set" data-title="�̹��� �¿����� ȭ��ǥ�� ������ �̹����� �Ѿ�ϴ�"><img class="example-image" src="${pageContext.request.contextPath}/resources/images/ī�����5.jpg" alt="" /></a>
                </div>
                <div class="view view3">
                    <a class="example-image-link" href="${pageContext.request.contextPath}/resources/images/ī�����6.jpg" data-lightbox="example-set" data-title="�̹��� �¿����� ȭ��ǥ�� ������ �̹����� �Ѿ�ϴ�"><img class="example-image" src="${pageContext.request.contextPath}/resources/images/ī�����6.jpg" alt="" /></a>
                </div>
                <div class="view view4">
                    <a class="example-image-link" href="${pageContext.request.contextPath}/resources/images/ī�����7.jpg" data-lightbox="example-set" data-title="�̹��� �¿����� ȭ��ǥ�� ������ �̹����� �Ѿ�ϴ�"><img class="example-image" src="${pageContext.request.contextPath}/resources/images/ī�����7.jpg" alt="" /></a>
                </div>
            </section><!--.inside-->
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
        <div class="modal_close"><a href="#">close</a></div>
        <div class="modalContents">
            <h2>�α���</h2>
            <input name="id" class="loginId" type="text" placeholder="���̵�"/>
            <input name="password" class="loginPw" type="password" placeholder="��й�ȣ"/>
            <button class="login_btn">�α���</button>
            <div class="login_bottom">
                <a href="#">ȸ������</a> 
                <a href="../Login/find_ID.do">���̵� ã��</a> 
                <a href="../Login/find_PW.do">��й�ȣ ã��</a>
            </div>            
        </div>
    </div>    
    <script src="${pageContext.request.contextPath}/resources/js/lightbox-plus-jquery.js"></script>
    <script>

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