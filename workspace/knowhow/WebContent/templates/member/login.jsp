<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="knohow-login.css">
    <link rel="shortcut icon" sizes="114x114" type="image/x-icon" href="knohow.jpeg">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/member/login.css"/>
    <title>노하우 : 로그인</title>
</head>
<body>
    <div id="wrap">
        <!-- 헤더 -->
      <header>
            <div id="header-center">
                <a href="#" class="logo">
                    <h1 id="blind"></h1>
                </a>
            </div>
        </header> 
        <!-- 컨텐츠 -->
        <content>
            <div id="login-wrap">
                <ul id="menu-wrap">
                    <li class="menu-item">
                        <a href="#none" class="login-menu-a-tag" id="login-menu1">
                            <span class="menu-text-wrap" id="id-login-wrapper">
                                <span class="menu-text" id="id-login">
                                    ID 로그인
                                </span>
                            </span>
                        </a>
                    </li>
                </ul>
                <ul id="login-box-wrap">
                    <li id="login-box">
                        <div id="whole-box-wrapper">
                            <div id="id-password-input-wrapper">
                                <div id="id-input-wrapper" style="border-bottom-width: 0.1em;">
                                    <div class="icon-wrapper">
                                        <span id="icon-id"></span>
                                    </div>
                                    <input type="text" id="input-id" placeholder="아이디">
                                </div>
                                <div id="password-input-wrapper">
                                    <div class="icon-wrapper">
                                        <span id="icon-password"></span>
                                    </div>
                                    <input type="password" id="input-password" placeholder="비밀번호">
                                </div>
                            </div>
                            <!-- 아이디 패스워드 인풋 끝 -->
                            <div id="login-keep-wrap">
                                <div id="login-keep">
                                    <input type="checkbox" id="check-login-keep" value="off">
                                    <label for="keep" class="login-keep-text">로그인 상태 유지</label>
                                </div>
                            </div>
                            <!-- login-keep-wrap 끝 -->
                            <div class="login-btn-wrapper">
                                <button type="" id="login-btn">
                                    <span id="btn-text">로그인</span>
                                </button>
                            </div>
                        </div>
                    </li>
                </ul>
                <form action="" id="login-form">

                </form>
            </div>
            <!-- login wrap 끝 -->
            <!-- login under -->
            <ul id="login-wrapper-under">
                <li class="lists" id="under-list1"><a class="a-in-list" href="https://nid.naver.com/user2/help/pwInquiry?lang=ko_KR">비밀번호 찾기</a></li>
                <li class="lists" id="under-list2"><a class="a-in-list" href="https://nid.naver.com/user2/help/idInquiry?lang=ko_KR">아이디 찾기</a></li>
                <li class="lists" id="under-list3"><a class="a-in-list" href="https://nid.naver.com/user2/V2Join?m=agree&lang=ko_KR">회원가입</a></li>
            </ul>
        </content>
        <div id="img-wrapper">
            <img id="image" src="https://ssl.pstatic.net/melona/libs/1378/1378592/64373f585914b1080d81_20230127152242027.jpg" alt="">
        </div>
        <!-- 푸터 -->
        <footer>
            <div id="footer-inner">
                <ul id="footer-link">
                    <li class="footer-item"><a href=""><span class="text" id="under-list5">이용약관</span></a></li>
                    <li class="footer-item"><a href=""><span class="text" id="under-list6"><strong>개인정보처리방침</strong></span></a></li>
                    <li class="footer-item"><a href=""><span class="text" id="under-list7">책임의 한계와 법적고지</span></a></li>
                    <li class="footer-item"><a href=""><span class="text" id="under-list8">회원정보 고객센터</span></a></li>
                </ul>
                <div id="footer-bottom">
                    <a href="" id="footer-naver-logo">
                        <span id="footer-logo"></span>
                    </a>
                    <span id="footer-text">Copyright</span>
                    <span id="corp">© KNOHOW Corp.</span>
                    <span id="text">All Rights Reserved.</span>
                </div>
            </div>
        </footer>
    </div>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js">
</script>
</html>