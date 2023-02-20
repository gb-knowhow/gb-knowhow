<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>know-how</title>
<link rel="icon" href="https://kr.accounts.ikea.com/resources/kr/favicon-16x16.png " type="image/x-icon">
<link rel="shortcut icon" type="image/x-icon" href="./images/logo-favicon.ico" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/lut/user-mentor-manager.css"/>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
</head>
<body> 
    <div class="wrap">
        <div id="menu-side" class="container">
            <div id="top-box" class="menu-box">
                <img id="knowhow-logo" alt="know-how" src="./images/know-how-title.png">
            </div>
            <div id="middle-box" class="menu-box">
                <div id="wrap-middle-box">
                    <div id="middle-box-contents">
                        <div id="middle-box-site-shortcut-bar" class="side-bar">
                            <div class="icon-gap">
                                <img class="side-icons" alt="home" src="./images/home-icon.png">
                            </div>
                            사이트 바로가기
                        </div>
                        
                        <div id="middle-box-dashBoard-bar" class="side-bar">
                            <div class="icon-gap">
                                <img class="side-icons" alt="dash-board" src="./images/dashBoard-icon.png">
                            </div>
                            대시보드
                        </div>

                        <div id="middle-box-user-manage-bar" class="side-bar">
                            <div class="icon-gap">
                                <img class="side-icons" alt="user" src="./images/user-icon.png">
                            </div>
                            회원관리
                        </div> 

                        <div id="middle-box-resume-manage-bar" class="side-bar">
                            <div class="icon-gap">
                                <img class="side-icons" alt="resume" src="./images/resume.png">
                            </div>
                            이력서 관리
                        </div>

                        <div id="middle-box-qna-manage-bar" class="side-bar">
                            <div class="icon-gap">
                                <img class="side-icons" alt="ask-board" src="./images/ask-board-icon.png">
                            </div>
                            문의 게시판 관리
                        </div>

                        <div id="middle-box-ask-answer-manage-bar" class="side-bar">
                            <div class="icon-gap">
                                <img class="side-icons" alt="ask-answer" src="./images/ask-answer-icon2.png">
                            </div>
                            질문 답변 관리
                        </div>
                        
                        <div id="middle-box-banner-manage-bar" class="side-bar">
                            <div class="icon-gap">
                                <img class="side-icons" alt="banner" src="./images/banner-icon.png">
                            </div>
                            배너관리
                        </div> 

                    </div>
                </div>
                <div class="second-third-space"></div>
            </div>
            <div id="bottom-box" class="menu-box">
            </div>
        </div> 
               
        <div id="right-side" class="container">
            <div class="right-header">
                <div class="letter-space"></div>
                멘토 관리 
                <i class="fas fa-search" style="font-size:15px;"></i>
            </div>
            <div class="right-body">
                <div class="user-list-letter">
                    <p>멘토 목록</p>
                </div>

                <div class="user-list-contents">
                    <div class="member-input-wrap">
                        <div class="member-search-wrap">
                            <div class="search-border">
                                <img id="search-icon" alt="search" src="./images/search-icon.png">
                                <input class="member-search" type="text" placeholder="멘토 검색">
                            </div>
                        </div>
        
                        <div class="member-delete-button-wrap">
                            <input class="member-delete-button" type="submit" value="회원탈퇴">
                        </div>
                    </div>

                    <div class="mentor-list-header">
                        <div class="checkbox-zip">
                            <input type="checkbox" name="member" value="all">
                        </div>
                        <div class="user-num">
                            회원 번호
                        </div>
                        <div class="user-role">
                            구분
                        </div>
                        <div class="user-name">
                            이름
                        </div>
                        <div class="user-email">
                            이메일
                        </div>
                        <div class="user-reply">
                            작성한 답변
                        </div>
                        <div class="user-comment">
                            댓글
                        </div>
                        <div class="user-join-day">
                            가입일
                        </div>
                    </div>

                    <div class="mentor-list-contents">
                        <div class="checkbox-zip">
                            <input type="checkbox" name="member" value="all">
                        </div>
                        <div class="user-num">
                            4
                        </div>
                        <div class="user-role">
                            멘토
                        </div>
                        <div class="user-name">
                            정유찬
                        </div>
                        <div class="user-email">
                            JeongYuchan2222@naver.com
                        </div>
                        <div class="user-reply">
                            0
                        </div>
                        <div class="user-comment">
                            0
                        </div>
                        <div class="user-join-day">
                            2023-02-20
                        </div>
                    </div>

                    <div class="mentor-list-contents">
                        <div class="checkbox-zip">
                            <input type="checkbox" name="member" value="all">
                        </div>
                        <div class="user-num">
                            3
                        </div>
                        <div class="user-role">
                            탈퇴
                        </div>
                        <div class="user-name">
                            김정표
                        </div>
                        <div class="user-email">
                            kimjeongpyo123@naver.com
                        </div>
                        <div class="user-reply">
                            0
                        </div>
                        <div class="user-comment">
                            0
                        </div>
                        <div class="user-join-day">
                            2023-02-19
                        </div>
                    </div>

                    <div class="mentor-list-contents">
                        <div class="checkbox-zip">
                            <input type="checkbox" name="member" value="all">
                        </div>
                        <div class="user-num">
                            2
                        </div>
                        <div class="user-role">
                            멘토
                        </div>
                        <div class="user-name">
                            황현수
                        </div>
                        <div class="user-email">
                            HyunSoo3333@naver.com
                        </div>
                        <div class="user-reply">
                            0
                        </div>
                        <div class="user-comment">
                            0
                        </div>
                        <div class="user-join-day">
                            2023-02-19
                        </div>
                    </div>

                    <div class="mentor-list-contents">
                        <div class="checkbox-zip">
                            <input type="checkbox" name="member" value="all">
                        </div>
                        <div class="user-num">
                            1
                        </div>
                        <div class="user-role">
                            탈퇴
                        </div>
                        <div class="user-name">
                            김동한
                        </div>
                        <div class="user-email">
                            donghan321@google.com
                        </div>
                        <div class="user-reply">
                            0
                        </div>
                        <div class="user-comment">
                            0
                        </div>
                        <div class="user-join-day">
                            2023-02-18
                        </div>
                    </div>
                </div>
            </div>
        </div>        
    </div>
</body>
</html>