<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
 	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원 가입</title>

	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reset.css" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/signup2.css" type="text/css"/>

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
                    <li><a href="#">메 뉴</a>
                        <div class="sub">
                            <ul>
                                <li><a href="#">제과</a></li>
                                <li><a href="#">음료</a></li>
                                <li><a href="#">음식</a></li>
                                <li><a href="#">원두</a></li>
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
                                <li><a href="#">공지사항</a></li>
                                <li><a href="#">자주 묻는 질문</a></li>
                                <li><a href="#">1:1 문의 게시판</a></li>
                                <li><a href="#">카카오톡 문의</a></li>
                            </ul>
                        </div>
                    </li>
                </ul>
                </div>
                <a href="#" class="navbar_toggleBtn"><i class="fas fa-bars"></i></a>
        </nav>

        <ul class="navbar_links">
            <li><a href="<%=request.getContextPath()%>/Login/Login.do">로그인</a></li>
            <li><a href="#">장바구니</a></li>
            <li><a href="#">고객센터</a></li>
        </ul>
    </header>

    <main>
        <div id="signupstep">
            <ul>
                <li>
                    <div id="step1">
                        <div id="text">
                            <p>STEP 1</p>
                            <br />
                            <p>약관동의/본인인증</p>
                        </div>
                    </div>
                </li>

                <li>
                    <div id="step2">
                        <div id="text">
                            <p>STEP 2</p>
                            <br />
                            <p>회원정보입력</p>
                        </div>
                    </div>
                </li>

                <li>
                    <div id="step3">
                        <div id="text">
                            <p>STEP 3</p>
                            <br />
                            <p>가입완료</p>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
        <!--signupstep-->

        <h2>회원가입</h2>

        <div id="info">
            <table>
                <tr>
                    <td>
                        <input type="text" id="inputInfo" placeholder="아이디 입력"><br />
                        <p></p>
                    </td>
                </tr>

                <tr>
                    <td><input type="password" id="inputInfo" placeholder="비밀번호"></td>
                </tr>

                <tr>
                    <td><input type="password" id="inputInfo" placeholder="비밀번호 재입력"></td>
                </tr>

                <tr>
                    <td><input type="text" id="inputInfo" placeholder="이름 입력"></td>
                </tr>

                <tr>
                    <td><input type="text" id="inputInfo" placeholder="전화번호 입력"></td>
                </tr>

                <tr>
                    <td><input type="text" id="inputInfo" placeholder="주소 입력"></td>
                </tr>

                <tr>
                    <td id="radioBox">
                        <input type="radio" name="inputGender" value="w">여자
                        <input type="radio" name="inputGender" value="m">남자
                    </td>
                </tr>

                <tr>
                    <td>
                        <input type="checkbox" id="agreeCheck1">SMS 수신에 동의 합니다. <br />
                        <p>※동의 시 이용약관, 개인정보 수집 및 이용에 동의 됨을 알려드립니다.</p>
                    </td>
                </tr>
            </table>
        </div>

        <div id="agreeCheck">
            <table>
                <tr>
                    <td>내용 확인 및 전체 동의</td>
                    <td><input type="checkbox" id="agreeCheckAll"></td>
                </tr>

                <tr>
                    <td>서비스 이용약관 동의(필수)</td>
                    <td><input type="checkbox" id="agreeCheck"></td>
                </tr>

                <tr>
                    <td>개인정보 수집 및 이용 동의(필수)</td>
                    <td><input type="checkbox" id="agreeCheck"></td>
                </tr>

                <tr>
                    <td>만 14세 이상입니다.(필수)</td>
                    <td><input type="checkbox" id="agreeCheck"></td>
                </tr>
            </table>
        </div>

        <div id="btn">
            <button onclick="location.href='<%=request.getContextPath()%>/'">취소</button>
            <button onclick="location.href='<%=request.getContextPath()%>/Login/signup3.do'">회원가입</button>
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
                <p> 팩스 : 063) 123 - 4567<br />
                    운영시간 : 10:00 ~ 18:00<br />
                    매주 월요일은 휴무일입니다.</p>
            </div>
            <!--//footer2-->
        </div>
        <!--//container-->
    </footer>
</body>
</html>