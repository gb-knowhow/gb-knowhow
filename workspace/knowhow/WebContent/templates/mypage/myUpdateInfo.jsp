<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="${pageContext.request.contextPath}/static/image/favicon.ico">
<title>내 정보 업데이트</title>

</head>

<body>
<header id="header"><jsp:include page="${pageContext.request.contextPath}/templates/main/include/header.jsp" /></header>

<div class="all_content">
	<!-- 프로필 영역 전체 -->
	<div class="my_main_content">

		<div class="my_personal">
			<!-- 사진 위 -->
			<div class="my_personal_top"></div>
			<!-- 프로필 영역 -->
			<div class="my_personal_inner">
				<!-- 가장 왼쪽 -->
				<div class="profile_section">
					<!-- 썸네일 + 수정버튼 -->
					<div class="profile_group">
						<span class="thumbnail">
							<img src="${pageContext.request.contextPath}/static/image/mentee.png" width="100%" height="100%" />
						</span>
					</div>

					<!-- 프로필 영역 중 가장 왼쪽 -->
					<div class="profile_info">
						<div class="profile_name">
							<strong class="profile_user">엄준식</strong>
						</div>

					</div>
				</div>

				<!-- 프로필 영역 중 가운데 -->
				<div class="profile_section2">
					<div class="my_intro">
						<div class="my_title">
							<p class="sum">나의 정보</p>
							<p class="action">
							<p>
								이름 : <span>정유찬</span>
							</p>
							<p>
								나이 : <span>25</span>
							</p>
							<p>
								분야 : <span>IT</span>
							</p>
							<p>
								메일 : <span>youchanj66@gmail.com</span>
							</p>
							<p>
								상태 : <span>멘티</span>
							</p>
							</p>
						</div>
					</div>



				</div>

				<!-- 프로필 영역 중 가장 오른쪽 -->
				<div class="profile_section3">

					<dl class="my_spec">

						<dt>질문</dt>
						<dd>
							<span class="q_list">| 전체질문 <strong>3건</strong></span>
						</dd>

						<dt style="margin-left: 16px"> 받은 추천</dt>
						<dd>
							<span class="q_list">| 좋아요 <strong>1</strong></span>
						</dd>

					</dl>


				</div>
			</div>

		</div>

	</div>




	<div class="body_content">
		<!-- flex를 주기 위해서 왼쪽 전체 묶음 -->
		<div class="body_content">
		<div class="left_nav">
		<ul>
			<li>
				<a href="#">나의 답글</a>
				<span class="num">(3)</span>
			</li>
			<li>
				<a href="#">내가쓴 글</a>
				<span class="num">(3)</span>
			</li>
			<li>
				<a href="#">나의 댓글목록</a>
				<span class="num">(3)</span>
			</li>
			<li>
				<a href="#">내가 좋아요한 목록</a>
				<span class="num">(3)</span>
			</li>
			<li>
				<a href="#">나의 문의사항</a>
				<span class="num">(3)</span>
			</li>
			<li>
				<a href="#">프로필 수정 및 설정</a>
			</li>
			
		</ul>
		</div>

		<div class="content">
			<form action="" method="POST" id="form_tag">
				<fieldset>
					<table class="my_info_tbl">
						<tbody>
							<tr>
								<th>별명</th>
								<td>
									<input type="text" id="nick_name" name="nickname" class="input_text"  maxlength='20' style="width: 229px; margin-left: 65px;" title="별명 입력" placeholder="별명"> 
									<span class="bytes">0</span> <span>/20bytes</span>
							</tr>
							<tr>
								<th>프로필 사진</th>
								<td>
							        <label for="profile_upload" id="profile_label">
							        		<div class="image"></div>
							        		<span class="close" style="display:none">X</span>
							        </label>
							        <input type="file" id="profile_upload" style="display: none" />
								</td>
							</tr>
							
							<tr>
								<th>이력서 첨부</th>
								<td>
							        <label for="resume_upload" id="resume_label">
							        		<div class="image"></div>
							        		<span class="close" style="display:none">X</span>
							        </label>
							        <input type="file" id="resume_upload" style="display: none" />
								</td>
							</tr>

							<tr>
								<th>이름</th>
								<td>
								<input type="text" value="" id="name" name="member_name" class="input_text" style="width: 229px;" placeholder="이름">
								</td>
							</tr>

							<tr>
								<th>나이</th>
								<td>
									<input type="text" id="age" value="" name="member_age" class="input_text" style="width: 229px;" placeholder="나이" />
								</td>
							</tr>
							
							<tr>
								<th>이메일</th>
								<td>
									<input type="text" id ="email" value="" name="member_email" class="input_text" style="width: 229px;" placeholder="이메일">
									<p class="help_email"></p>
								</td>
							</tr>


							<tr>
								<th>새로운 비밀번호</th>
								<td>
                                    <input type="password" id="password_input" placeholder="영어, 숫자, 특수문자 중 2가지 이상 10~20자">
                                    <p class="help_password" style="color:coral"></p>
								</td>
							</tr>
							<tr>
								<th>비밀번호 확인</th>
								<td>
                                    <input type="password" id="password_check" placeholder="비밀번호 재입력">
                                    <p class="help_password_confirm"></p>
								</td>
							</tr>
						</tbody>
					</table>

				

				
					<div class="button">
						<button class="save" disabled="disabled">저장</button>
						<button class="cancel">취소</button>
					</div>
				</fieldset>
			</form>
		</div>
	</div>
</div>
		<jsp:include page="${pageContext.request.contextPath}/templates/main/include/footer.jsp" />
</body>

<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/mypage/myUpdateInfo.js">
let contextPath = '${pageContext.request.contextPath}'
</script>

<!-- 마이페이지와 update페이지만 css와 html테그가 살짝 다름 -->
<link rel="stylesheet"href="${pageContext.request.contextPath}/static/css/mypage/myUpdateInfo.css" />
</html>