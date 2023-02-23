<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" sizes="114x114" type="image/x-icon" href="">
    <link rel="stylesheet" href="naver-find-id.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/kjp/knohow-id-find.css"/>
    <title>찾기 : 네이버</title>
</head>
<body>
	<header id="header">
		<jsp:include page="${pageContext.request.contextPath}/html/hhs/include/header.jsp" />
	</header>
    <div class="header1">
        <div class="header-logo">
            <a href="#" id="naver-logo">
                <h1 id="naver-image"><span> <img src="${pageContext.request.contextPath}/image/logo.png" class="img1"> </span></h1>
            </a>
        </div>
    </div>
    <content>
        <div id="content-wrapper">
            <div id="content-wrapper-inner">
                <div id="content-top-wrapper">
                    <div id="content-top">
                        <h2 id="title">찾으시려는 아이디 혹은 비밀번호를 선택해주세요.</h2>
                    </div>
                </div>
                <ul class="find-list">
                    <li id="list1"><button class="button-item"><span class="icon"><span id="icon1"></span></span><div class="id-text">아이디 찾기</div></button></li>
                    <li id="list2"><button class="button-item"><span class="icon"><span id="icon2"></span></span><div class="id-text">비밀번호 찾기</div></button></li>
                    <a href=""><div id="text-inside">도움말</div></a>
                    </span></div></button></li>
                </ul>
            </div>
        </div>
    </content>
    <jsp:include page="${pageContext.request.contextPath}/html/hhs/include/footer.jsp" />
</body>
</html>