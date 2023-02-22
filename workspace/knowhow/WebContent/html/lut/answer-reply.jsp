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
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/lut/answer-reply.css">
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
                            <p>- 질문글 댓글 목록</p>
                            <p>멘토 답변글 목록</p>
                            <p>- 답변글 댓글 목록</p>
                        </div>

                        <span class="mouseOnEffect">
                            <div id="middle-box-dashBoard-bar" class="side-bar">
                                <div class="icon-gap">
                                    <img class="side-icons" alt="resume" src="./images/ask-board-icon.png">
                                </div>
                                문의 게시판 관리
                            </div>
                        </span>

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
                <div class="letter-space">
                질문 답변 관리 
                </div>
                <h1 id="clock" style="color:black;">clock</h1>
                <img  class="admin-profile" src="https://whatsondisneyplus.com/wp-content/uploads/2021/09/bart-.png"> 
                <p class="admin-name">관리자</p>
                <p class="name-logout-space">ㅣ</p>
                <button class="admin-logout" type="submit" value="">LOGOUT</button>
            </div>
            <div class="right-body">
                <div class="user-list-letter">
                    <p>답변글 댓글 목록</p>
                </div>

                <div class="user-list-contents">
                    <div class="member-input-wrap">
                        <div class="member-delete-button-wrap">
                            <input class="member-delete-button" type="submit" value="댓글 삭제">
                        </div>

                        <div class="member-search-wrap">
                            <div class="search-border">
                                <img id="search-icon" alt="search" src="./images/search-icon.png">
                                <input class="member-search" type="text" placeholder="댓글 검색">
                            </div>
                        </div>
                    </div>

                    <div class="total-mentor">
                        <p>전체 댓글</p>
                        <p class="total-mentor-num">13</p>
                    </div>

                    <div class="checkbox-group">
                        <div class="mentor-list-header">
                            <div class="checkbox-zip">
                                <input type="checkbox" id="check-all" class="all" value="all">
                            </div>
                            <div class="answer-reply-num">
                                댓글 번호
                            </div>
                            <div class="answer-num">
                                답변 번호
                            </div>
                            <div class="specialization">
                                전문 분야
                            </div>
                            <div class="user-role">
                                구분
                            </div>
                            <div class="user-nick-name">
                                작성자
                            </div>
                            <div class="answer-reply-contents">
                                댓글 내용
                            </div>
                            <div class="user-answer-reply-day">
                                작성일
                            </div>
                            <div class="detail">
                            </div>
                        </div>

                        <!-- 여기부터 내용 -->
                        <div class="mentor-list-contents">
                            <div class="checkbox-zip">
                                <input type="checkbox" id="check1" class="normal" value="">
                            </div>
                            <div class="answer-reply-num">
                                9
                            </div>
                            <div class="answer-num">
                                3
                            </div>
                            <div class="specialization">
                                기술-웹개발
                            </div>
                            <div class="user-role">
                                멘토
                            </div>
                            <div class="user-nick-name">
                                벅벅코딩
                            </div>
                            <div class="answer-reply-contents">
                                웹 개발 수강은? 따즈아 한동석
                            </div>
                            <div class="user-answer-reply-day">
                                2022-02-20
                            </div>
                            <div class="detail">
                                <button class="detail-button" type="submit">
                                    <img class="detail-icon" src="./images/detail-icon.png">
                                </button>
                            </div>
                        </div>

                        <div class="mentor-list-contents">
                            <div class="checkbox-zip">
                                <input type="checkbox" id="check2" class="normal" value="">
                            </div>
                            <div class="answer-reply-num">
                                8
                            </div>
                            <div class="answer-num">
                                5
                            </div>
                            <div class="specialization">
                                기술-포토샵
                            </div>
                            <div class="user-role">
                                멘토
                            </div>
                            <div class="user-nick-name">
                                영업초보
                            </div>
                            <div class="answer-reply-contents">
                                답변 감사합니다!
                            </div>
                            <div class="user-answer-reply-day">
                                2023-02-20
                            </div>
                            <div class="detail">
                                <button class="detail-button" type="submit">
                                    <img class="detail-icon" src="./images/detail-icon.png">
                                </button>
                            </div>
                        </div>

                        <div class="mentor-list-contents">
                            <div class="checkbox-zip">
                                <input type="checkbox" id="check3" class="normal" value="">
                            </div>
                            <div class="answer-reply-num">
                                7
                            </div>
                            <div class="answer-num">
                                9
                            </div>
                            <div class="specialization">
                                기술-마케팅
                            </div>
                            <div class="user-role">
                                멘티
                            </div>
                            <div class="user-nick-name">
                                배우는자
                            </div>
                            <div class="answer-reply-contents">
                                너무 어렵네요 ㅠ
                            </div>
                            <div class="user-answer-reply-day">
                                2023-02-20
                            </div>
                            <div class="detail">
                                <button class="detail-button" type="submit">
                                    <img class="detail-icon" src="./images/detail-icon.png">
                                </button>
                            </div>
                        </div>

                        <div class="mentor-list-contents">
                            <div class="checkbox-zip">
                                <input type="checkbox" id="check4" class="normal" value="">
                            </div>
                            <div class="answer-reply-num">
                                6
                            </div>
                            <div class="answer-num">
                                3
                            </div>
                            <div class="specialization">
                                기술-회계
                            </div>
                            <div class="user-role">
                                멘티
                            </div>
                            <div class="user-nick-name">
                                회계새싹
                            </div>
                            <div class="answer-reply-contents">
                                졸려요...
                            </div>
                            <div class="user-answer-reply-day">
                                2023-02-20
                            </div>
                            <div class="detail">
                                <button class="detail-button" type="submit">
                                    <img class="detail-icon" src="./images/detail-icon.png">
                                </button>
                            </div>
                        </div>

                        <div class="mentor-list-contents">
                            <div class="checkbox-zip">
                                <input type="checkbox" id="check4" class="normal" value="">
                            </div>
                            <div class="answer-reply-num">
                                5
                            </div>
                            <div class="answer-num">
                                3
                            </div>
                            <div class="specialization">
                                기술-웹개발
                            </div>
                            <div class="user-role">
                                멘토
                            </div>
                            <div class="user-nick-name">
                                벅벅코딩
                            </div>
                            <div class="answer-reply-contents">
                                웹 개발 수강은? 따즈아 한동석
                            </div>
                            <div class="user-answer-reply-day">
                                2022-02-20
                            </div>
                            <div class="detail">
                                <button class="detail-button" type="submit">
                                    <img class="detail-icon" src="./images/detail-icon.png">
                                </button>
                            </div>
                        </div>

                        <div class="mentor-list-contents">
                            <div class="checkbox-zip">
                                <input type="checkbox" id="check4" class="normal" value="">
                            </div>
                            <div class="answer-reply-num">
                                4
                            </div>
                            <div class="answer-num">
                                3
                            </div>
                            <div class="specialization">
                                기술-웹개발
                            </div>
                            <div class="user-role">
                                멘토
                            </div>
                            <div class="user-nick-name">
                                벅벅코딩
                            </div>
                            <div class="answer-reply-contents">
                                웹 개발 수강은? 따즈아 한동석
                            </div>
                            <div class="user-answer-reply-day">
                                2022-02-20
                            </div>
                            <div class="detail">
                                <button class="detail-button" type="submit">
                                    <img class="detail-icon" src="./images/detail-icon.png">
                                </button>
                            </div>
                        </div>

                        <div class="mentor-list-contents">
                            <div class="checkbox-zip">
                                <input type="checkbox" id="check4" class="normal" value="">
                            </div>
                            <div class="answer-reply-num">
                                3
                            </div>
                            <div class="answer-num">
                                12
                            </div>
                            <div class="specialization">
                                기술-웹개발
                            </div>
                            <div class="user-role">
                                멘토
                            </div>
                            <div class="user-nick-name">
                                벅벅코딩
                            </div>
                            <div class="answer-reply-contents">
                                웹 개발 수강은? 따즈아 한동석
                            </div>
                            <div class="user-answer-reply-day">
                                2022-02-20
                            </div>
                            <div class="detail">
                                <button class="detail-button" type="submit">
                                    <img class="detail-icon" src="./images/detail-icon.png">
                                </button>
                            </div>
                        </div>

                        <div class="page-button-box">
                            <input class="page-button" type="submit" value="1">
                            <input class="page-button2" type="submit" value="2">
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