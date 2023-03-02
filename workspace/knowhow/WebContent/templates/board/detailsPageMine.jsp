<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>글 상세 페이지(내 시점)</title>
<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/static/image/favicon.ico">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/board/detailsPageMine.css" />
</head>
<body>
<jsp:include page="${pageContext.request.contextPath}/templates/main/include/header.jsp" flush="true"/>
	<div class="container-full">
		<!-- fotter 제외 부분 -->
		<div class="question-content">
			<div class="question-content-inner">
				<div class="questionHead _questionContentsArea">
					<div class="question_icon">
						<span class="blind">질문</span>
					</div>
					<div class="question_title">
						<img
							src="${pageContext.request.contextPath}/static/css/board/image/questionMark.png"
							style="margin-right: 3%; width: 50px; height: 50px;"> 욱성이는
						공부 언제하나요?
						<button type="button" class="button_compose button_modify"
							onclick="">
							<i class="icon icon_compose_opinion"> <img
								src="${pageContext.request.contextPath}/static/css/board/image/modify.png"
								style="width: 20px; height: 20px;"></i> <span class="blind">수정하기</span>
							<em class="questionButton_modify">수정하기</em>
						</button>
					</div>
					<!-- 질문 내용 -->
					<div class="question_content">
						질문 그대로 <br>궁금합니다.
					</div>
				</div>
				<div></div>
				<div class="question-userinfo__left">
					<span class="thumbnail"
						style="width: 50px; height: 50px; object-fit: cover;"> <img
						src="${pageContext.request.contextPath}/static/image/mentee.png"
						style="width: 50px; height: 50px;">
					</span>
				</div>
				<div class="question-userinfo">
					<span class="question-userinfo__info"> <!-- 작성자 닉네임 적기 --> <span
						style="padding-right: 10px;">주먹왕 김정표</span> <span class="blind">
							작성일 </span> 업로드 시간 적기
					</span>

					<div class="question-userinfo__right" role="listbox">
						<!-- 댓글달기 class 이름 button_comment로 쓰세요.-->
						<button type="button" class="button_compose button_comment"
							onclick="">
							<i class="icon icon_compose_opinion"> <img
								src="${pageContext.request.contextPath}/static/css/board/image/comment.png"
								style="width: 20px; height: 20px;"></i> <span class="blind">댓글</span>
							<em class="questionButton_comment">댓글달기</em>
						</button>

						<!-- 답글달기 class 이름 button_reply로 쓰세요.-->
						<button type="button" class="button_compose button_reply"
							onclick="">
							<i class="icon icon_compose_opinion"> <img
								src="${pageContext.request.contextPath}/static/css/board/image/reply.png"
								style="width: 20px; height: 20px;"></i> <em
								class="questionButton_reply">답글달기</em>
						</button>

						<!-- 좋아요 class 이름 button_like으로 쓰세요.-->
						<label class="button_compose button_like" onclick=""> <i
							class="icon icon_compose_opinion"> <img
								src="${pageContext.request.contextPath}/static/css/board/image/hate.png"
								id="like" style="width: 20px; height: 20px;"></i> <em
							class="questionButton_reply">좋아요</em>
						</label>
					</div>
				</div>
				<!-- 본글의 댓글 c-opinion _commentListArea-->
				<div class="c-opinion _commentListArea" id="questionCommentList"
					style="display: none;">
					<h2 class="blind">댓글영역</h2>
					<div class="question-comment">
						<fieldset>
							<legend>댓글 입력</legend>
							<div class="question-comment-form">
								<textarea class="question-comment-textarea placeholder"
									id="wr_1" maxlength="500" title="댓글입력"
									placeholder="개인정보를 공유 및 요청하거나, 명예 훼손, 무단 광고, 불법 정보 유포시 모니터링 후 삭제될 수 있으며, 이에 대한 민형사상 책임은 게시자에게 있습니다."></textarea>
							</div>
							<div class="question-comment-upload">
								<div class="question-comment-count">
									<span class="blind">현재 입력한 글자수</span> <span id="counter"
										class="question-comment-count__num">0</span> / <span
										class="blind">전체 입력 가능한 글자수</span> <span
										class="question-comment-count__total">500</span>
								</div>
								<button type="submit" class="button_register">등록</button>
							</div>
						</fieldset>
					</div>
					<!-- 본문의 댓글 목록들 -->
					<div class="question-commentList">
						<div class="replyItem">
							<p class="question-commentList-nickname">
								<!-- 댓글 작성자 닉네임 -->
								<strong>시그니엘 김욱성</strong>
							</p>
							<div class="question-commentList-text">
								<p>함 뜨던가</p>
							</div>
							<!-- 본문의 댓글 등록날짜 -->
							<div class="reply-align">
								<p class="question-commentList-date">댓글 등록날짜</p>
								<span class="re-reply-img">
									<button type="button" class="button_compose re-replyWrite"
										onclick="">
										<i class="icon icon_compose_opinion"> <img
											src="${pageContext.request.contextPath}/static/css/board/image/comment.png"
											style="width: 20px; height: 20px;"></i> <span class="blind">댓글</span>
										<em class="questionButton_comment">대댓글달기</em>
									</button>
								</span>
							</div>
							<div class="button_more">
								<a href="javascript:void(0);" class="_reportBtn"
									data-report-contents="%EA%B9%80%ED%98%B8%EC%A4%91+%EB%8B%98%EC%9D%98+%EC%9E%A5%EB%A5%B4%EB%B6%88%EB%AC%B8+%EB%85%B8%EB%9E%98%EC%8B%A4%EB%A0%A5%EC%97%90+%EC%99%84%EC%A0%84%EA%B9%9C%EC%A7%9D+%EB%86%80%EB%9E%AC%EB%8B%A4+%EA%B9%80%ED%98%B8%EC%A4%91%EB%8B%98%EC%9D%80+%EB%AA%85%EB%B6%88%ED%97%88%EC%A0%84+%EC%8B%A4%EB%A0%A5%EC%9D%B4%EB%8B%A4">
									수정 </a>
							</div>
						</div>
						<!-- 복붙 -->
						<div class="c-opinion _commentListArea re-replySet"
							id="questionCommentList3" style="display: none;">
							<h2 class="blind">대댓글영역</h2>
							<div class="question-comment">
								<fieldset>
									<legend>대댓글 입력</legend>
									<div class="question-comment-form">
										<textarea class="question-comment-textarea placeholder"
											id="wr_re_reply" maxlength="200" title="대댓글입력"
											placeholder="개인정보를 공유 및 요청하거나, 명예 훼손, 무단 광고, 불법 정보 유포시 모니터링 후 삭제될 수 있으며, 이에 대한 민형사상 책임은 게시자에게 있습니다."></textarea>
									</div>
									<div class="question-comment-upload">
										<div class="question-comment-count">
											<span class="blind">현재 입력한 글자수</span> <span
												id="counter-reply" class="question-comment-count__num">0</span>
											/ <span class="blind">전체 입력 가능한 글자수</span> <span
												class="question-comment-count__total">200</span>
										</div>
										<button type="submit" class="button_register">등록</button>
									</div>
								</fieldset>
							</div>
							<!-- 본문의 대댓글 목록들 -->
							<div class="question-commentList">
								<div class="replyItem">
									<p class="question-commentList-nickname">
										<!-- 대댓글 작성자 닉네임 -->
										<strong>집에 가고 싶은 순철</strong>
									</p>
									<div class="question-commentList-text">
										<p>대댓글 내용 : 집 가고 싶다.</p>
									</div>
									<!-- 본문의 대댓글 등록날짜 -->
									<p class="question-commentList-date">대댓글 등록날짜</p>
									<div class="button_more">
										<a href="javascript:void(0);" class="_reportBtn"> 신고 </a>
									</div>
								</div>
							</div>
						</div>

						<div class="replyItem">
							<p class="question-commentList-nickname">
								<strong>자바의 신 윤민우</strong>
							</p>
							<div class="question-commentList-text">
								<p>댓글내용 : 백엔드는 내가 다할게</p>
							</div>
							<p class="question-commentList-date">작성 날짜</p>
							<div class="button_more">
								<a href="javascript:void(0);" class="_reportBtn"> 신고 </a>
							</div>
						</div>
						<!-- 본문의 댓글이 늘어날 때마다 replyItem들이 늘어난다. -->
					</div>
					<!-- 본문의 댓글의 페이지 목록 -->

					<div class="paginator paginatorNumber">

						<a href="javascript:void(0);" class="paginator__prev _pagingBtn"
							data-page="10"> <i class="icon_paginator_prev"></i> <span
							class="paginator__text">이전</span>
						</a> <a href="javascript:void(0);" class="paginator_num _pagingBtn2"
							data-page="2"> <span class="paginator__num">1</span>
						</a> <a href="javascript:void(0);" class="paginator__next _pagingBtn"
							data-page="11"> <span class="paginator__text">다음</span> <i
							class="icon_paginator_next"></i>
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
										<!-- name_area는 원래 a href이다. 아이디를 클릭하면 그 아이디를 가진 사람의 정보를 볼 수 있는 페이지로 넘어가는듯. -->
										<div class="name_area" onclick="">
											<!-- 답글 단 사람 아이디 -->
											<strong class="name">14페이지의 전설 김세윤</strong>
											<div class="answerLikeArea">
												<div class="likeCount">
													<span class="like">받은 좋아요 수 ""</span>
												</div>
											</div>
										</div>
										<a
											href="/profile/index.naver?u=IgEWIwOw%2BvqeYHdoWgaTMjDF7ls%2F9VCgLlDelkO0u%2Bs%3D"
											target="_blank" class="thumbnail_area " onclick="">
											<div class="thumbnail">
												<img
													src="${pageContext.request.contextPath}/static/image/mentor.png"
													alt="프로필 사진">
											</div>
										</a>
									</div>
								</div>
							</div>
							<!-- 답변의 프로필 설정 끝 -->

							<!-- 여백용 div class = answerLocation-->
							<div class="answerLocation"></div>
							<div class="answerWrite">
								<div class="answerOnlyContent">
									<div class="answer-main-container">
										<div class="answer-context">
											<div class="answer-textFull">
												<div class="answerOnlytext">
													<p class="answerTextPtag">제발 좀 하자 욱성아</p>
												</div>
											</div>
										</div>
									</div>
									<div class="answer-guideline">
										<strong class="answer-guideline-title"> <i
											class="icon_notice"></i> 알아두세요!
										</strong>
										<p class="answer-guideline-content">위 답변은 답변작성자가 경험과 지식을
											바탕으로 작성한 내용입니다.</p>
									</div>
									<p class="answer-date">작성 날짜</p>

								</div>
								<div class="reply-comment-click">
									<!-- class이름 button_reply_comment로 쓰세요. -->
									<button type="button"
										class="button_compose button_reply_comment" onclick="">
										<i class="icon icon_compose_opinion"> <img
											src="${pageContext.request.contextPath}/static/css/board/image/comment.png"
											style="width: 20px; height: 20px;"></i> <span class="blind">댓글</span>
										<em class="questionButton_comment">댓글달기</em>
									</button>

									<!-- 답글의 좋아요 -->
									<label class="button_compose button_like2" onclick="">
										<i class="icon icon_compose_opinion"> <img
											src="/css/kdh/image/hate.png" id="like2"
											style="width: 20px; height: 20px;"></i> <em
										class="questionButton_reply">좋아요</em>
									</label>
								</div>

							</div>
							<div class="reply-Comment">
								<div class="c-opinion _commentListArea"
									id="questionCommentList2" style="display: none;">
									<h2 class="blind">댓글영역</h2>
									<div class="question-comment">
										<fieldset>
											<legend>댓글 입력</legend>
											<div class="question-comment-form">
												<textarea class="question-comment-textarea placeholder"
													id="wr_2" maxlength="500" title="댓글입력"
													placeholder="개인정보를 공유 및 요청하거나, 명예 훼손, 무단 광고, 불법 정보 유포시 모니터링 후 삭제될 수 있으며, 이에 대한 민형사상 책임은 게시자에게 있습니다."></textarea>
											</div>
											<div class="question-comment-upload">
												<div class="question-comment-count">
													<span class="blind">현재 입력한 글자수</span> <span id="counter2"
														class="question-comment-count__num">0</span> / <span
														class="blind">전체 입력 가능한 글자수</span> <span
														class="question-comment-count__total">500</span>
												</div>
												<button type="submit" class="button_register">등록</button>
											</div>
										</fieldset>
									</div>

									<!-- 본문의 댓글 목록들 -->
									<div class="question-commentList">
										<div class="replyItem">
											<p class="question-commentList-nickname">
												<strong>자바보단 로아 강민구</strong>
											</p>
											<div class="question-commentList-text">
												<p>댓글 내용 : 게임하고 싶다</p>
											</div>
											<!-- 본문의 댓글 등록날짜 -->
											<div class="reply-align">
												<p class="question-commentList-date">댓글 등록날짜</p>
												<span class="re-reply-img">
													<button type="button"
														class="button_compose reply-re-replyWrite" onclick="">
														<i class="icon icon_compose_opinion"> <img
															src="${pageContext.request.contextPath}/static/css/board/image/comment.png"
															style="width: 20px; height: 20px;"></i> <span
															class="blind">댓글</span> <em
															class="questionButton_comment">대댓글달기</em>
													</button>
												</span>
											</div>
											<div class="button_more">
												<a href="javascript:void(0);" class="_reportBtn"
													data-report-contents="%EA%B9%80%ED%98%B8%EC%A4%91+%EB%8B%98%EC%9D%98+%EC%9E%A5%EB%A5%B4%EB%B6%88%EB%AC%B8+%EB%85%B8%EB%9E%98%EC%8B%A4%EB%A0%A5%EC%97%90+%EC%99%84%EC%A0%84%EA%B9%9C%EC%A7%9D+%EB%86%80%EB%9E%AC%EB%8B%A4+%EA%B9%80%ED%98%B8%EC%A4%91%EB%8B%98%EC%9D%80+%EB%AA%85%EB%B6%88%ED%97%88%EC%A0%84+%EC%8B%A4%EB%A0%A5%EC%9D%B4%EB%8B%A4">
													신고 </a>
											</div>
										</div>
										<!-- 답글의 대댓글 복붙 -->
										<div class="c-opinion _commentListArea re-replySet"
											id="questionCommentList4" style="display: none;">
											<h2 class="blind">답글의 대댓글영역</h2>
											<div class="question-comment">
												<fieldset>
													<legend>답글의 대댓글 입력</legend>
													<div class="question-comment-form">
														<textarea class="question-comment-textarea placeholder"
															id="wr_reply_re_reply" maxlength="200" title="댓글입력"
															placeholder="개인정보를 공유 및 요청하거나, 명예 훼손, 무단 광고, 불법 정보 유포시 모니터링 후 삭제될 수 있으며, 이에 대한 민형사상 책임은 게시자에게 있습니다."></textarea>
													</div>
													<div class="question-comment-upload">
														<div class="question-comment-count">
															<span class="blind">현재 입력한 글자수</span> <span
																id="counter-reply-re-reply"
																class="question-comment-count__num">0</span> / <span
																class="blind">전체 입력 가능한 글자수</span> <span
																class="question-comment-count__total">200</span>
														</div>
														<button type="submit" class="button_register">등록</button>
													</div>
												</fieldset>
											</div>
											<!-- 답글의 댓글 목록들 -->
											<div class="question-commentList">
												<div class="replyItem">
													<p class="question-commentList-nickname">
														<strong>대댓글 작성자 닉네임</strong>
													</p>
													<div class="question-commentList-text">
														<p>댓글 내용</p>
													</div>
													<!-- 답글의 댓글 등록날짜 -->
													<p class="question-commentList-date">댓글 등록날짜</p>
													<div class="button_more">
														<a href="javascript:void(0);" class="_reportBtn"> 신고 </a>
													</div>
												</div>

												<!-- 본문의 대댓글이 늘어날 때마다 replyItem들이 늘어난다. -->
											</div>
										</div>

										<div class="replyItem">
											<p class="question-commentList-nickname">
												<strong>댓글 작성자 닉네임</strong>
											</p>
											<div class="question-commentList-text">
												<p>댓글내용</p>
											</div>
											<p class="question-commentList-date">작성 날짜</p>
											<div class="button_more">
												<a href="javascript:void(0);" class="_reportBtn"
													data-report-contents="%EA%B9%80%ED%98%B8%EC%A4%91+%EB%8C%80%ED%95%9C%EB%AF%BC%EA%B5%AD%EC%9D%B8%EC%9E%AC%EC%83%81%EC%97%90%EB%B9%9B%EB%82%98%EB%8A%94%EA%B5%AD%EB%B3%B4%EA%B8%89%ED%85%8C%EB%84%88%EB%85%B8%EB%9E%98%EC%99%80%EC%98%88%EB%8A%A5%EA%B0%90%EB%8F%84%EB%A7%8C%EC%A0%90%EC%9D%B4%EC%8B%9C%EB%84%A4%EC%9A%94">
													신고 </a>
											</div>
										</div>
										<!-- 본문의 댓글이 늘어날 때마다 replyItem들이 늘어난다. -->
									</div>
									<!-- 본문의 댓글의 페이지 목록 -->
									<div class="paginator paginatorNumber _pagingArea">

										<a href="javascript:void(0);"
											class="paginator__prev _pagingBtn" data-page="10"> <i
											class="icon_paginator_prev"></i> <span
											class="paginator__text">이전</span>
										</a> <a href="javascript:void(0);"
											class="paginator_num _pagingBtn2" data-page="2"> <span
											class="paginator__num">1</span>
										</a> <a href="javascript:void(0);"
											class="paginator__next _pagingBtn2" data-page="11"> <span
											class="paginator__text">다음</span> <i
											class="icon_paginator_next"></i>
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
	        <jsp:include page="${pageContext.request.contextPath}/templates/main/include/footer.jsp" flush="true"/>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script
	src="${pageContext.request.contextPath}/static/js/board/detailsPageMine.js"></script>
</html>