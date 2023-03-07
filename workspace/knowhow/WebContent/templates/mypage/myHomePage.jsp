<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<link rel="icon" href="${pageContext.request.contextPath}/image/favicon.ico">
    <link rel="stylesheet"href="${pageContext.request.contextPath}/static/css/mypage/myUpdateInfo.css" />
<!-- 마이페이지와 update페이지만 css와 html테그가 살짝 다름 -->

</head>
<body>
<header id="header"><jsp:include page="${pageContext.request.contextPath}/templates/main/include/header.jsp" /></header>

<div class="all_content">
	<div class="my_main_content">
		
		<div class="my_personal">
			<div class="my_personal_top"></div>
			<div class="my_personal_inner">
				<div class="profile_section">
				
					<div class="profile_group">
						<span class="thumbnail">
						<c:choose>
							<c:when test="${myInfo.resumeExistence eq false }">
								<img src="${pageContext.request.contextPath}/image/mentee.png" width="100%" height="100%" />
							</c:when>
							<c:otherwise>
								<img src="${pageContext.request.contextPath}/image/mentor.png" width="100%" height="100%" />
							</c:otherwise>
						 </c:choose>
							
						</span>
					</div>
				
					<div class="profile_info">
						<div class="profile_name">
							<strong class="profile_user">${myInfo.memberNickname}</strong>
						</div>
					
					</div>
				</div>
			
			<div class="profile_section2">
				<div class="my_intro">
					<div class="my_title">
						<p class="sum">나의 정보</p>
						<p class="action">
							<p>이름 : <span>${myInfo.memberName}</span></p>
							<p>나이 : <span>${myInfo.memberAge}</span></p>
							<p>분야 : <span>${myInfo.memberJob}</span></p>
							<p>메일 : <span>${myInfo.memberEmail}</span></p>
							<p>상태 : <c:choose>
										<c:when test="${myInfo.resumeExistence eq false }">
											<span>멘티<span>
										</c:when>
										<c:otherwise>
											<span>멘토<span>
										</c:otherwise>
									 </c:choose>
							</p>
						</p>
					</div>
				</div>

			</div>
			
			<div class="profile_section3">				
				
				<dl class="my_spec">
					
					<dt>질문</dt>
					<dd>
						<span class="q_list">| 전체질문 <strong>${countMyBoards.countQuestion}</strong></span>
					</dd>
					
					<dt style="margin-left:16px"> 받은 추천</dt>
					<dd>
						<span class="q_list">| 좋아요 <strong>${likedIGot.countTotalLiked}</strong></span>
					</dd>
					
				</dl>			
			</div>
		</div>
				
	</div> 
				
		</div>
	
	<div class="body_content">
		<div class="left_nav">
		<ul>
			<li>
				<a href="javascript:gotoList('q');" id="myQuestionButton">나의 질문</a>
				<span class="num">(${countMyBoards.countQuestion})</span>
			</li>
			<c:choose>
				<c:when test="${myInfo.resumeExistence eq false }">
					<li>
						<a href="javascript:gotoList('a');" id="myAnswerButton">나의 답변</a>
						<span class="num">(${countMyBoards.countAnswer})</span>
					</li>
				</c:when>
			</c:choose>
	
			<li>
				<a href="javascript:gotoList('c')">나의 댓글</a>
				<span class="num">(${countMyComments.countTotalComments})</span>
			</li>
			<li>
				<a href="javascript:gotoList('ql');">내가 좋아요한 질문</a>
				<span class="num">(${countBoardsILiked.countTotalLike})</span>
			</li>
			<li>
				<a href="javascript:gotoList('al');">내가 좋아요한 답변</a>
				<span class="num">(${countBoardsILiked.countTotalLike})</span>
			</li>
			<li>
				<a href="javascript:gotoList('aa');">나의 문의사항</a>
				<span class="num">(${countMyBoards.countAskAdmin})</span>
			</li>
			<li>
				<a href="javascript:gotoList('u');">프로필 수정 및 설정</a>
			</li>
			
		</ul>
		</div>
	<!-- 메인 섹션 -->
	<section>
		<div id="list-here"> 
		
		</div>
		<div id="list-here-2"></div>	
	</section>
	</div>	
			<jsp:include page="${pageContext.request.contextPath}/templates/main/include/footer.jsp" />
	</div>
</body>
	<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
	<script src="https://rawgit.com/jackmoore/autosize/master/dist/autosize.min.js"></script>
	<script>
		let contextPath="${pageContext.request.contextPath}";
	</script>
	<script src="${pageContext.request.contextPath}/static/js/mypage/myQuestions.js"></script>
<%-- 	<script src="${pageContext.request.contextPath}/static/js/mypage/myUpdateInfo.js"></script> --%>
</html>