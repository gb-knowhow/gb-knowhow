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
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/lut/resume-manager.css">
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
                이력서 관리 
                </div>
                <h1 id="clock" style="color:black;">clock</h1>
                <img  class="admin-profile" src="https://whatsondisneyplus.com/wp-content/uploads/2021/09/bart-.png"> 
                <p class="admin-name">관리자</p>
                <p class="name-logout-space">ㅣ</p>
                <button class="admin-logout" type="submit" value="">LOGOUT</button>
            </div>
            <div class="right-body">
                <div class="user-list-letter">
                    <p>이력서 목록</p>
                </div>

                <div class="user-list-contents">
                    <div class="member-input-wrap">
                        <div class="member-delete-button-wrap">
                            <input class="member-delete-button" type="submit" value="삭제">
                        </div>

                        <div class="member-search-wrap">
                            <div class="search-border">
                                <img id="search-icon" alt="search" src="./images/search-icon.png">
                                <input class="member-search" type="text" placeholder="이력서 검색">
                            </div>
                        </div>
                    </div>

                    <div class="total-mentor">
                        <p>전체 이력서</p>
                        <p class="total-mentor-num">21</p>
                    </div>

                    <div class="checkbox-group">
                        <div class="mentor-list-header">
                            <div class="checkbox-zip">
                                <input type="checkbox" id="check-all" class="all" value="all">
                            </div>
                            <div class="resume-num">
                                이력서 번호
                            </div>
                            <div class="mentor-name">
                                이름
                            </div>
                            <div class="mentor-job">
                                직업
                            </div>
                            <div class="resume-file">
                                이력서 파일
                            </div>
                            <div class="download">
                                다운로드
                            </div>
                            <div class="register-date">
                                등록일시
                            </div>
                        </div>

                        <!-- 여기부터 내용 -->
                        <div class="mentor-list-contents">
                            <div class="checkbox-zip">
                                <input type="checkbox" id="check1" class="normal" value="">
                            </div>
                            <div class="resume-num">
                                21
                            </div>
                            <div class="mentor-name">
                                김동한
                            </div>
                            <div class="mentor-job">
                                의사
                            </div>
                            <div class="resume-file">
                                김동한.docs
                            </div>
                            <div class="download">
                                <button class="download-button" type="submit">
                                    <img class="download-icon" src="./images/download-icon.png">
                                </button>
                            </div>
                            <div class="register-date">
                                2023-02-23 14:52:13
                            </div>
                        </div>

                        <div class="mentor-list-contents">
                            <div class="checkbox-zip">
                                <input type="checkbox" id="check2" class="normal" value="">
                            </div>
                            <div class="resume-num">
                                20
                            </div>
                            <div class="mentor-name">
                                김정표
                            </div>
                            <div class="mentor-job">
                                파이터
                            </div>
                            <div class="resume-file">
                                김정표-이력서.txt
                            </div>
                            <div class="download">
                                <button class="download-button" type="submit">
                                    <img class="download-icon" src="./images/download-icon.png">
                                </button>
                            </div>
                            <div class="register-date">
                                2023-02-23 18:14:32
                            </div>
                        </div>

                        <div class="mentor-list-contents">
                            <div class="checkbox-zip">
                                <input type="checkbox" id="check3" class="normal" value="">
                            </div>
                            <div class="resume-num">
                                19
                            </div>
                            <div class="mentor-name">
                                황현수
                            </div>
                            <div class="mentor-job">
                                변호사
                            </div>
                            <div class="resume-file">
                                황현수-이력서.docs
                            </div>
                            <div class="download">
                                <button class="download-button" type="submit">
                                    <img class="download-icon" src="./images/download-icon.png">
                                </button>
                            </div>
                            <div class="register-date">
                                2023-02-23 23:22:32
                            </div>
                        </div>

                        <div class="mentor-list-contents">
                            <div class="checkbox-zip">
                                <input type="checkbox" id="check4" class="normal" value="">
                            </div>
                            <div class="resume-num">
                                18
                            </div>
                            <div class="mentor-name">
                                정유찬
                            </div>
                            <div class="mentor-job">
                                개발자
                            </div>
                            <div class="resume-file">
                                정유찬-이력서.docs
                            </div>
                            <div class="download">
                                <button class="download-button" type="submit">
                                    <img class="download-icon" src="./images/download-icon.png">
                                </button>
                            </div>
                            <div class="register-date">
                                2023-02-23 23:22:32
                            </div>
                        </div>

                        <div class="mentor-list-contents">
                            <div class="checkbox-zip">
                                <input type="checkbox" id="check4" class="normal" value="">
                            </div>
                            <div class="resume-num">
                                17
                            </div>
                            <div class="mentor-name">
                                임의택
                            </div>
                            <div class="mentor-job">
                                회계사
                            </div>
                            <div class="resume-file">
                                이력서_임의택.docs
                            </div>
                            <div class="download">
                                <button class="download-button" type="submit">
                                    <img class="download-icon" src="./images/download-icon.png">
                                </button>
                            </div>
                            <div class="register-date">
                                2023-02-23 23:22:32
                            </div>
                        </div>

                        <div class="mentor-list-contents">
                            <div class="checkbox-zip">
                                <input type="checkbox" id="check4" class="normal" value="">
                            </div>
                            <div class="resume-num">
                                16
                            </div>
                            <div class="mentor-name">
                                정지영
                            </div>
                            <div class="mentor-job">
                                디자이너
                            </div>
                            <div class="resume-file">
                                예술인_정지영.hwp
                            </div>
                            <div class="download">
                                <button class="download-button" type="submit">
                                    <img class="download-icon" src="./images/download-icon.png">
                                </button>
                            </div>
                            <div class="register-date">
                                2023-02-23 23:22:32
                            </div>
                        </div>

                        <div class="mentor-list-contents">
                            <div class="checkbox-zip">
                                <input type="checkbox" id="check4" class="normal" value="">
                            </div>
                            <div class="resume-num">
                                15
                            </div>
                            <div class="mentor-name">
                                이순철
                            </div>
                            <div class="mentor-job">
                                마케터
                            </div>
                            <div class="resume-file">
                                이순철.docs
                            </div>
                            <div class="download">
                                <button class="download-button" type="submit">
                                    <img class="download-icon" src="./images/download-icon.png">
                                </button>
                            </div>
                            <div class="register-date">
                                2023-02-23 23:22:32
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