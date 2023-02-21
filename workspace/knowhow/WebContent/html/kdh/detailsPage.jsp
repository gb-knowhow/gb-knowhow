<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>글 상세 페이지</title>
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="/jspTeamProject/image/Favi.ico"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/kdh/detailsPage.css"/>
    </head>
    <body>
        <div id="wrap" class="wrap wrap_end">
            <div class="header_wrap">
                <header></header>
                <!-- div class="header_gnb" 부분-->
                <div id="wrap" class="wrap wrap_qna">
                    <div class="nav" role="navigation">
                        <div class="nav_inner">
                            <ul class="nav_list" id="au_lnb" role="menubar">
                                <li class="menu" role="presentation">
                                    <a href="/index.naver" role="menuitem" class="item"
                                        id="au_lnb_home" tabindex="0" onclick="">
                                        <em>홈</em>
                                    </a>
                                </li>
                                <li class="menu on" role="presentation">
                                    <a href="/qna/list.naver" role="menuitem" class="item" tabindex="-1" onclick="">
                                        <em>Q&amp;A</em>
                                    </a>
                                </li>
                                <li class="menu" role="presentation">
                                    <a href="/qna/questionList.naver" role="menuitem"
                                        class="item" tabindex="-1" onclick="">
                                        <em>이용방법 및 유의사항</em>
                                    </a>
                                </li>
                                <li class="menu" role="presentation">
                                    <a href="/volunteer/index.naver" role="menuitem"
                                        class="item" tabindex="-1" onclick="">
                                        <em>문의 게시판</em>
                                    </a>
                                </li>
                            </ul>
                            <a href="#" class="nav__button_question">
                                <span class="btn_inner">
                                    <i class="icon_pencil"></i>
                                    질문하기
                                </span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- div class="header_wrap부분" -->
            <div class="container-full">
                <div class="container-full-content">
                    <!-- fotter 제외 부분 -->
                    <div class="question-content">
                        <div class="question-content-inner">
                            <div class="questionHead _questionContentsArea">
                                <div class="question_icon">
                                    <span class="blind">질문</span>
                                </div>
                                <div class="question_title">
                                    <div class="title"><img src="${pageContext.request.contextPath}/css/kdh/image/questionMark.png" style="margin-right: 3%;">
                                        퍼블리싱은 언제 끝날까요?
                                    </div>
                                </div>
                                <!-- 질문 내용 -->
                                <div class="question_content">
                                    퍼블리싱의 끝이 보이질 않아요.. <br>해도해도 늘어나는 건 기분탓이겠죠?
                                </div>
                            </div>

                            <div class="question-userinfo">
                                <div class="question-userinfo__left">
                                    <div class="question-userinfo__profile">
                                        <div class="profile-default">
                                            <div class="profile-default--inner">
                                                <span class="question_thumbnail"
                                                    style="background-image: url(https://ssl.pstatic.net/static/kin/09renewal/avatar/200x200_m_gray/public.png);"></span>
                                            </div>
                                        </div>
                                        <span class="question-userinfo__author">비공개</span>
                                    </div>
                                    <span class="question-userinfo__info">
                                        <span class="blind">
                                            작성일
                                        </span>
                                        업로드 시간 적기
                                    </span>
                                </div>
                                <div class="question-userinfo__right" role="listbox">
                                    <!-- 댓글달기 class 이름 button_comment로 쓰세요.-->
                                    <button type="button" class="button_compose button_comment" onclick="">
                                        <i class="icon icon_compose_opinion">
                                          <img src="${pageContext.request.contextPath}/css/kdh/image/comment.png"
                                            style="width: 20px; height: 20px;"></i>
                                        <span class="blind">댓글</span>
                                        <em class="questionButton_comment">댓글달기</em>
                                    </button>

                                    <!-- 답글달기 class 이름 button_reply로 쓰세요.-->
                                    <button type="button" class="button_compose button_reply" onclick="">
                                        <i class="icon icon_compose_opinion">
                                          <img src="${pageContext.request.contextPath}/css/kdh/image/reply.png"
                                            style="width: 20px; height: 20px;"></i>
                                        <em class="questionButton_reply">답글달기</em>
                                    </button>

                                    <!-- 신고하기 class 이름 button_siren으로 쓰세요.-->
                                    <button type="button" class="button_compose button_siren" onclick="">
                                        <i class="icon icon_compose_opinion">
                                          <img src="${pageContext.request.contextPath}/css/kdh/image/siren.png"
                                            style="width: 20px; height: 20px;"></i>
                                        <em class="questionButton_siren">신고하기</em>
                                    </button>
                                </div>
                            </div>
                            <!-- 본글의 댓글 c-opinion _commentListArea-->
                            <div class="c-opinion _commentListArea" id="questionCommentList" style="display: none;">
                                <h2 class="blind">댓글영역</h2>
                                <div class="question-comment">
                                    <fieldset>
                                        <legend>댓글 입력</legend>
                                        <div class="question-comment-form">
                                            <textarea class="question-comment-textarea placeholder"
                                                id="wr_1" maxlength="1000"
                                                title="댓글입력" placeholder="개인정보를 공유 및 요청하거나, 명예 훼손, 무단 광고, 불법 정보 유포시 모니터링 후 삭제될 수 있으며, 이에 대한 민형사상 책임은 게시자에게 있습니다."></textarea>
                                        </div>
                                        <div class="question-comment-upload">
                                            <div class="question-comment-count">
                                                <span class="blind">현재 입력한 글자수</span>
                                                <span id="counter" class="question-comment-count__num">0</span>
                                                /
                                                <span class="blind">전체 입력 가능한 글자수</span>
                                                <span class="question-comment-count__total">1000</span>
                                            </div>
                                            <button type="submit" class="button_register">등록</button>
                                        </div>
                                    </fieldset>
                                </div>
                                <!-- 본문의 댓글 목록들 -->
                                <div class="question-commentList">
                                    <div class="replyItem">
                                        <p class="question-commentList-nickname">
                                            <strong>댓글 작성자 닉네임</strong>
                                        </p>
                                        <div class="question-commentList-text">
                                            <p>댓글 내용</p>
                                        </div>
                                        <!-- 본문의 댓글 등록날짜 -->
                                        <p class="question-commentList-date">댓글 등록날짜</p>
                                        <div class="button_more">
                                            <a href="javascript:void(0);" class="_reportBtn"
                                                data-report-contents="%EA%B9%80%ED%98%B8%EC%A4%91+%EB%8B%98%EC%9D%98+%EC%9E%A5%EB%A5%B4%EB%B6%88%EB%AC%B8+%EB%85%B8%EB%9E%98%EC%8B%A4%EB%A0%A5%EC%97%90+%EC%99%84%EC%A0%84%EA%B9%9C%EC%A7%9D+%EB%86%80%EB%9E%AC%EB%8B%A4+%EA%B9%80%ED%98%B8%EC%A4%91%EB%8B%98%EC%9D%80+%EB%AA%85%EB%B6%88%ED%97%88%EC%A0%84+%EC%8B%A4%EB%A0%A5%EC%9D%B4%EB%8B%A4">
                                                신고
                                            </a>
                                        </div>
                                    </div>
                                    <div class="replyItem">
                                        <p class="question-commentList-nickname">
                                            <strong>
                                                <a href="/profile/index.nhn?u=g4vQc5x28j%2BdHpEJiv63JNo58ZvPKqJ6F1hiTB55qfg%3D">유저아이디</a>
                                            </strong>
                                        </p>
                                        <div class="question-commentList-text">
                                            <p>댓글내용</p>
                                        </div>
                                        <p class="question-commentList-date">작성 날짜</p>
                                        <div class="button_more">
                                            <a href="javascript:void(0);" class="_reportBtn"
                                                data-report-contents="%EA%B9%80%ED%98%B8%EC%A4%91+%EB%8C%80%ED%95%9C%EB%AF%BC%EA%B5%AD%EC%9D%B8%EC%9E%AC%EC%83%81%EC%97%90%EB%B9%9B%EB%82%98%EB%8A%94%EA%B5%AD%EB%B3%B4%EA%B8%89%ED%85%8C%EB%84%88%EB%85%B8%EB%9E%98%EC%99%80%EC%98%88%EB%8A%A5%EA%B0%90%EB%8F%84%EB%A7%8C%EC%A0%90%EC%9D%B4%EC%8B%9C%EB%84%A4%EC%9A%94">
                                                신고
                                            </a>
                                        </div>
                                    </div>
                                    <!-- 본문의 댓글이 늘어날 때마다 replyItem들이 늘어난다. -->
                                </div>
                                <!-- 본문의 댓글의 페이지 목록 -->
                                
                                <div class="paginator paginatorNumber">

                                    <a href="javascript:void(0);" class="paginator__prev _pagingBtn" data-page="10">
                                        <i class="icon_paginator_prev"></i>
                                        <span class="paginator__text">이전</span>
                                    </a>

                                    <a href="javascript:void(0);" class="paginator_num _pagingBtn1" data-page="1">
                                        <span class="paginator__num">1</span>
                                    </a>

                                    <a href="javascript:void(0);" class="paginator_num _pagingBtn1" data-page="2">
                                        <span class="paginator__num">2</span>
                                    </a>

                                    <a href="javascript:void(0);" class="paginator_num _pagingBtn1" data-page="3">
                                        <span class="paginator__num">3</span>
                                    </a>

                                    <a href="javascript:void(0);" class="paginator_num _pagingBtn1" data-page="4">
                                        <span class="paginator__num">4</span>
                                    </a>

                                    <a href="javascript:void(0);" class="paginator_num _pagingBtn1" data-page="5">
                                        <span class="paginator__num">5</span>
                                    </a>

                                    <a href="javascript:void(0);" class="paginator_num _pagingBtn1" data-page="6">
                                        <span class="paginator__num">6</span>
                                    </a>

                                    <a href="javascript:void(0);" class="paginator_num _pagingBtn1" data-page="7">
                                        <span class="paginator__num">7</span>
                                    </a>

                                    <a href="javascript:void(0);" class="paginator_num _pagingBtn1" data-page="8">
                                        <span class="paginator__num">8</span>
                                    </a>

                                    <a href="javascript:void(0);" class="paginator_num _pagingBtn1" data-page="9">
                                        <span class="paginator__num">9</span>
                                    </a>

                                    <a href="javascript:void(0);" class="paginator_num _pagingBtn1" data-page="10">
                                        <span class="paginator__num">10</span>
                                    </a>

                                    <a href="javascript:void(0);" class="paginator__next _pagingBtn" data-page="11">
                                        <span class="paginator__text">다음</span>
                                        <i class="icon_paginator_next"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- ANswerArea하기 -->
                    <div id="answerArea" class="answer-content">
                        <div class="answer-content-inner">
                            <div class="answerListFull">
                                <div class="answerOneFull">
                                    <div class="profile_card">
                                        <div class="card_inner">
                                            <div class="card_info">
                                                <div class="profile_info">
                                                    <a href="" class="name_area" onclick="">
                                                        <strong class="name">답글 단 사람 아이디</strong>
                                                    </a>
                                                    <div class="answerLikeArea">
                                                        <div class="likeCount">
                                                            <span class="like">받은 좋아요 수 ""</span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <a href="/profile/index.naver?u=IgEWIwOw%2BvqeYHdoWgaTMjDF7ls%2F9VCgLlDelkO0u%2Bs%3D"
                                                    target="_blank" class="thumbnail_area " onclick="">
                                                    <div class="thumbnail">
                                                        <img src="https://ssl.pstatic.net/static/kin/09renewal/avatar/200x200_m/4_3d.png"
                                                            alt="프로필 사진">
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 답변의 프로필 설정 끝 -->
                                    <div class="answerWrite">
                                        <div class="answerOnlyContent">
                                            <div class="answer-main-container">
                                                <div class="answer-context">
                                                    <div class="answer-textFull">
                                                        <div class="answerOnlytext">
                                                            <p class="answerTextPtag">
                                                                백엔드가 남았답니다?
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="answer-guideline">
                                                <strong class="answer-guideline-title">
                                                    <i class="icon_notice"></i>
                                                    알아두세요!
                                                </strong>
                                                <p class="answer-guideline-content">
                                                    위 답변은 답변작성자가 경험과 지식을 바탕으로 작성한 내용입니다.</p>
                                            </div>
                                            <p class="answer-date">작성 날짜</p>
                                            
                                        </div>
                                        <div class="reply-comment-click">
                                            <!-- class이름 button_reply_comment로 쓰세요. -->
                                            <button type="button" class="button_compose button_reply_comment" onclick="">
                                                <i class="icon icon_compose_opinion">
                                                  <img src="${pageContext.request.contextPath}/css/kdh/image/comment.png"
                                                    style="width: 20px; height: 20px;"></i>
                                                <span class="blind">댓글</span>
                                                <em class="questionButton_comment">댓글달기</em>
                                            </button>
                                        </div>
    
                                    </div>
                                    <div class="reply-Comment">
                                        <div class="c-opinion _commentListArea" style="display: none;"
                                            id="questionCommentList2">
                                            <h2 class="blind">댓글영역</h2>
                                            <div class="question-comment">
                                                <fieldset>
                                                    <legend>댓글 입력</legend>
                                                    <div class="question-comment-form">
                                                        <textarea class="question-comment-textarea placeholder"
                                                            id="wr_2" maxlength="1000" title="댓글입력"
                                                            placeholder="개인정보를 공유 및 요청하거나, 명예 훼손, 무단 광고, 불법 정보 유포시 모니터링 후 삭제될 수 있으며, 이에 대한 민형사상 책임은 게시자에게 있습니다."></textarea>
                                                    </div>
                                                    <div class="question-comment-upload">
                                                        <div class="question-comment-count">
                                                            <span class="blind">현재 입력한 글자수</span>
                                                            <span id="counter2" class="question-comment-count__num">0</span>
                                                            /
                                                            <span class="blind">전체 입력 가능한 글자수</span>
                                                            <span class="question-comment-count__total">1000</span>
                                                        </div>
                                                        <button type="submit" class="button_register">등록</button>
                                                    </div>
                                                </fieldset>
                                            </div>
                                            <!-- 본문의 댓글 목록들 -->
                                            <div class="question-commentList">
                                                <div class="replyItem">
                                                    <p class="question-commentList-nickname">
                                                        <strong>댓글 작성자 닉네임</strong>
                                                    </p>
                                                    <div class="question-commentList-text">
                                                        <p>댓글 내용</p>
                                                    </div>
                                                    <!-- 본문의 댓글 등록날짜 -->
                                                    <p class="question-commentList-date">댓글 등록날짜</p>
                                                    <div class="button_more">
                                                        <a href="javascript:void(0);" class="_reportBtn">
                                                            신고
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="replyItem">
                                                    <p class="question-commentList-nickname">
                                                        <strong>
                                                            <a href="/profile/index.nhn?u=g4vQc5x28j%2BdHpEJiv63JNo58ZvPKqJ6F1hiTB55qfg%3D">유저아이디</a>
                                                        </strong>
                                                    </p>
                                                    <div class="question-commentList-text">
                                                        <p>댓글내용</p>
                                                    </div>
                                                    <p class="question-commentList-date">작성 날짜</p>
                                                    <div class="button_more">
                                                        <a href="javascript:void(0);" class="_reportBtn">
                                                            신고
                                                        </a>
                                                    </div>
                                                </div>
                                                <!-- 본문의 댓글이 늘어날 때마다 replyItem들이 늘어난다. -->
                                            </div>
                                            <!-- 본문의 댓글의 페이지 목록 -->
                                            <div class="paginator paginatorNumber _pagingArea">

                                                <a href="javascript:void(0);" class="paginator__prev _pagingBtn" data-page="10">
                                                    <i class="icon_paginator_prev"></i>
                                                    <span class="paginator__text">이전</span>
                                                </a>

                                                <a href="javascript:void(0);" class="paginator_num _pagingBtn2" data-page="2">
                                                    <span class="paginator__num">1</span>
                                                </a>

                                                <a href="javascript:void(0);" class="paginator_num _pagingBtn2" data-page="2">
                                                    <span class="paginator__num">2</span>
                                                </a>

                                                <a href="javascript:void(0);" class="paginator_num _pagingBtn2" data-page="3">
                                                    <span class="paginator__num">3</span>
                                                </a>

                                                <a href="javascript:void(0);" class="paginator_num _pagingBtn2" data-page="4">
                                                    <span class="paginator__num">4</span>
                                                </a>

                                                <a href="javascript:void(0);" class="paginator_num _pagingBtn2" data-page="5">
                                                    <span class="paginator__num">5</span>
                                                </a>

                                                <a href="javascript:void(0);" class="paginator_num _pagingBtn2" data-page="6">
                                                    <span class="paginator__num">6</span>
                                                </a>

                                                <a href="javascript:void(0);" class="paginator_num _pagingBtn2" data-page="7">
                                                    <span class="paginator__num">7</span>
                                                </a>

                                                <a href="javascript:void(0);" class="paginator_num _pagingBtn2" data-page="8">
                                                    <span class="paginator__num">8</span>
                                                </a>

                                                <a href="javascript:void(0);" class="paginator_num _pagingBtn2" data-page="9">
                                                    <span class="paginator__num">9</span>
                                                </a>

                                                <a href="javascript:void(0);" class="paginator_num _pagingBtn2" data-page="10">
                                                    <span class="paginator__num">10</span>
                                                </a>

                                                <a href="javascript:void(0);" class="paginator__next _pagingBtn2" data-page="11">
                                                    <span class="paginator__text">다음</span>
                                                    <i class="icon_paginator_next"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script src="${pageContext.request.contextPath}/js/kdh/detailsPage.js"></script>
</html>
