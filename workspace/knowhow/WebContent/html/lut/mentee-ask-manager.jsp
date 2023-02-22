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
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/lut/mentee-ask-manager.css">
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
                    <p>멘티 질문 목록</p>
                </div>

                <div class="user-list-contents">
                    <div class="member-input-wrap">
                        <div class="member-delete-button-wrap">
                            <input class="member-delete-button" type="submit" value="질문 삭제">
                        </div>

                        <div class="member-search-wrap">
                            <div class="search-border">
                                <img id="search-icon" alt="search" src="./images/search-icon.png">
                                <input class="member-search" type="text" placeholder="질문 검색">
                            </div>
                        </div>
                    </div>

                    <div class="total-mentor">
                        <p>전체 질문</p>
                        <p class="total-mentor-num">13</p>
                    </div>

                    <div class="checkbox-group">
                        <div class="mentor-list-header">
                            <div class="checkbox-zip">
                                <input type="checkbox" id="check-all" class="all" value="all">
                            </div>
                            <div class="ask-num">
                                질문 번호
                            </div>
                            <div class="specialization">
                                전문 분야
                            </div>
                            <div class="user-nick-name">
                                작성자
                            </div>
                            <div class="ask-title">
                                제목
                            </div>
                            <div class="ask-contents">
                                내용
                            </div>
                            <div class="answer-count">
                                답변
                            </div>
                            <div class="ask-reply-count">
                                댓글
                            </div>
                            <div class="user-ask-day">
                                작성일시
                            </div>
                            <div class="detail">
                            </div>
                        </div>

                        <!-- 여기부터 내용 -->
                        <div class="mentor-list-contents">
                            <div class="checkbox-zip">
                                <input type="checkbox" id="check1" class="normal" value="">
                            </div>
                            <div class="ask-num">
                                13
                            </div>
                            <div class="specialization">
                                기술-웹 개발
                            </div>
                            <div class="user-nick-name">
                                문돌이비전공자
                            </div>
                            <div class="ask-title">
                                비전공자의 개발자 도전
                            </div>
                            <div class="ask-contents">
                                개발자 도전 무엇부터 시작해야할까요?
                            </div>
                            <div class="answer-count">
                                0
                            </div>
                            <div class="ask-reply-count">
                                0
                            </div>
                            <div class="user-ask-day">
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
                                <input type="checkbox" id="check2" class="normal" value="">
                            </div>
                            <div class="ask-num">
                                12
                            </div>
                            <div class="specialization">
                                기술-마케팅
                            </div>
                            <div class="user-nick-name">
                                영업초보
                            </div>
                            <div class="ask-title">
                                마케팅 회사에서 요구하는 스펙
                            </div>
                            <div class="ask-contents">
                                제 스펙 좀 봐주세요
                            </div>
                            <div class="answer-count">
                                0
                            </div>
                            <div class="ask-reply-count">
                                0
                            </div>
                            <div class="user-ask-day">
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
                            <div class="ask-num">
                                11
                            </div>
                            <div class="specialization">
                                기술-디자인
                            </div>
                            <div class="user-nick-name">
                                뽀샵초보
                            </div>
                            <div class="ask-title">
                                실무에서 사용하는 포토샵 기술
                            </div>
                            <div class="ask-contents">
                                포토샵이라곤 제 사진 꾸밀때만 해봤어요
                            </div>
                            <div class="answer-count">
                                0
                            </div>
                            <div class="ask-reply-count">
                                0
                            </div>
                            <div class="user-ask-day">
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
                            <div class="ask-num">
                                10
                            </div>
                            <div class="specialization">
                                기업-네이버
                            </div>
                            <div class="user-nick-name">
                                코린이
                            </div>
                            <div class="ask-title">
                                네이버 코딩테스트 질문
                            </div>
                            <div class="ask-contents">
                                자바? 파이썬? C언어어?
                            </div>
                            <div class="answer-count">
                                0
                            </div>
                            <div class="ask-reply-count">
                                0
                            </div>
                            <div class="user-ask-day">
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
                            <div class="ask-num">
                                9
                            </div>
                            <div class="specialization">
                                기업-네이버
                            </div>
                            <div class="user-nick-name">
                                코린이
                            </div>
                            <div class="ask-title">
                                네이버 코딩테스트 질문
                            </div>
                            <div class="ask-contents">
                                자바? 파이썬? C언어어?
                            </div>
                            <div class="answer-count">
                                0
                            </div>
                            <div class="ask-reply-count">
                                0
                            </div>
                            <div class="user-ask-day">
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
                            <div class="ask-num">
                                8
                            </div>
                            <div class="specialization">
                                기업-네이버
                            </div>
                            <div class="user-nick-name">
                                코린이
                            </div>
                            <div class="ask-title">
                                네이버 코딩테스트 질문
                            </div>
                            <div class="ask-contents">
                                자바? 파이썬? C언어어?
                            </div>
                            <div class="answer-count">
                                0
                            </div>
                            <div class="ask-reply-count">
                                0
                            </div>
                            <div class="user-ask-day">
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
                            <div class="ask-num">
                                7
                            </div>
                            <div class="specialization">
                                기업-네이버
                            </div>
                            <div class="user-nick-name">
                                코린이
                            </div>
                            <div class="ask-title">
                                네이버 코딩테스트 질문
                            </div>
                            <div class="ask-contents">
                                자바? 파이썬? C언어어?
                            </div>
                            <div class="answer-count">
                                0
                            </div>
                            <div class="ask-reply-count">
                                0
                            </div>
                            <div class="user-ask-day">
                                2023-02-20
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