<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>비밀번호 찾기</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/member/knohow-password-find.css">
</head>
<body>
<header id="header">
		<jsp:include page="${pageContext.request.contextPath}/templates/main/include/header.jsp" flush="true"/>
	</header>
    <div class="wrapper">
        <div class="section">
            <div class="content">
                <div class="find-by-id">
                    <strong class="">비밀번호 찾기</strong>
                    <form action="findMyPasswordAction.member">
                        <div class="form_info">
                            <div class="form-list">
                                <p class="sub-title">
                                    <span class="span-text">회원정보 입력</span>
                                </p>
                                <p class="p-text">아래의 정보를 입력 후 이메일 발송 버튼을 눌러주세요.</p>
                                <div class="form-content">
                                    <div class="form-email">
                                        <div class="input-form">
                                            <span class="absolute">아이디</span>
                                            <div>
                                                <div class="">
                                                    <div class="email-box">
                                                        <div class="email-input">
                                                            <div class="input-box">
                                                                <label for=""></label>
                                                                <input type="text" id="id" name="memberIdentification">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="err-id"></div>
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
                                                                <input type="text" id="email" name="memberEmail">
                                                            </div>
                                                        </div>
                                                        <button class="email-bt" type="submit">발송</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <span class="inquiry">
                        <input type="checkbox" class="checkbox" id="ck">
                        <label for="ck">
                            <i class="icon-checkbox" style="display: none;"></i>
                            <span class="text-label" style="display: none;">
                                입력한 정보는 엑스퍼트 및 네이버 서비스내 프로필 공개를 목적으로 하며,
                            </span>
                        </label>
                    </span>
                    <div class="bt">
                        <button type="button" onclick="location.href='${pageContext.request.contextPath}/login.member'" class="back-button">취소</button>
                        <button type="submit" class="complete-button">완료</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
  </form>
</body>
<script src="${pageContext.request.contextPath}/static/js/member/knohow-password-find-detail.js"></script>
</html>