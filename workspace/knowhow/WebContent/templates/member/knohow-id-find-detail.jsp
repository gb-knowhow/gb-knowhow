<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>아이디 찾기</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/member/knohow-id-find-detail.css">
</head>

<body>
<header id="header">
		<jsp:include page="${pageContext.request.contextPath}/templates/main/include/header.jsp" flush="true"/>
	</header>
    <div class="wrapper">
        <div class="section">
            <div class="content">
                <div class="find-by-id">
                    <strong class="">아이디 찾기</strong>
                    <div class="form_info">
                        <div class="form-list">
                            <p class="sub-title">
                                <span class="span-text">회원정보 입력</span>
                            </p>
                            <p class="p-text">아래의 정보를 입력 후 이메일 발송 버튼을 눌러주세요.</p>
                            <div class="form-content">
                                <div class="form-name">
                                    <div class="input-form">
                                        <span class="absolute-name">이름</span>
                                        <div>
                                            <div class="">
                                                <div class="name-box">
                                                    <div class="name-input">
                                                        <div class="input-box">
                                                            <label for=""></label>
                                                            <input type="text" id="name" class="name">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="input-form">
                                        <span class="absolute-nick">닉네임</span>
                                        <div>
                                            <div class="">
                                                <div class="nick-box">
                                                    <div class="nick-input">
                                                        <div class="input-box">
                                                            <label for=""></label>
                                                            <input type="text" id="nick" class="nick-name">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-email">
                                    <div class="input-form">
                                        <span class="absolute">이메일</span>
                                        <div>
                                            <div class="">
                                                <div class="email-box">
                                                    <div class="email-input">
                                                        <div class="input-box">
                                                            <label for=""></label>
                                                            <input type="text" id="email">
                                                        </div>
                                                    </div>
                                                    <button class="email-bt">발송</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="bt">
                        <button type="button" class="back-button">취소</button>
                        <button type="button" class="complete-button">완료</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
</html>