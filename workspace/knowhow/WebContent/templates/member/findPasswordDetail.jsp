<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/member/findPasswordDetail.css">
</head>
<body>
	<jsp:include page="${pageContext.request.contextPath}/templates/main/include/header.jsp" flush="true"/>
	<div class="container">
		<div class="content">
			<div class="main_content">
				<div class="content_header">
					<h2>비밀번호 변경</h2>
					<p class="context">안전한 비밀번호로 내 정보를 확인하세요</p>
					<p class="context context_list">다른 아이디/사이트에서 사용해본적 없는 비밀번호</p>
					<p class="context context_list">이전에 사용한적 없는 비밀번호가 안전합니다.</p>
				</div>
				
				<div class="password_content">
					<form action="changeAction.member">
					
					<div class="input_area old_password">
						<input type="password" class="" placeholder="현재 비밀번호" id="" name="memberOldPassword" />
					</div>
					
					<div class="input_area new_password">
						<input type="password" class="" placeholder="새로운 비밀번호" id="" name ="memberNewPassword" />
					</div>
					
					<div class="input_area new_password">
						<input type="password" class="" placeholder="비밀번호 확인" id="" />
					</div>
						
						<div class="button_area">
							<button type="submit" class="btn" id="confirm">확인</button>
							<button type="button" class="" id="cancel">취소</button>
						</div>
					</form>
				</div>
				
			</div>
		</div>
	</div>
</body>
</html>