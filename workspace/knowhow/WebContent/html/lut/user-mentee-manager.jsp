<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>know-how</title>
<link rel="shortcut icon" type="image/x-icon" href="./images/logo-favicon.ico" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/lut/user-mentee-manager.css">
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
                        <div class="side-top-margin"></div>
                        <span class="mouseOnEffect">
                            <div id="middle-box-site-shortcut-bar" class="side-bar">
                                <div class="icon-gap">
                                    <img class="side-icons" alt="home" src="./images/home-icon.png">
                                </div>
                                사이트 바로가기
                            </div>
                        </span>

                        <span class="mouseOnEffect">
                            <div id="middle-box-dashBoard-bar" class="side-bar">
                                <div class="icon-gap">
                                    <img class="side-icons" alt="dash-board" src="./images/dashBoard-icon.png">
                                </div>
                                대시보드
                            </div>
                        </span>
                    
                        <button type="button" class="collapsible" onclick="collapse(this);">
                            <div class="icon-gap">
                                <img class="side-icons" alt="user" src="./images/user-icon.png">
                            </div>
                            회원관리
                        </button>
                        <div class="content">
                            <p>멘토 목록</p>
                            <p>멘티 목록</p>
                        </div>

                        <span class="mouseOnEffect">
                            <div id="middle-box-dashBoard-bar" class="side-bar">
                                <div class="icon-gap">
                                    <img class="side-icons" alt="resume" src="./images/resume.png">
                                </div>
                                이력서 관리
                            </div>
                        </span>

                        <button type="button" class="collapsible" onclick="collapse(this);">
                            <div class="icon-gap">
                                <img class="side-icons" alt="ask-answer" src="./images/ask-answer-icon2.png">
                            </div>
                            질문 답변 관리
                        </button>
                        <div class="content">
                            <p>멘티 질문글 목록</p>
                            <p>멘토 답변글 목록</p>
                            <p>댓글 목록</p>
                        </div>

                        <button type="button" class="collapsible" onclick="collapse(this);">
                            <div class="icon-gap">
                                <img class="side-icons" alt="ask-board" src="./images/ask-board-icon.png">
                            </div>
                            문의 게시판 관리
                        </button>
                        <div class="content">
                            <p>문의 목록</p>
                            <p>문의 처리</p>
                        </div>

                        <span class="mouseOnEffect">
                            <div id="middle-box-dashBoard-bar" class="side-bar">
                                <div class="icon-gap">
                                    <img class="side-icons" alt="resume" src="./images/banner-icon.png">
                                </div>
                                배너 관리
                            </div>
                        </span>
                        

                    </div>
                </div>
            </div>
        </div>
               
        <div id="right-side" class="container">
            <div class="right-header">
                <div class="letter-space"></div>
                회원 관리 
                <h1 id="clock" style="color:black;">clock</h1>
                <img  class="admin-profile" src="https://whatsondisneyplus.com/wp-content/uploads/2021/09/bart-.png"> 
                <p class="admin-name">관리자</p>
                <p class="name-logout-space">ㅣ</p>
                <button class="admin-logout" type="submit" value="">LOGOUT</button>
            </div>
            <div class="right-body">
                <div class="user-list-letter">
                    <p>멘티 목록</p>
                </div>

                <div class="user-list-contents">
                    <div class="member-input-wrap">
                        <div class="member-delete-button-wrap">
                            <input class="member-delete-button" type="submit" value="회원 탈퇴">
                        </div>

                        <div class="member-search-wrap">
                            <div class="search-border">
                                <img id="search-icon" alt="search" src="./images/search-icon.png">
                                <input class="member-search" type="text" placeholder="멘티 검색">
                            </div>
                        </div>
                    </div>

                    <div class="total-mentor">
                        <p>총 멘티 수</p>
                        <p class="total-mentor-num">3</p>
                    </div>

                    <div class="checkbox-group">
                        <div class="mentor-list-header">
                            <div class="checkbox-zip">
                                <input type="checkbox" id="check-all" class="all" value="all">
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
                                질문글
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
                                <input type="checkbox" id="check1" class="normal" value="">
                            </div>
                            <div class="user-num">
                                9
                            </div>
                            <div class="user-role">
                                멘티
                            </div>
                            <div class="user-name">
                                김정표
                            </div>
                            <div class="user-email">
                                kimjeongpyo123@google.com
                            </div>
                            <div class="user-reply">
                                0
                            </div>
                            <div class="user-comment">
                                0
                            </div>
                            <div class="user-join-day">
                                2023-02-21
                            </div>
                        </div>



                        <div class="page-button-box">
                            <input class="page-button" type="submit" value="1">
                        </div>
                    </div>
                </div>
            </div>
        </div>        
    </div>
</body>
    
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script src="${pageContext.request.contextPath}/js/lut/know-how.js"></script>
</html>