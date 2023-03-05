<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>know-how</title>
<link rel="shortcut icon" type="image/x-icon"
	href="./images/logo-favicon.ico" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/lut/dash-board-manager.css">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">
</head>
<body>
	<div class="wrap">
		<div id="menu-side" class="container">
			<div id="top-box" class="menu-box">
				<img id="knowhow-logo" alt="know-how"
					src="./images/know-how-title.png">
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
						</span> <span class="mouseOnEffect">
							<div id="middle-box-dashBoard-bar" class="side-bar">
								<div class="icon-gap">
									<img class="side-icons" alt="dash-board"
										src="./images/dashBoard-icon.png">
								</div>
								대시보드
							</div>
						</span>

						<button type="button" class="collapsible"
							onclick="collapse(this);">
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

						<button type="button" class="collapsible"
							onclick="collapse(this);">
							<div class="icon-gap">
								<img class="side-icons" alt="ask-answer"
									src="./images/ask-answer-icon2.png">
							</div>
							질문 답변 관리
						</button>
						<div class="content">
							<p>멘티 질문글 목록</p>
							<p>멘토 답변글 목록</p>
							<p>댓글 목록</p>
						</div>

						<button type="button" class="collapsible"
							onclick="collapse(this);">
							<div class="icon-gap">
								<img class="side-icons" alt="ask-board"
									src="./images/ask-board-icon.png">
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
									<img class="side-icons" alt="resume"
										src="./images/banner-icon.png">
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
				<div class="letter-space">대시보드</div>
				<h1 id="clock" style="color: black;">clock</h1>
				<img class="admin-profile"
					src="https://whatsondisneyplus.com/wp-content/uploads/2021/09/bart-.png">
				<p class="admin-name">관리자</p>
				<p class="name-logout-space">ㅣ</p>
				<button class="admin-logout" type="submit" value="">LOGOUT</button>
			</div>
			<div class="right-body">
				<!-- 신규 회원 -->
				<div class="user-list-contents user-list-contents1">
					<div class="dashboard-label">
						<p>신규 회원</p>
						<input class="detail-button" type="submit" value="더보기">
					</div>
					<div class="mentor-list-header">
						<div class="user-num">회원 번호</div>
						<div class="user-role">구분</div>
						<div class="user-comment">이름</div>
						<div class="user-comment">나이</div>
						<div class="user-name">닉네임</div>
						<div class="user-email">이메일</div>
					</div>

					<div class="new-user">
						<div class="user-list1">
							<c:forEach var="member" items="${newmember}" begin="0" end="5"
								step="1">
								<div class="mentor-list-contents">
									<div class="user-num">${member.memberId}</div>
									<div class="user-role">
										<c:out
											value="${member.resumeExistence == false ? '멘티' : '멘토'}" />
									</div>
									<div class="user-comment">${member.memberName}</div>
									<div class="user-reply">${member.memberAge}</div>
									<div class="user-name">${member.memberNickname}</div>
									<div class="user-email">${member.memberEmail}</div>
								</div>
							</c:forEach>

						</div>
					</div>
				</div>

				<!-- 문의사항 -->

				<div class="user-list-contents user-list-contents2">
					<div class="dashboard-label">
						<p>문의사항</p>
						<input class="detail-button" type="submit" value="더보기">
					</div>
					<div class="mentor-list-header">
						<div class="qna-num">No.</div>
						<div class="user-role">구분</div>
						<div class="qna-writer">작성자</div>
						<div class="qna-title">제목</div>
						<div class="qna-write-day">작성 일시</div>
					</div>

					<div class="new-user">
						<div class="user-list2">
						<c:set var="date" value="${ask.askAdminRegdate}"/>
						<c:forEach var="ask" items="${askadmin}" begin="0" end="5"
								step="1">
							<div class="mentor-list-contents">
								<div class="qna-num">${ask.askAdminId}</div>
								<div class="user-role"><c:out
											value="${ask.resumeExistence == false ? '멘티' : '멘토'}" /></div>
								<div class="qna-writer">${ask.memberName}</div>
								<div class="qna-title">${ask.askAdminTitle}</div>
								<div class="qna-write-day">${ask.askAdminRegdate}</div>
							</div>
						</c:forEach>
						</div>
					</div>
				</div>

				<!-- 최근 멘티 질문글 -->
				<div class="user-list-contents user-list-contents3">
					<div class="dashboard-label">
						<p>최근 멘티 질문글</p>
						<input class="detail-button" type="submit" value="더보기">
					</div>
					<div class="mentor-list-header">
						<div class="ask-num">No.</div>
						<div class="specialization">전문 분야</div>
						<div class="ask-title">질문 제목</div>
						<div class="writer">작성자</div>
						<div class="answer">답변</div>
						<div class="ask-write-day">작성일시</div>
					</div>
					<div class="new-user">
						<div class="user-list3">
							<c:forEach var="question" items="${menteequestion}" begin="0"
								end="5" step="1">
								<div class="mentor-list-contents">
									<div class="ask-num">${question.questionId}</div>
									<div class="specialization">${question.categoryName}</div>
									<div class="ask-title">${question.questionTitle}</div>
									<div class="writer">${question.memberName}</div>
									<div class="answer">${question.answerCount}</div>
									<div class="ask-write-day">${question.questionRegdate}</div>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>

				<!-- 최근 멘토 등록 답변 -->
				<div class="user-list-contents user-list-contents4">
					<div class="dashboard-label">
						<p>최근 멘토 답변</p>
						<input class="detail-button" type="submit" value="더보기">
					</div>
					<div class="mentor-list-header">
						<div class="answer-num">No.</div>
						<div class="answer-title">답변 제목</div>
						<div class="writer">작성자</div>
						<div class="like-count">좋아요 수</div>
						<div class="answer-write-day">작성일시</div>
					</div>

					<div class="new-user">
						<div class="user-list4">
							<c:forEach var="reply" items="${mentorreply}" begin="0" end="5"
								step="1">
								<div class="mentor-list-contents">
									<div class="answer-num">${reply.answerId}</div>
									<div class="answer-title">${reply.answerTitle}</div>
									<div class="writer">${reply.memberName}</div>
									<div class="like-count">${reply.likeCount}</div>
									<div class="answer-write-day">${reply.answerRegdate}</div>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script
	src="https://rawgit.com/jackmoore/autosize/master/dist/autosize.min.js"></script>
<script src="${pageContext.request.contextPath}/js/lut/know-how.js"></script>
<script>
	let newmembers = `${newmember}`, contextPath = "${pageContext.request.contextPath}"
</script>
<script>
	let mentees = `${menteequestion}`, contextPath = "${pageContext.request.contextPath}"
</script>
<script>
	let mentors = `${mentorreply}`, contextPath = "${pageContext.request.contextPath}"
</script>
<script>
	let askadmin = `${askadmin}`, contextPath = "${pageContext.request.contextPath}"
</script>
</html>