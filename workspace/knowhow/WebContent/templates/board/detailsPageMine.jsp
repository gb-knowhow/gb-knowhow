<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
						<img src="${pageContext.request.contextPath}/css/kdh/image/questionMark.png" style="margin-right: 3%; width: 50px; height: 50px;"> 
							${question.questionTitle}
						<a href="javascript:location.href='/questionUpdate.question?questionId=${question.questionId}'" id="updatebutton"style="text-decoration: none" class="button_compose button_modify"
							onclick="">
							<%-- <i class="icon icon_compose_opinion"> <img
								src="${pageContext.request.contextPath}/css/kdh/image/modify.png"
								style="width: 20px; height: 20px;"></i> --%> <span class="blind">수정하기</span>
							<em class="questionButton_modify">수정하기</em>
						</a>
						<a href="javascript:location.href='/questionDeleteAction.question?questionId=${question.questionId}'" id="deletebutton" style="text-decoration: none" class="button_compose button_modify"
							onclick="">
							<%-- <i class="icon icon_compose_opinion"> <img
								src="${pageContext.request.contextPath}/css/kdh/image/modify.png"
								style="width: 20px; height: 20px;"></i> --%> <span class="blind">삭제하기</span>
							<em class="questionButton_modify">삭제하기</em>
						</a>
					</div>
					<!-- 질문 내용 -->
					<div class="question_content">
						${question.questionContent}
					</div>
				</div>
				<div></div>
				<div class="question-userinfo__left">
					<span class="thumbnail"
						style="width: 50px; height: 50px; object-fit: cover;"> <img
						src="${pageContext.request.contextPath}/image/mentee.png"
						style="width: 50px; height: 50px;">
					</span>
				</div>
				<div class="question-userinfo">
					<span class="question-userinfo__info"> <!-- 작성자 닉네임 적기 --> <span
						style="padding-right: 10px;">${question.memberNickname}</span> <span class="blind">
							작성일 </span> ${question.questionUpdDate}
					</span>

					<div class="question-userinfo__right" role="listbox">
						<!-- 댓글달기 class 이름 button_comment로 쓰세요.-->
						<button type="button" class="button_compose button_comment"
							onclick="">
							<i class="icon icon_compose_opinion"> <img
								src="${pageContext.request.contextPath}/css/kdh/image/comment.png"
								style="width: 20px; height: 20px;"></i> <span class="blind">댓글</span>
							<em class="questionButton_comment">댓글달기</em>
						</button>

						<!-- 답글달기 class 이름 button_reply로 쓰세요.-->
						<a href="${pageContext.request.contextPath}/answerWrite.answer?questionId=${question.questionId}" type="button" class="button_compose button_reply"
							onclick="">
							<i class="icon icon_compose_opinion"> <img
								src="${pageContext.request.contextPath}/css/kdh/image/reply.png"
								style="width: 20px; height: 20px;"></i> <em
								class="questionButton_reply">답글달기</em>
						</a>

						<!-- 좋아요 class 이름 button_like으로 쓰세요.-->
						<label class="button_compose button_like" onclick=""> <i
							class="icon icon_compose_opinion"> <img
								src="${pageContext.request.contextPath}/css/kdh/image/hate.png"
								id="like" style="width: 20px; height: 20px;"></i> <em
							class="questionButton_reply">좋아요</em>
						</label>
					</div>
				</div>
				<!-- 본글의 댓글 c-opinion _commentListArea-->
				<div class="c-opinion _commentListArea" id="questionCommentList" style="display: block;">
					<input type="hidden" name="questionId" value="${question.questionId}">
					<h2 class="blind">댓글영역</h2>
					<div class="question-comment">
						<fieldset>
							<legend>댓글 입력</legend>
							<div class="question-comment-form">
								<textarea class="question-comment-textarea placeholder" id="wr_1" maxlength="500" title="댓글입력"
									placeholder="개인정보를 공유 및 요청하거나, 명예 훼손, 무단 광고, 불법 정보 유포시 모니터링 후 삭제될 수 있으며, 이에 대한 민형사상 책임은 게시자에게 있습니다."name="replyContent"></textarea>
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
							<div class="reply-align">
								<span class="re-reply-img">
								</span>
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
						</div>
						<c:forEach var="comment" items="${comments}">
						<div class="replyItem">
							<p class="question-commentList-nickname">
								<strong>${comment.commentId}</strong>
							</p>
							<div class="question-commentList-text">
								<p>${comment.commentContent}</p>
							</div>
							<p class="question-commentList-date">작성 날짜</p>
							<div class="button_more">
								<a href="javascript:void(0);" class="_reportBtn">삭제</a>
							</div>
						</div>
						</c:forEach>
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
		<c:forEach var="answer" items="${answer}">
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
											<strong class="name">${answer.answerTitle}</strong>
											<div class="answerLikeArea">
												<div class="likeCount">
													<span class="like">닉네임 : ${answer.memberNickname}</span>
												</div>
											</div>
										</div>
										<a
											href="/profile/index.naver?u=IgEWIwOw%2BvqeYHdoWgaTMjDF7ls%2F9VCgLlDelkO0u%2Bs%3D"
											target="_blank" class="thumbnail_area " onclick="">
											<div class="thumbnail">
												<img
													src="${pageContext.request.contextPath}/image/mentor.png"
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
													<p class="answerTextPtag">${answer.answerContent}</p>
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
									<p class="answer-date"></p>

								</div>
								<div class="reply-comment-click">
									<!-- class이름 button_reply_comment로 쓰세요. -->
									<button type="button"
										class="button_compose button_reply_comment" onclick="openContent(${answer.answerId})">
										<i class="icon icon_compose_opinion"> <img
											src="${pageContext.request.contextPath}/css/kdh/image/comment.png"
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
									<a href="javascript:location.href='/answerDeleteAction.answer?answerId=${answer.answerId}&questionId=${question.questionId}'" class="button_compose button_like2">
										 <em class="questionButton_reply">답글삭제</em>
									</a>
								</div>

							</div>
							<div class="reply-Comment">
								<div class="c-opinion _commentListArea"
									id="questionCommentList${answer.answerId}" style="display: none;">
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
									<c:forEach var="answercommets" items="${answercommets}">
										<div class="replyItem">
											<p class="question-commentList-nickname">
												<strong>댓글 작성자 닉네임</strong>
											</p>
											<div class="question-commentList-text">
												<p>${answercommets.answerCommentContent}</p>
											</div>
											<p class="question-commentList-date">작성 날짜</p>
											<div class="button_more">
												<a href="javascript:void(0);" class="_reportBtn">신고</a>
											</div>
										</div>
										</c:forEach>
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
		</c:forEach>
	</div>
	        <jsp:include page="${pageContext.request.contextPath}/templates/main/include/footer.jsp" flush="true"/>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script>
	let contextPath = "${pageContext.request.contextPath}";
</script>
<script
	src="${pageContext.request.contextPath}/static/js/board/detailsPageMine.js"></script>
</html>