<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>know-how</title>
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/templates/admin/images/logo-favicon.ico" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/admin/QnA-manager.css">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
</head>
<body> 
    <div class="wrap">
        <div id="menu-side" class="container">
            <div id="top-box" class="menu-box">
                <img id="knowhow-logo" alt="know-how" src="${pageContext.request.contextPath}/templates/admin/images/know-how-title.png">
            </div>
            <div id="middle-box" class="menu-box">
                <div id="wrap-middle-box">
                    <div id="middle-box-contents">
                        <div class="side-top-margin"></div>
                        <span class="mouseOnEffect">
                            <div id="middle-box-site-shortcut-bar" class="side-bar">
                                <div class="icon-gap">
                                    <img class="side-icons" alt="home" src="${pageContext.request.contextPath}/templates/admin/images/home-icon.png">
                                </div>
                                사이트 바로가기
                            </div>
                        </span>

                        <span class="mouseOnEffect">
                            <div id="middle-box-dashBoard-bar" class="side-bar">
                                <div class="icon-gap">
                                    <img class="side-icons" alt="dash-board" src="${pageContext.request.contextPath}/templates/admin/images/dashBoard-icon.png">
                                </div>
                                대시보드
                            </div>
                        </span>
                    
                        <button type="button" class="collapsible" onclick="collapse(this);">
                            <div class="icon-gap">
                                <img class="side-icons" alt="user" src="${pageContext.request.contextPath}/templates/admin/images/user-icon.png">
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
                                    <img class="side-icons" alt="resume" src="${pageContext.request.contextPath}/templates/admin/images/resume.png">
                                </div>
                                이력서 관리
                            </div>
                        </span>

                        <button type="button" class="collapsible" onclick="collapse(this);">
                            <div class="icon-gap">
                                <img class="side-icons" alt="ask-answer" src="${pageContext.request.contextPath}/templates/admin/images/ask-answer-icon2.png">
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
                                    <img class="side-icons" alt="resume" src="${pageContext.request.contextPath}/templates/admin/images/ask-board-icon.png">
                                </div>
                                문의 게시판 관리
                            </div>
                        </span>

                        <span class="mouseOnEffect">
                            <div id="middle-box-dashBoard-bar" class="side-bar">
                                <div class="icon-gap">
                                    <img class="side-icons" alt="resume" src="${pageContext.request.contextPath}/templates/admin/images/banner-icon.png">
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
                문의 게시판 관리 
                </div>
                <h1 id="clock" style="color:black;">clock</h1>
                <img  class="admin-profile" src="${pageContext.request.contextPath}/templates/admin/images/profile-image.png"> 
                <p class="admin-name">관리자</p>
                <p class="name-logout-space">ㅣ</p>
                <button class="admin-logout" type="submit" value="">LOGOUT</button>
            </div>
            <div class="right-body">
                <div class="user-list-letter">
                    <p>문의 목록</p>
                </div>

                <div class="user-list-contents">
                    <div class="member-input-wrap">
                        <div class="watch-all-ask">
                            <input class="watch-all-ask-button" type="submit" value="전체보기">
                        </div>
                        <div class="watch-waiting-ask">
                            <input class="watch-waiting-ask-button" type="submit" value="대기 문의 보기">
                        </div>
                        <div class="member-delete-button-wrap">
                            <input class="member-delete-button" type="submit" value="선택 삭제">
                        </div>

                        <div class="member-search-wrap">
                            <div class="search-border">
                                <img id="search-icon" alt="search" src="${pageContext.request.contextPath}/templates/admin/images/search-icon.png">
                                <input class="member-search" type="text" placeholder="문의 검색">
                            </div>
                        </div>
                    </div>

                    <div class="total-mentor">
                        <p>전체 문의</p>
                        <p class="total-mentor-num">15</p>
                    </div>

                    <div class="checkbox-group">
                        <div class="mentor-list-header">
                            <div class="checkbox-zip">
                                <input type="checkbox" id="check-all" class="all" value="all">
                            </div>
                            <div class="qna-num">
                                문의 번호
                            </div>
                            <div class="category">
                                카테고리
                            </div>
                            <div class="qna-title">
                                제목
                            </div>
                            <div class="user-nick-name">
                                작성자
                            </div>
                            <div class="qna-ask-day">
                                작성일시
                            </div>
                            <div class="qna-answer-day">
                                답변일시
                            </div>
                            <div class="qna-status">
                                진행 상태
                            </div>
                            <div class="detail">
                                답변하기
                            </div>
                        </div>

                        <!-- 여기부터 내용 -->
                        <div class="mentor-list-contents">
                            <div class="checkbox-zip">
                                <input type="checkbox" id="check1" class="normal" value="">
                            </div>
                            <div class="qna-num">
                                15
                            </div>
                            <div class="category">
                                서비스 문의
                            </div>
                            <div class="qna-title">
                                메일이 안와요
                            </div>
                            <div class="user-nick-name">
                                벅벅코딩
                            </div>
                            <div class="qna-ask-day">
                                2023-02-22 16:42:39
                            </div>
                            <div class="qna-answer-day">
                                -
                            </div>
                            <div class="qna-status qna-status-false">
                                답변 대기중
                            </div>
                            <div class="detail">
                                <button class="detail-button modal7" type="submit">
                                    <img class="detail-icon" src="${pageContext.request.contextPath}/templates/admin/images/edit-icon.png">
                                </button>
                            </div>
                            <div id="my_modal7" class="my_modal" >
                                <a class="modal_close_btn">✖</a>
                                <div class="comment-writer">작성자: 벅벅코딩</div>
                                <div class="comment-title">제목: 메일이 안와요</div>
                                <div class="comment-detail">
                                    메일이 안와요메일이 안와요메일이 안와요메일이 안와요메일이 안와요
                                    메일이 안와요메일이 안와요메일이 안와요메일이 안와요메일이 안와요
                                    메일이 안와요메일이 안와요메일이 안와요메일이 안와요메일이 안와요
                                    메일이 안와요메일이 안와요메일이 안와요메일이 안와요메일이 안와요
                                    메일이 안와요메일이 안와요메일이 안와요메일이 안와요메일이 안와요
                                    메일이 안와요메일이 안와요메일이 안와요메일이 안와요메일이 안와요
                                    메일이 안와요메일이 안와요메일이 안와요메일이 안와요메일이 안와요
                                    메일이 안와요메일이 안와요메일이 안와요메일이 안와요메일이 안와요
                                </div>
                                <div class="qna-manage">
                                    <p><textarea class="write-section" cols="82" rows="10"></textarea></p>
                                    <input class="qna-submit-btn" type="submit" value="전송하기">
                                </div>
                            </div>
                        </div>

                        <div class="mentor-list-contents">
                            <div class="checkbox-zip">
                                <input type="checkbox" id="check2" class="normal" value="">
                            </div>
                            <div class="qna-num">
                                14
                            </div>
                            <div class="category">
                                서비스 문의
                            </div>
                            <div class="qna-title">
                                회원가입이 안됩니다
                            </div>
                            <div class="user-nick-name">
                                벅벅코딩
                            </div>
                            <div class="qna-ask-day">
                                2023-02-22 10:28:31
                            </div>
                            <div class="qna-answer-day">
                                -
                            </div>
                            <div class="qna-status qna-status-false">
                                답변 대기중
                            </div>
                            <div class="detail">
                                <button class="detail-button modal6" type="submit">
                                    <img class="detail-icon" src="${pageContext.request.contextPath}/templates/admin/images/edit-icon.png">
                                </button>
                            </div>
                            <div id="my_modal6" class="my_modal" >
                                <a class="modal_close_btn">✖</a>
                                <div class="comment-writer">작성자: 벅벅코딩</div>
                                <div class="comment-title">제목: 메일이 안와요</div>
                                <div class="comment-detail">
                                    메일이 안와요메일이 안와요메일이 안와요메일이 안와요메일이 안와요
                                    메일이 안와요메일이 안와요메일이 안와요메일이 안와요메일이 안와요
                                    메일이 안와요메일이 안와요메일이 안와요메일이 안와요메일이 안와요
                                    메일이 안와요메일이 안와요메일이 안와요메일이 안와요메일이 안와요
                                    메일이 안와요메일이 안와요메일이 안와요메일이 안와요메일이 안와요
                                    메일이 안와요메일이 안와요메일이 안와요메일이 안와요메일이 안와요
                                    메일이 안와요메일이 안와요메일이 안와요메일이 안와요메일이 안와요
                                    메일이 안와요메일이 안와요메일이 안와요메일이 안와요메일이 안와요
                                </div>
                                <div class="qna-manage">
                                    <p><textarea class="write-section" cols="82" rows="10"></textarea></p>
                                    <input class="qna-submit-btn" type="submit" value="전송하기">
                                </div>
                            </div>
                        </div>

                        <div class="mentor-list-contents">
                            <div class="checkbox-zip">
                                <input type="checkbox" id="check3" class="normal" value="">
                            </div>
                            <div class="qna-num">
                                13
                            </div>
                            <div class="category">
                                배너 이용
                            </div>
                            <div class="qna-title">
                                배너 광고 문의드립니다.
                            </div>
                            <div class="user-nick-name">
                                네이버 마케팅팀
                            </div>
                            <div class="qna-ask-day">
                                2023-02-23 14:54:21
                            </div>
                            <div class="qna-answer-day">
                                2023-02-23 19:41:31
                            </div>
                            <div class="qna-status qna-status-true">
                                답변완료
                            </div>
                            <div class="detail">
                                <button class="detail-button modal5" type="submit">
                                    <img class="detail-icon" src="${pageContext.request.contextPath}/templates/admin/images/edit-icon.png">
                                </button>
                            </div>
                            <div id="my_modal5" class="my_modal" >
                                <a class="modal_close_btn">✖</a>
                                <div class="comment-writer">작성자: 벅벅코딩</div>
                                <div class="comment-title">제목: 메일이 안와요</div>
                                <div class="comment-detail">
                                    메일이 안와요메일이 안와요메일이 안와요메일이 안와요메일이 안와요
                                    메일이 안와요메일이 안와요메일이 안와요메일이 안와요메일이 안와요
                                    메일이 안와요메일이 안와요메일이 안와요메일이 안와요메일이 안와요
                                    메일이 안와요메일이 안와요메일이 안와요메일이 안와요메일이 안와요
                                    메일이 안와요메일이 안와요메일이 안와요메일이 안와요메일이 안와요
                                    메일이 안와요메일이 안와요메일이 안와요메일이 안와요메일이 안와요
                                    메일이 안와요메일이 안와요메일이 안와요메일이 안와요메일이 안와요
                                    메일이 안와요메일이 안와요메일이 안와요메일이 안와요메일이 안와요
                                </div>
                                <div class="qna-manage">
                                    <p><textarea class="write-section" cols="82" rows="10"></textarea></p>
                                    <input class="qna-submit-btn" type="submit" value="전송하기">
                                </div>
                            </div>
                        </div>

                        <div class="mentor-list-contents">
                            <div class="checkbox-zip">
                                <input type="checkbox" id="check4" class="normal" value="">
                            </div>
                            <div class="qna-num">
                                12
                            </div>
                            <div class="category">
                                배너 이용
                            </div>
                            <div class="qna-title">
                                배너 광고 문의드립니다.
                            </div>
                            <div class="user-nick-name">
                                네이버 마케팅팀
                            </div>
                            <div class="qna-ask-day">
                                2023-02-23 14:54:21
                            </div>
                            <div class="qna-answer-day">
                                2023-02-23 19:41:31
                            </div>
                            <div class="qna-status qna-status-true">
                                답변완료
                            </div>
                            <div class="detail">
                                <button class="detail-button modal4" type="submit">
                                    <img class="detail-icon" src="${pageContext.request.contextPath}/templates/admin/images/edit-icon.png">
                                </button>
                            </div>
                            <div id="my_modal4" class="my_modal" >
                                <a class="modal_close_btn">✖</a>
                                <div class="comment-writer">작성자: 벅벅코딩</div>
                                <div class="comment-title">제목: 메일이 안와요</div>
                                <div class="comment-detail">
                                    메일이 안와요메일이 안와요메일이 안와요메일이 안와요메일이 안와요
                                    메일이 안와요메일이 안와요메일이 안와요메일이 안와요메일이 안와요
                                    메일이 안와요메일이 안와요메일이 안와요메일이 안와요메일이 안와요
                                    메일이 안와요메일이 안와요메일이 안와요메일이 안와요메일이 안와요
                                    메일이 안와요메일이 안와요메일이 안와요메일이 안와요메일이 안와요
                                    메일이 안와요메일이 안와요메일이 안와요메일이 안와요메일이 안와요
                                    메일이 안와요메일이 안와요메일이 안와요메일이 안와요메일이 안와요
                                    메일이 안와요메일이 안와요메일이 안와요메일이 안와요메일이 안와요
                                </div>
                                <div class="qna-manage">
                                    <p><textarea class="write-section" cols="82" rows="10"></textarea></p>
                                    <input class="qna-submit-btn" type="submit" value="전송하기">
                                </div>
                            </div>
                        </div>

                        <div class="mentor-list-contents">
                            <div class="checkbox-zip">
                                <input type="checkbox" id="check4" class="normal" value="">
                            </div>
                            <div class="qna-num">
                                11
                            </div>
                            <div class="category">
                                배너 이용
                            </div>
                            <div class="qna-title">
                                배너 광고 문의드립니다.
                            </div>
                            <div class="user-nick-name">
                                네이버 마케팅팀
                            </div>
                            <div class="qna-ask-day">
                                2023-02-23 14:54:21
                            </div>
                            <div class="qna-answer-day">
                                2023-02-23 19:41:31
                            </div>
                            <div class="qna-status qna-status-true">
                                답변완료
                            </div>
                            <div class="detail">
                                <button class="detail-button modal3" type="submit">
                                    <img class="detail-icon" src="${pageContext.request.contextPath}/templates/admin/images/edit-icon.png">
                                </button>
                            </div>
                            <div id="my_modal3" class="my_modal" >
                                <a class="modal_close_btn">✖</a>
                                <div class="comment-writer">작성자: 벅벅코딩</div>
                                <div class="comment-title">제목: 메일이 안와요</div>
                                <div class="comment-detail">
                                    메일이 안와요메일이 안와요메일이 안와요메일이 안와요메일이 안와요
                                    메일이 안와요메일이 안와요메일이 안와요메일이 안와요메일이 안와요
                                    메일이 안와요메일이 안와요메일이 안와요메일이 안와요메일이 안와요
                                    메일이 안와요메일이 안와요메일이 안와요메일이 안와요메일이 안와요
                                    메일이 안와요메일이 안와요메일이 안와요메일이 안와요메일이 안와요
                                    메일이 안와요메일이 안와요메일이 안와요메일이 안와요메일이 안와요
                                    메일이 안와요메일이 안와요메일이 안와요메일이 안와요메일이 안와요
                                    메일이 안와요메일이 안와요메일이 안와요메일이 안와요메일이 안와요
                                </div>
                                <div class="qna-manage">
                                    <p><textarea class="write-section" cols="82" rows="10"></textarea></p>
                                    <input class="qna-submit-btn" type="submit" value="전송하기">
                                </div>
                            </div>
                        </div>

                        <div class="mentor-list-contents">
                            <div class="checkbox-zip">
                                <input type="checkbox" id="check4" class="normal" value="">
                            </div>
                            <div class="qna-num">
                                10
                            </div>
                            <div class="category">
                                배너 이용
                            </div>
                            <div class="qna-title">
                                배너 광고 문의드립니다.
                            </div>
                            <div class="user-nick-name">
                                네이버 마케팅팀
                            </div>
                            <div class="qna-ask-day">
                                2023-02-23 14:54:21
                            </div>
                            <div class="qna-answer-day">
                                2023-02-23 19:41:31
                            </div>
                            <div class="qna-status qna-status-true">
                                답변완료
                            </div>
                            <div class="detail">
                                <button class="detail-button modal7" type="submit">
                                    <img class="detail-icon" src="${pageContext.request.contextPath}/templates/admin/images/edit-icon.png">
                                </button>
                            </div>
                            <div id="my_modal7" class="my_modal" >
                                <a class="modal_close_btn">✖</a>
                                <div class="comment-writer">작성자: 벅벅코딩</div>
                                <div class="comment-title">제목: 메일이 안와요</div>
                                <div class="comment-detail">
                                    메일이 안와요메일이 안와요메일이 안와요메일이 안와요메일이 안와요
                                    메일이 안와요메일이 안와요메일이 안와요메일이 안와요메일이 안와요
                                    메일이 안와요메일이 안와요메일이 안와요메일이 안와요메일이 안와요
                                    메일이 안와요메일이 안와요메일이 안와요메일이 안와요메일이 안와요
                                    메일이 안와요메일이 안와요메일이 안와요메일이 안와요메일이 안와요
                                    메일이 안와요메일이 안와요메일이 안와요메일이 안와요메일이 안와요
                                    메일이 안와요메일이 안와요메일이 안와요메일이 안와요메일이 안와요
                                    메일이 안와요메일이 안와요메일이 안와요메일이 안와요메일이 안와요
                                </div>
                                <div class="qna-manage">
                                    <p><textarea class="write-section" cols="82" rows="10"></textarea></p>
                                    <input class="qna-submit-btn" type="submit" value="전송하기">
                                </div>
                            </div>
                        </div>

                        <div class="mentor-list-contents">
                            <div class="checkbox-zip">
                                <input type="checkbox" id="check4" class="normal" value="">
                            </div>
                            <div class="qna-num">
                                9
                            </div>
                            <div class="category">
                                배너 이용
                            </div>
                            <div class="qna-title">
                                배너 광고 문의드립니다.
                            </div>
                            <div class="user-nick-name">
                                네이버 마케팅팀
                            </div>
                            <div class="qna-ask-day">
                                2023-02-23 14:54:21
                            </div>
                            <div class="qna-answer-day">
                                2023-02-23 19:41:31
                            </div>
                            <div class="qna-status qna-status-true">
                                답변완료
                            </div>
                            <div class="detail">
                                <button class="detail-button modal2" type="submit">
                                    <img class="detail-icon" src="${pageContext.request.contextPath}/templates/admin/images/edit-icon.png">
                                </button>
                            </div>
                            <div id="my_modal2" class="my_modal" >
                                <a class="modal_close_btn">✖</a>
                                <div class="comment-writer">작성자: 벅벅코딩</div>
                                <div class="comment-title">제목: 메일이 안와요</div>
                                <div class="comment-detail">
                                    메일이 안와요메일이 안와요메일이 안와요메일이 안와요메일이 안와요
                                    메일이 안와요메일이 안와요메일이 안와요메일이 안와요메일이 안와요
                                    메일이 안와요메일이 안와요메일이 안와요메일이 안와요메일이 안와요
                                    메일이 안와요메일이 안와요메일이 안와요메일이 안와요메일이 안와요
                                    메일이 안와요메일이 안와요메일이 안와요메일이 안와요메일이 안와요
                                    메일이 안와요메일이 안와요메일이 안와요메일이 안와요메일이 안와요
                                    메일이 안와요메일이 안와요메일이 안와요메일이 안와요메일이 안와요
                                    메일이 안와요메일이 안와요메일이 안와요메일이 안와요메일이 안와요
                                </div>
                                <div class="qna-manage">
                                    <p><textarea class="write-section" cols="82" rows="10"></textarea></p>
                                    <input class="qna-submit-btn" type="submit" value="전송하기">
                                </div>
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
<script src="${pageContext.request.contextPath}/static/js/admin/know-how.js"></script>
</html>