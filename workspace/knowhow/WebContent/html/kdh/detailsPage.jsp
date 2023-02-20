<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>글 상세 페이지</title>
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="/image/logo.ico" />
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
                  <a
                    href="/index.naver"
                    role="menuitem"
                    class="item"
                    id="au_lnb_home"
                    tabindex="0"
                    onclick="nhn.Kin.Utility.nClicks('LNB.home', '', '', event);"
                  >
                    <em>홈</em>
                  </a>
                </li>
                <li class="menu on" role="presentation">
                  <a
                    href="/qna/list.naver"
                    role="menuitem"
                    class="item"
                    aria-haspopup="true"
                    aria-expanded="false"
                    tabindex="-1"
                    onclick="nhn.Kin.Utility.nClicks('LNB.qna', '', '', event);"
                    aria-current="page"
                  >
                    <em>Q&amp;A</em>
                  </a>
                </li>
                <li class="menu" role="presentation">
                  <a
                    href="/qna/questionList.naver"
                    role="menuitem"
                    class="item"
                    tabindex="-1"
                    onclick="nhn.Kin.Utility.nClicks('LNB.answer', '', '', event);"
                  >
                    <em>이용방법 및 유의사항</em>
                  </a>
                </li>
                <li class="menu" role="presentation">
                  <a
                    href="/volunteer/index.naver"
                    role="menuitem"
                    class="item"
                    tabindex="-1"
                    onclick="nhn.Kin.Utility.nClicks('LNB.donation', '', '', event);"
                  >
                    <em>문의 게시판</em>
                  </a>
                </li>
              </ul>
              <a
                href="#"
                class="nav__button_question _clickcode:LNB.q"
                onclick="nhn.Kin.checkRosAndGoUrl(event, '/qna/question.naver', '');"
                role="button"
              >
                <span class="btn_inner"> <i class="sp_gnb icon_pencil"></i>질문하기</span></a
              >
            </div>
          </div>
        </div>
      </div>
      <!-- div class="header_wrap부분" -->
      <div class="container-fluid">
        <div class="container-fluid-content">
          <div class="question-content">
            <div class="question-content-inner">
              <div class="c-heading _questionContentsArea">
                <div class="c-heading__icon">
                  <i class="icon icon_common_q" aria-hidden="true"></i>
                  <span class="blind">질문</span>
                </div>
                <div class="c-heading__title">
                  <div class="c-heading__title-inner">
                    <div class="title">질문 내용</div>
                  </div>
                </div>
              </div>  

              <div class="c-userinfo">
                <div class="c-userinfo__left">
                  <div class="c-userinfo__profile _profileArea">
                    <div class="profile-default">
                      <div class="profile-default--inner">
                        <span
                          class="profile-default__thumbnail"
                          style="
                            background-image: url(https://ssl.pstatic.net/static/kin/09renewal/avatar/200x200_m_gray/public.png);
                          "
                          ><span class="blind">내 프로필 이미지</span></span
                        >
                      </div>
                    </div>
                    <span class="c-userinfo__author"><span class="blind">닉네임</span>비공개</span>
                  </div>
                  <span class="c-userinfo__info"
                    ><span class="blind">작성일</span>업로드 시간 적기</span
                  >
                </div>

                <div class="c-userinfo__right" role="listbox">
                  <!-- 댓글달기 -->
                  <button
                    type="button"
                    aria-expanded="true"
                    aria-controls="questionCommentListArea"
                    aria-selected="false"
                    id="cmtstr_0"
                    class="button_compose _commentBtn"
                    onclick="naver.kin.pc.common.nClicks('end*q.comm', '', '', event);"
                  >
                    <i class="icon icon_compose_opinion" aria-hidden="true"><img src="/image/comment.png" style="width: 20px; height: 20px;"></i>
                    <span class="blind">댓글</span>
                    <em class="button_compose_count _commentCnt">댓글달기</em>
                  </button>

                  <!-- 답글달기 -->
                  <button
                    type="button"
                    aria-expanded="true"
                    aria-controls="questionCommentListArea"
                    aria-selected="false"
                    id="cmtstr_0"
                    class="button_compose _commentBtn"
                    onclick="naver.kin.pc.common.nClicks('end*q.comm', '', '', event);"
                  >
                    <i class="icon icon_compose_opinion" aria-hidden="true"><img src="/image/reply.png" style="width: 20px; height: 20px;"></i>
                    <span class="blind">답글</span>
                    <em class="button_compose_count _commentCnt">답글달기</em>
                  </button>

                  <!-- 신고하기 -->
                  <button
                    type="button"
                    aria-pressed="false"
                    aria-selected="false"
                    id="metooWonderBtn"
                    class="button_compose is_disabled _disable _togglePopupButton"
                    onclick="naver.kin.pc.common.nClicks('end*q.metoo', '', '', event);return false;"
                  >
                    <i class="icon icon_compose_wonder" aria-hidden="true"><img src="/image/siren.png" style="width: 20px; height: 20px;"></i>
                    <span class="blind">신고하기</span>
                    <em class="button_compose_count _metooWonderCnt">신고하기</em>
                  </button>
                </div>
              </div>
              <!-- 본글의 댓글 c-opinion _commentListArea-->
              <div class="c-opinion _commentListArea" data-answer-no="0" style id="questionCommnetListArea">
                <h2 class="blind">댓글영역</h2>
                <div class="c-opinion__write">
                  <fieldset>
                    <legend>댓글 입력</legend>
                    <div class="c-opinion__write-form">
                      <textarea class="c-opinion__write-textarea placeholder" id="wr_1" maxlength="1000" title="댓글입력" placeholder="개인정보를 공유 및 요청하거나, 명예 훼손, 무단 광고, 불법 정보 유포시 모니터링 후 삭제될 수 있으며, 이에 대한 민형사상 책임은 게시자에게 있습니다."></textarea>
                    </div>
                    <div class="c-opinion__write-upload">
                      <div class="c-opinion__write-count">
                        <span class="blind">현재 입력한 글자수</span>
                        <span id="counter" class="c-opinion__write-count__num">0</span>
                        /
                        <span class="blind">전체 입력 가능한 글자수</span>
                        <span class="c-opinion__write-count__total">1000</span>
                      </div>
                      <button type="submit" class="button_register">등록</button>
                    </div>
                  </fieldset>
                </div>
                <!-- 본문의 댓글 목록들 -->
                <div class="c-opinion__list _commentList">
                  <div class="c-opinion__item">
                    <p class="c-opinion__list-nickname">
                      <strong>댓글 작성자 닉네임</strong>
                    </p>
                    <div class="c-opinion__list-text">
                      <p>댓글 내용</p>
                    </div>
                    <!-- 본문의 댓글 등록날짜 -->
                    <p class="c-opinion__list-date">댓글 등록날짜</p>
                    <div class="button_more">
                      <a href="javascript:void(0);" class="_reportBtn" data-comment-no="-86" data-answer-no="0" data-view-user-id="wjdd****" data-report-contents="%EA%B9%80%ED%98%B8%EC%A4%91+%EB%8B%98%EC%9D%98+%EC%9E%A5%EB%A5%B4%EB%B6%88%EB%AC%B8+%EB%85%B8%EB%9E%98%EC%8B%A4%EB%A0%A5%EC%97%90+%EC%99%84%EC%A0%84%EA%B9%9C%EC%A7%9D+%EB%86%80%EB%9E%AC%EB%8B%A4+%EA%B9%80%ED%98%B8%EC%A4%91%EB%8B%98%EC%9D%80+%EB%AA%85%EB%B6%88%ED%97%88%EC%A0%84+%EC%8B%A4%EB%A0%A5%EC%9D%B4%EB%8B%A4"> 신고 </a>
                    </div>
                  </div>
                  <div class="c-opinion__item">
                    <p class="c-opinion__list-nickname">
                      <strong><a href="/profile/index.nhn?u=g4vQc5x28j%2BdHpEJiv63JNo58ZvPKqJ6F1hiTB55qfg%3D">유저아이디</a></strong>
                    </p>
                    <div class="c-opinion__list-text">
                      <p>댓글내용</p>
                    </div>
                    <p class="c-opinion__list-date">작성 날짜</p>
                    <div class="button_more">
                      <a href="javascript:void(0);" class="_reportBtn" data-comment-no="-85" data-answer-no="0" data-view-user-id="agat****" data-report-contents="%EA%B9%80%ED%98%B8%EC%A4%91+%EB%8C%80%ED%95%9C%EB%AF%BC%EA%B5%AD%EC%9D%B8%EC%9E%AC%EC%83%81%EC%97%90%EB%B9%9B%EB%82%98%EB%8A%94%EA%B5%AD%EB%B3%B4%EA%B8%89%ED%85%8C%EB%84%88%EB%85%B8%EB%9E%98%EC%99%80%EC%98%88%EB%8A%A5%EA%B0%90%EB%8F%84%EB%A7%8C%EC%A0%90%EC%9D%B4%EC%8B%9C%EB%84%A4%EC%9A%94"> 신고 </a>
                    </div>
                  </div>
                  <!-- 본문의 댓글이 늘어날 때마다 c-opinion__item들이 늘어난다. -->
                </div>
                <!-- 본문의 댓글의 페이지 목록 -->
                <div class="paginator paginatorNumber _pagingArea">
	
	
                  <a href="javascript:void(0);" class="paginator__num_item _pagingBtn is-active" data-page="1">
                    <span class="paginator__num">1</span>
                  </a>
                  
                  <a href="javascript:void(0);" class="paginator__num_item _pagingBtn" data-page="2">
                    <span class="paginator__num">2</span>
                  </a>
                  
                  <a href="javascript:void(0);" class="paginator__num_item _pagingBtn" data-page="3">
                    <span class="paginator__num">3</span>
                  </a>
                  
                  <a href="javascript:void(0);" class="paginator__num_item _pagingBtn" data-page="4">
                    <span class="paginator__num">4</span>
                  </a>
                  
                  <a href="javascript:void(0);" class="paginator__num_item _pagingBtn" data-page="5">
                    <span class="paginator__num">5</span>
                  </a>
                  
                  <a href="javascript:void(0);" class="paginator__num_item _pagingBtn" data-page="6">
                    <span class="paginator__num">6</span>
                  </a>
                  
                  <a href="javascript:void(0);" class="paginator__num_item _pagingBtn" data-page="7">
                    <span class="paginator__num">7</span>
                  </a>
                  
                  <a href="javascript:void(0);" class="paginator__num_item _pagingBtn" data-page="8">
                    <span class="paginator__num">8</span>
                  </a>
                  
                  <a href="javascript:void(0);" class="paginator__num_item _pagingBtn" data-page="9">
                    <span class="paginator__num">9</span>
                  </a>
                  
                  <a href="javascript:void(0);" class="paginator__num_item _pagingBtn" data-page="10">
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
            <div class="answer-content__inner">
              <div class="c-classify c-classify-sorting"></div>
              <div class="answerListArea view-list">
                <div class="answerListArea view-list">
                  <div class="answer-content__list _answerList">
                    <!-- 답글 목록들 -->
                    <div id="answer_1" class="answer-content__item _contentWrap _answer">
                      <div class="adoptCheck"></div>
                      <a href="#answer1" name="answer1"><span class="blind">1번째 답변</span></a>
                      <div class="profile_card">
                        <div class="card_inner">
                          <div class="card_info">
                            <div class="profile_info">
                              <a
                                href="/profile/index.naver?u=NparLXbWCKC3MDD8PWrXraAfgcSaSRPk8XGrwX0Lly0%3D"
                                class="name_area"
                                onclick="naver.kin.pc.common.nClicks('end*a.supname', '', '', event);"
                              >
                                <strong class="name">닉네임 받아오기</strong>
                              </a>
                            </div>
                            <a
                              href="/profile/index.naver?u=NparLXbWCKC3MDD8PWrXraAfgcSaSRPk8XGrwX0Lly0%3D"
                              target="_blank"
                              class="thumbnail_area"
                              onclick="naver.kin.pc.common.nClicks('end*a.suppimg', '', '', event);"
                            >
                              <div class="thumbnail">
                                <img
                                  src="https://ssl.pstatic.net/static/kin/09renewal/avatar/200x200_m/7_3d.png"
                                  alt="프로필 사진"
                                />
                              </div>
                            </a>
                          </div>
                        </div>
                        <!-- <div class="profile_card"> -->
                      </div>
                      <div class="_endContents c-heading-answer__content">
                        <div class="_endContentsText c-heading-answer__content-user">
                          <div class="se-viewer" lang="ko-KR">
                            <div class="se-main-container">
                              <div
                                class="se-component se-text se-l-default"
                                id="SE-a9f3fba5-b01e-11ed-8724-7d850cce33f0"
                              >
                                <div class="se-component-content">
                                  <div class="se-section se-section-text se-l-default">
                                    <div class="se-module se-module-text">
                                      <!-- SE-TEXT { -->
                                      <p class="se-text-paragraph se-text-paragraph-align-">
                                        <span style class="se-fs- se-ff-">
                                          네, 대중교통,병원,약국은 아직해재 안됬습니다.</span
                                        >
                                      </p>
                                      <!-- } SE-TEXT -->
                                    </div>
                                    <!-- after -->
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                          <!-- after -->
                        </div>
                        <div class="c-guideline c-guideline">
                          <strong class="c-guideline__title">
                            <i class="icon_notice"></i>알아두세요!
                          </strong>
                          <p class="c-guideline__desc">
                            위 답변은 답변작성자가 경험과 지식을 바탕으로 작성한 내용입니다.
                          </p>
                        </div>
                        <p class="c-heading-answer__content-date">글 작성시간 받기</p>
                      </div>
                      <!-- 답글의 댓글 작성 부분 c-opinion _commentListArea-->
                      <div class="c-opinion _commentListArea" data-answer-no="4">
                        <h2 class="blind">댓글영역</h2>
                        <div class="c-opinion__write">
                          <fieldset>
                            <legend>댓글 입력</legend>
                            <div class="c-opinion__write-form">
                              <textarea class="c-opinion__write-textarea placeholder" id="wr_2" maxlength="1000" title="댓글입력" placeholder="개인정보를 공유 및 요청하거나, 명예 훼손, 무단 광고, 불법 정보 유포시 모니터링 후 삭제될 수 있으며, 이에 대한 민형사상 책임은 게시자에게 있습니다."></textarea>
                            </div>
                            <div class="c-opinion__write-upload">
                              <div class="c-opinion__write-count">
                                <span class="blind">현재 입력한 글자수</span>
                                <span id="counter2" class="c-opinion__write-count__num">0</span>
                                /
                                <span class="blind">전체 입력 가능한 글자수</span>
                                <span class="c-opinion__write-count__total">1000</span>
                              </div>
                              <button type="submit" class="button_register">등록</button>
                            </div>
                          </fieldset>
                        </div>
                        <!-- 답글의 댓글 목록들 -->
                        <div class="c-opinion__list _commentList">
	
	
                          <div class="c-opinion__item">
                            <p class="c-opinion__list-nickname">
                              <strong>댓글 작성자 닉네임 적기</strong>
                            </p>
                            <div class="c-opinion__list-text">
                              <p>댓글 입력</p>
                            </div>
                            <p class="c-opinion__list-date">작성 날짜</p>
                            <div class="button_more">
                              
                              
                              <a href="javascript:void(0);" class="_reportBtn" data-comment-no="-4" data-answer-no="4" data-view-user-id="myun****" data-report-contents="%EA%B9%80%ED%98%B8%EC%A4%91+%EA%B0%80%EC%88%98%EB%8A%94+%EC%B2%9C%EC%9E%AC%EC%A0%81%EC%9D%B8+%EC%9D%8C%EC%95%85%EC%84%B1%EC%9C%BC%EB%A1%9C+%EC%9E%A5%EB%A5%B4%EB%B6%88%EB%AC%B8+%EB%AA%85%EB%B6%88%ED%97%88%EC%A0%84+%EB%B9%84%EA%B5%90%EB%B6%88%EA%B0%80+%EC%9E%85%EB%8B%88%EB%8B%A4"> 신고 </a>
                              
                            </div>
                          </div>
                          
                          <div class="c-opinion__item">
                            <p class="c-opinion__list-nickname">
                              <strong><a href="/profile/index.nhn?u=FRRpglYF4G7WkYytIxFWsITCSTY17MSNeL1NjMCYU80%3D">댓글 작성자 닉네임 적기</a></strong>
                            </p>
                            <div class="c-opinion__list-text">
                              <p>댓글 입력</p>
                            </div>
                            <p class="c-opinion__list-date">작성 날짜</p>
                            <div class="button_more">
                              
                              
                              <a href="javascript:void(0);" class="_reportBtn" data-comment-no="-3" data-answer-no="4" data-view-user-id="yh32****" data-report-contents="%EA%B9%80%ED%98%B8%EC%A4%91+%EA%B0%80%EC%88%98%EB%8A%94+%EB%AC%B4%EC%8A%A8%EB%85%B8%EB%9E%98%EB%8D%98+%EB%B6%80%EB%A5%B4%EA%B8%B0%EB%A7%8C%ED%95%98%EB%A9%B4+%EB%AA%85%EA%B3%A1%EC%9D%84+%EB%A7%8C%EB%93%9C%EB%8A%94+%EC%86%8C%EB%A6%AC%EC%9D%98%EB%A7%88%EC%88%A0%EC%82%AC+%ED%99%94%EC%82%AC%EC%87%BC%EC%97%90%EC%84%9C%EB%8F%84%EC%98%88%EC%99%B8%EB%8A%94+%EC%95%84%EB%8B%88%EC%98%80%EC%8A%B5%EB%8B%88%EB%8B%A4"> 신고 </a>
                              
                            </div>
                          </div>
                          
                          <div class="c-opinion__item">
                            <p class="c-opinion__list-nickname">
                              <strong><a href="/profile/index.nhn?u=IgEWIwOw%2BvqeYHdoWgaTMjDF7ls%2F9VCgLlDelkO0u%2Bs%3D">댓글 작성자 닉네임 적기</a></strong>
                            </p>
                            <div class="c-opinion__list-text">
                              <p>댓글 입력</p>
                            </div>
                            <p class="c-opinion__list-date">작성 날짜</p>
                            <div class="button_more">
                              <a href="javascript:void(0);" class="_reportBtn" data-comment-no="-2" data-answer-no="4" data-view-user-id="snp1****" data-report-contents="%EA%B9%80%ED%98%B8%EC%A4%91+%EA%B0%80%EC%88%98%EB%8B%98%EC%9D%98+%EB%85%B8%EB%9E%98%EB%A5%BC+%EB%93%A4%EC%9D%80+%EC%82%AC%EB%9E%8C%EB%93%A4+%EC%83%9D%EA%B0%81%EA%B3%BC+%EB%A7%88%EC%9D%8C%EC%9D%80+%EB%8B%A4+%EA%B0%99%EC%9D%80%EA%B2%83+%EA%B0%99%EC%8A%B5%EB%8B%88%EB%8B%A4"> 신고 </a>
                            </div>
                          </div>
                          <div class="c-opinion__item">
                            <p class="c-opinion__list-nickname">
                              <strong>댓글 작성자 닉네임 적기</strong>
                            </p>
                            <div class="c-opinion__list-text">
                              <p>댓글 입력</p>
                            </div>
                            <p class="c-opinion__list-date">작성 날짜</p>
                            <div class="button_more">
                              <a href="javascript:void(0);" class="_reportBtn" data-comment-no="-1" data-answer-no="4" data-view-user-id="holove" data-report-contents="%EA%B9%80%ED%98%B8%EC%A4%91+%EA%B0%80%EC%88%98%EC%9D%98+%ED%8A%B8%EB%A1%9C%ED%8A%B8%2C+%EB%B0%9C%EB%9D%BC%EB%93%9C%2C+%EC%84%B1%EC%95%85%EB%93%B1+%EC%9E%A5%EB%A5%B4%EB%B6%88%EB%AC%B8+%EB%AA%A8%EB%93%A0%EA%B3%A1%EC%9D%B4+%EA%B0%90%EB%8F%99%EC%9E%85%EB%8B%88%EB%8B%A4.+%EC%A0%84%EC%A0%95%EC%84%B1%EC%9E%88%EB%8A%94+%EB%AA%A8%EC%8A%B5%EC%9D%B4+%EC%B0%B8+%EC%A2%8B%EC%95%98%EC%96%B4%EC%9A%94"> 신고 </a>
                            </div>
                          </div>
                        </div>
                        <!-- 답글의 댓글의 페이지목록 버튼 -->
                        <div class="paginator paginatorNumber _pagingArea">
	
	
                          <a href="javascript:void(0);" class="paginator__num_item _pagingBtn" data-page="1">
                            <span class="paginator__num">1</span>
                          </a>
                          
                          <a href="javascript:void(0);" class="paginator__num_item _pagingBtn" data-page="2">
                            <span class="paginator__num">2</span>
                          </a>
                          
                          <a href="javascript:void(0);" class="paginator__num_item _pagingBtn" data-page="3">
                            <span class="paginator__num">3</span>
                          </a>
                          
                          <a href="javascript:void(0);" class="paginator__num_item _pagingBtn" data-page="4">
                            <span class="paginator__num">4</span>
                          </a>
                          
                          <a href="javascript:void(0);" class="paginator__num_item _pagingBtn" data-page="5">
                            <span class="paginator__num">5</span>
                          </a>
                          
                          <a href="javascript:void(0);" class="paginator__num_item _pagingBtn is-active" data-page="6">
                            <span class="paginator__num">6</span>
                          </a>
                          
                          <a href="javascript:void(0);" class="paginator__num_item _pagingBtn" data-page="7">
                            <span class="paginator__num">7</span>
                          </a>
                          
                          <a href="javascript:void(0);" class="paginator__num_item _pagingBtn" data-page="8">
                            <span class="paginator__num">8</span>
                          </a>
                          
                          <a href="javascript:void(0);" class="paginator__num_item _pagingBtn" data-page="9">
                            <span class="paginator__num">9</span>
                          </a>
                          
                          <a href="javascript:void(0);" class="paginator__num_item _pagingBtn" data-page="10">
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
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
  <script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
  <script type="text/javascript">
    $Fn(function () {
      new naver.kin.LNB({ questionType: '' });
    }).attach(window, 'load');

    var GNB_BRIGHTNESS_VALUE = {
      DARK_ICON: 0,
      DARK_ICON_AND_TRANSPARENCY: 1,
      BRIGHT_ICON_AND_TRANSPARENCY: 2,
      BRIGHT_ICON: 3,
    };

    var GNB_ITEM_HIDE_OPTION_BIT_VALUE = {
      DEFAULT: 0,
      HIDE_LOGIN_BTN: 1,
      HIDE_USER_LAYER: 2,
      HIDE_NAVER_ME_AREA: 4,
      HIDE_MAIL_ALARM_AREA: 8,
      HIDE_PROFILE_IMAGE: 16,
      SHOW_BENEFIT_FOR_STAFF_MEMBER: 32,
    };

    var smartSearch = '';

    var gnb_service = 'kin';

    var gnb_logout = encodeURIComponent('https://nid.naver.com/nidlogin.logout');

    var gnb_login = encodeURIComponent(location.href || 'https://kin.naver.com');

    var gnb_template = 'gnb_utf8';

    var gnb_item_hide_option = GNB_ITEM_HIDE_OPTION_BIT_VALUE.DEFAULT;

    $Fn(function () {
      getGNB();

      var bIsGnbClicked = false;

      $Fn(function (we) {
        if (!bIsGnbClicked) {
          gnbAllLayerClose();
        }

        bIsGnbClicked = false;
      }, this).attach(document.body, 'click');

      $Fn(function (we) {
        bIsGnbClicked = true;
      }, this).attach($('gnb'), 'click');

      try {
        $('autoFrame').src = '/static/reatcmp.html?v=4.1';
      } catch (e) {}

      smartSearch = new nhn.AjaxSuggestUS('nx_query', 'autoFrame', {
        url: 'https://ac.search.naver.com/nx/ac',
        cookieName: 'NaverSuggestUse',
        listbox: '_resultBox',
        sFromName: 'topSearch',
        triangleBtn: 'triangleBtn',
        sListMaxLength: 55,
        listMaxCount: 15,
        request_type: 'jsonp',
        request_data: {
          q: '{query}',
          st: '100',
          r_format: 'json',
          t_koreng: '1',
          q_enc: 'UTF-8',
          r_enc: 'UTF-8',
          r_unicode: '0',
          r_escape: '1',
          frm: 'kin',
        },
        sTriangleUpOn: 'https://ssl.pstatic.net/static/common/snb/090513/bu_arrow_up.gif',
        sTriangleUpOff: 'https://ssl.pstatic.net/sstatic/search/mypocket/v3/btn_atcmp_off_op2.gif',
        sTriangleDownOn: 'https://ssl.pstatic.net/static/common/snb/090513/bu_arrow_down.gif',
        sTriangleDownOff: 'https://ssl.pstatic.net/static/common/snb/090513/bu_arrow_down3.gif',
      }).attach({
        actSubmit: function () {
          try {
            top.selectAction(this._elForm);
          } catch (e) {
            try {
              selectAction(this._elForm);
            } catch (e) {}
          }

          this._elForm.submit();
        },
      });

      var expertEntryBanner = $$.getSingle('div.gnb_eXpertLogo div.banner');
      if (!!expertEntryBanner) {
        var cookie = new $Cookie();

        $Fn(function () {
          $Element(expertEntryBanner).hide();

          var newDisabledUntil = new Date().getTime() + 3 * 1000 * 24 * 60 * 60;
          cookie.set('kin_expert_entry_banner_disabled_until', newDisabledUntil, 5);
        }).attach($$.getSingle('div.gnb_eXpertLogo div.banner button.buttonCancel'), 'click');

        var disabledUntilTimestamp = new Number(
          cookie.get('kin_expert_entry_banner_disabled_until')
        );
        if (!isNaN(disabledUntilTimestamp)) {
          if (new Date().getTime() > disabledUntilTimestamp) {
            cookie.remove('kin_expert_entry_banner_disabled_until');
            $Element(expertEntryBanner).show();
          }
        } else {
          $Element(expertEntryBanner).show();
        }
      }

      if (typeof nhn.Kin.ChatMenu !== 'undefined') {
        window.oChatMenu = new nhn.Kin.ChatMenu();
      }
    }).attach(window, 'load');
  </script>
  <script type="text/x-dot-template" id="autoCompleteListTpl">
    <div class="auto_search" id="atcmp">
        <h4 class="blind">입력어에 대한 자동완성 검색어</h4>
        <div class="words">
            <ul class="_resultBox" role="listbox" id="atcmpList">
                {{~ it.result : item}}
                <li class="{{=item}}" role="option" tabindex="-1">
                    <a href="#" onclick="return false;">{{=item}}</a>
                    <span style="display:none">{{=item}}</span></li>
                {{~}}
            </ul>
        </div>
        <p class="func">
            <span>
                <a href="https://help.naver.com/alias/kin/contentskin108.naver" target="_blank">도움말</a>
                |
                <a class="funoff _searchBoxEndBtn" href="#" onclick="return false;">기능끄기</a></span></p>
        <img
            src="https://ssl.pstatic.net/static/common/snb/090513/txt_functionoff.gif"
            alt="기능을 다시 켤 때는 검색어 입력창 우측 버튼을 클릭하세요."
            width="207"
            height="23"
            class="help _searchBoxEndBtnHelp"
            id="help_tooltip1"
            style="display:none;"/>
    </div>
  </script>
  <script type="text/x-dot-template" id="autoCompleteListEmptyTpl">
    <div class="auto_search" id="atcmpIng">
        <h4 class="blind">입력어에 대한 자동완성 검색어</h4>
        <div class="words">
            <p class="msg">현재 자동완성 기능을 사용하고<br>계십니다.</p>
        </div>
        <p class="func">
            <span>
                <a
                    href="https://help.naver.com/alias/kin/contentskin108.naver"
                    target="_blank"
                    class="_searchBoxEndBtn">도움말</a>
                |
                <a class="funoff _searchBoxEndBtn" href="#" onclick="return false;">기능끄기</a></span></p>
        <img
            src="https://ssl.pstatic.net/static/common/snb/090513/txt_functionoff.gif"
            alt="기능을 다시 켤 때는 검색어 입력창 우측 버튼을 클릭하세요."
            width="207"
            height="23"
            class="help _searchBoxEndBtnHelp"
            id="help_tooltip2"
            style="display:none;">
    </div>
  </script>
  <script type="text/javascript">
    $(window).on('load', function () {
      var oLNB = new naver.kin.pc.LNB({ questionType: 'NORMAL' });
      var oGNB = new naver.kin.pc.GNB({});
    });

    var GNB_BRIGHTNESS_VALUE = {
      DARK_ICON: 0,
      DARK_ICON_AND_TRANSPARENCY: 1,
      BRIGHT_ICON_AND_TRANSPARENCY: 2,
      BRIGHT_ICON: 3,
    };

    var GNB_ITEM_HIDE_OPTION_BIT_VALUE = {
      DEFAULT: 0,
      HIDE_LOGIN_BTN: 1,
      HIDE_USER_LAYER: 2,
      HIDE_NAVER_ME_AREA: 4,
      HIDE_MAIL_ALARM_AREA: 8,
      HIDE_PROFILE_IMAGE: 16,
      SHOW_BENEFIT_FOR_STAFF_MEMBER: 32,
    };

    var smartSearch = '';

    var gnb_service = 'kin';

    var gnb_logout = encodeURIComponent('https://nid.naver.com/nidlogin.logout');

    var gnb_login = encodeURIComponent(location.href || 'https://kin.naver.com');

    var gnb_template = 'gnb_utf8';

    var gnb_item_hide_option = GNB_ITEM_HIDE_OPTION_BIT_VALUE.DEFAULT;

    $(window).on(
      'load',
      function () {
        getGNB();

        var bIsGnbClicked = false;

        $(document.body).on(
          'click',
          function (we) {
            if (!bIsGnbClicked) {
              gnbAllLayerClose();
            }

            bIsGnbClicked = false;
          }.bind(this)
        );

        $('#gnb').on(
          'click',
          function (we) {
            bIsGnbClicked = true;
          }.bind(this)
        );

        var expertEntryBanner = $('div.gnb_eXpertLogo div.banner');
        if (!!expertEntryBanner && expertEntryBanner.length > 0) {
          $('div.gnb_eXpertLogo div.banner button.buttonCancel').on('click', function () {
            expertEntryBanner.hide();

            var newDisabledUntil = new Date().getTime() + 3 * 1000 * 24 * 60 * 60;
            cookie.create('kin_expert_entry_banner_disabled_until', newDisabledUntil, 5);
          });

          var disabledUntilTimestamp = new Number(
            cookie.read('kin_expert_entry_banner_disabled_until')
          );
          if (!isNaN(disabledUntilTimestamp)) {
            if (new Date().getTime() > disabledUntilTimestamp) {
              cookie.erase('kin_expert_entry_banner_disabled_until');
              expertEntryBanner.show();
            }
          } else {
            expertEntryBanner.show();
          }
        }
      }.bind(this)
    );

    function checkQuery() {
      var aform = document.topSearch;

      try {
        aform.submit();
      } catch (e) {}

      return false;
    }

    $(window).on('load', function () {
      $.cachedScript(
        'https://ssl.pstatic.net/static.kin/static/kin-web-pc/2302011650/js/min/naver.k' +
          'in.pc.ChatMenu.js'
      ).done(function () {
        if (typeof naver.kin.pc.ChatMenu !== 'undefined') {
          window.oChatMenu = new naver.kin.pc.ChatMenu();
        }
      });
    });
  </script>
  <script
    type="text/javascript"
    src="https://ssl.pstatic.net/static.kin/static/kin-web-pc/2302011650/js/min/naver.kin.pc.detail.js"
  ></script>
  <script src="${pageContext.request.contextPath}/js/kdh/detailsPage.js"></script>
</html>