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
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/lut/dash-board-manager.css"/>
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
                대시보드
            </div>
            <div class="right-body">
                <!-- 신규 회원 -->
                <div class="user-list-contents">
                    <div class="dashboard-label">
                        <p>신규 회원</p>
                    </div>
                    <div class="mentor-list-header">
                        <div class="user-num">
                            회원 번호
                        </div>
                        <div class="user-role">
                            구분
                        </div>
                        <div class="user-name">
                            닉네임
                        </div>
                        <div class="user-email">
                            이메일
                        </div>
                        <div class="user-comment">
                            댓글
                        </div>
                        <div class="user-join-day">
                            가입일
                        </div>
                    </div>

                    <div class="mentor-list-contents">
                        <div class="user-num">
                            8
                        </div>
                        <div class="user-role">
                            멘티
                        </div>
                        <div class="user-name">
                            SoonIron12
                        </div>
                        <div class="user-email">
                            SoonCheul1234@google.com
                        </div>
                        <div class="user-comment">
                            0
                        </div>
                        <div class="user-join-day">
                            2023-02-19
                        </div>
                    </div>

                    <div class="mentor-list-contents">
                        <div class="user-num">
                            7
                        </div>
                        <div class="user-role">
                            멘티
                        </div>
                        <div class="user-name">
                            Minwoo33
                        </div>
                        <div class="user-email">
                            minwoo4321@naver.com
                        </div>
                        <div class="user-comment">
                            0
                        </div>
                        <div class="user-join-day">
                            2023-02-19
                        </div>
                    </div>

                    <div class="mentor-list-contents">
                        <div class="user-num">
                            4
                        </div>
                        <div class="user-role">
                            멘토
                        </div>
                        <div class="user-name">
                            David6666
                        </div>
                        <div class="user-email">
                            JeongYuchan2222@naver.com
                        </div>
                        <div class="user-comment">
                            0
                        </div>
                        <div class="user-join-day">
                            2023-02-19
                        </div>
                    </div>

                    <div class="mentor-list-contents">
                        <div class="user-num">
                            2
                        </div>
                        <div class="user-role">
                            멘토
                        </div>
                        <div class="user-name">
                            francine
                        </div>
                        <div class="user-email">
                            HyunSoo3333@naver.com
                        </div>
                        <div class="user-comment">
                            0
                        </div>
                        <div class="user-join-day">
                            2023-02-19
                        </div>
                    </div>
                </div>

                <!-- 문의사항 -->

                <div class="user-list-contents">
                    <div class="dashboard-label">
                        <p>대기중인 문의사항</p>
                    </div>
                    <div class="mentor-list-header">
                        <div class="qna-num">
                            No.
                        </div>
                        <div class="qna-title">
                            제목
                        </div>
                        <div class="qna-writer">
                            작성자
                        </div>
                        <div class="qna-category">
                            카테고리
                        </div>
                        <div class="qna-write-day">
                            작성 일시
                        </div>
                    </div>

                    <div class="mentor-list-contents">
                        <div class="qna-num">
                            5 
                        </div>
                        <div class="qna-title">
                            메일이 안와요
                        </div>
                        <div class="qna-writer">
                            lym3031
                        </div>
                        <div class="qna-category">
                            서비스 문의
                        </div>
                        <div class="qna-write-day">
                            2023-02-20
                        </div>
                    </div>

                    <div class="mentor-list-contents">
                        <div class="qna-num">
                            4
                        </div>
                        <div class="qna-title">
                            회원가입이 안되요!
                        </div>
                        <div class="qna-writer">
                            donghan321
                        </div>
                        <div class="qna-category">
                            서비스 문의
                        </div>
                        <div class="qna-write-day">
                            2023-02-20
                        </div>
                    </div>

                    <div class="mentor-list-contents">
                        <div class="qna-num">
                            3
                        </div>
                        <div class="qna-title">
                            배너 광고 문의드립니다.
                        </div>
                        <div class="qna-writer">
                            JeongYuchan2222
                        </div>
                        <div class="qna-category">
                            배너 이용
                        </div>
                        <div class="qna-write-day">
                            2023-02-20
                        </div>
                    </div>

                    <div class="mentor-list-contents">
                        <div class="qna-num">
                            2
                        </div>
                        <div class="qna-title">
                            이력서의 양식이 어떻게 되나요?
                        </div>
                        <div class="qna-writer">
                            francine
                        </div>
                        <div class="qna-category">
                            이력서 문의
                        </div>
                        <div class="qna-write-day">
                            2023-02-20
                        </div>
                    </div>

                    <div class="mentor-list-contents">
                        <div class="qna-num">
                            1
                        </div>
                        <div class="qna-title">
                            멘토님에게 선물을 보내고 싶습니다
                        </div>
                        <div class="qna-writer">
                            Minwoo33
                        </div>
                        <div class="qna-category">
                            서비스 이용
                        </div>
                        <div class="qna-write-day">
                            2023-02-20
                        </div>
                    </div>
                </div>

                <!-- 최근 멘티 질문글 -->
                <div class="user-list-contents">
                    <div class="dashboard-label">
                        <p>최근 멘티 질문글</p>
                    </div>
                    <div class="mentor-list-header">
                        <div class="ask-num">
                            No.
                        </div>
                        <div class="specialization">
                            전문 분야
                        </div>
                        <div class="ask-title">
                            질문 제목
                        </div>
                        <div class="writer">
                            작성자
                        </div>
                        <div class="answer">
                            답변
                        </div>
                        <div class="ask-write-day">
                            작성일시
                        </div>
                    </div>

                    <div class="mentor-list-contents">
                        <div class="ask-num">
                            5
                        </div>
                        <div class="specialization">
                            기술-웹 개발
                        </div>
                        <div class="ask-title">
                            비전공자의 개발자 도전
                        </div>
                        <div class="writer">
                            문돌이비전공자
                        </div>
                        <div class="answer">
                            0
                        </div>
                        <div class="ask-write-day">
                            2023-02-20
                        </div>
                    </div>

                    <div class="mentor-list-contents">
                        <div class="ask-num">
                            4
                        </div>
                        <div class="specialization">
                            기술-마케팅
                        </div>
                        <div class="ask-title">
                            마케팅 회사에서 요구하는 스펙
                        </div>
                        <div class="writer">
                            영업대장
                        </div>
                        <div class="answer">
                            0
                        </div>
                        <div class="ask-write-day">
                            2023-02-20
                        </div>
                    </div>

                    <div class="mentor-list-contents">
                        <div class="ask-num">
                            3
                        </div>
                        <div class="specialization">
                            기술-디자인
                        </div>
                        <div class="ask-title">
                            실무에서 사용하는 포토샵 기술
                        </div>
                        <div class="writer">
                            라거펠트
                        </div>
                        <div class="answer">
                            0
                        </div>
                        <div class="ask-write-day">
                            2023-02-20
                        </div>
                    </div>

                    <div class="mentor-list-contents">
                        <div class="ask-num">
                            2
                        </div>
                        <div class="specialization">
                            기업-네이버
                        </div>
                        <div class="ask-title">
                            네이버 코딩테스트 질문
                        </div>
                        <div class="writer">
                            코린이
                        </div>
                        <div class="answer">
                            0
                        </div>
                        <div class="ask-write-day">
                            2023-02-20
                        </div>
                    </div>

                    <div class="mentor-list-contents">
                        <div class="ask-num">
                            1
                        </div>
                        <div class="specialization">
                            기술-회계
                        </div>
                        <div class="ask-title">
                            제무재표 작성법 질문
                        </div>
                        <div class="writer">
                            Minwoo33
                        </div>
                        <div class="answer">
                            0
                        </div>
                        <div class="ask-write-day">
                            2023-02-20
                        </div>
                    </div>
                </div>

                <!-- 최근 멘토 등록 답변 -->
                <div class="user-list-contents">
                    <div class="dashboard-label">
                        <p>최근 멘토 답변</p>
                    </div>
                    <div class="mentor-list-header">
                        <div class="answer-num">
                            No.
                        </div>
                        <div class="specialization">
                            전문 분야
                        </div>
                        <div class="answer-title">
                            답변 제목
                        </div>
                        <div class="writer">
                            작성자
                        </div>
                        <div class="like-count">
                            좋아요 수
                        </div>
                        <div class="answer-write-day">
                            작성일시
                        </div>
                    </div>

                    <div class="mentor-list-contents">
                        <div class="answer-num">
                            3
                        </div>
                        <div class="specialization">
                            기술-디자인
                        </div>
                        <div class="answer-title">
                            실무 포토샵 사용방법
                        </div>
                        <div class="writer">
                            포토샵마스터
                        </div>
                        <div class="like-count">
                            0
                        </div>
                        <div class="answer-write-day">
                            2023-02-20
                        </div>
                    </div>

                    <div class="mentor-list-contents">
                        <div class="answer-num">
                            4
                        </div>
                        <div class="specialization">
                            기술-마케팅
                        </div>
                        <div class="answer-title">
                            문서작업이 중요합니다.
                        </div>
                        <div class="writer">
                            마케팅의 여왕
                        </div>
                        <div class="like-count">
                            0
                        </div>
                        <div class="answer-write-day">
                            2023-02-20
                        </div>
                    </div>

                    <div class="mentor-list-contents">
                        <div class="answer-num">
                            1
                        </div>
                        <div class="specialization">
                            기술-회계
                        </div>
                        <div class="answer-title">
                            제무재표의 종류를 말해주세요.
                        </div>
                        <div class="writer">
                            현직 회계사
                        </div>
                        <div class="like-count">
                            0
                        </div>
                        <div class="answer-write-day">
                            2023-02-20
                        </div>
                    </div>

                    <div class="mentor-list-contents">
                        <div class="answer-num">
                            5
                        </div>
                        <div class="specialization">
                            기술-웹 개발
                        </div>
                        <div class="answer-title">
                            한동석 강사님 추천드립니다.
                        </div>
                        <div class="writer">
                            벅벅코딩
                        </div>
                        <div class="like-count">
                            0
                        </div>
                        <div class="answer-write-day">
                            2023-02-20
                        </div>
                    </div>
                </div>  
            </div>
        </div>        
    </div>
</body>
</html>