<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 정보 업데이트</title>
<!-- 마이페이지와 update페이지만 css와 html테그가 살짝 다름 -->
   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/jyc/myUpdateInfo.css"/>
</head>
<body>
	<div class="nav">
		<div class="nav_inner">

			<ul class="nav_list">
				<li class="menu"><a href="#"><em>홈</em></a></li>
				<li class="menu"><a href="#"><em>Q&amp;A</em></a>
				<li class="menu"><a href="#"><em>답변하기</em></a></li>
				<li class="menu"><a href="#"><em>지식기부</em></a></li>
				<li class="menu"><a href="#"><em>사람들</em>
				<li class="menu"><a href="#"><em>베스트</em></a></li>
				<li class="menu"><a href="#"><em>명예의전당</em></a></li>
				<li class="menu on"><em style="margin-left: 2px;">|&nbsp;&nbsp; 프로필</em></a></li>
				<li class="menu"><a href="#"><em>파트너센터</em></a></li>

				<li class="menu"><a href="#"><em>룰렛</em></a></li>


			</ul>
			<button class="ask">질문하기</button>
		</div>
	</div>
		
	<div class="my_main_content">
	
	<div class="my_personal">
		<div class="my_personal_top"></div>
		<div class="my_personal_inner">
			<div class="profile_section">
			
			
				<div class="profile_group">
					<span class="thumbnail">
					<img src="https://ssl.pstatic.net/static/kin/09renewal/avatar/200x200/3_3d.png" width="100%" height="100%" />
					</span>
					
					<a class="edit_photo">
						<span class="photo_btn"></span>
					</a>
				</div>
				
				<div class="profile_info">
					<div class="profile_name">
						<strong class="profile_user">엄준식</strong>
					</div>
					
				</div>
			</div>
			
			<div class="profile_section2">
				<div class="my_intro">
					<div class="my_title">
						<p class="sum">나의 정보</p>
						<p class="action">
							<p>이름 : <span>정유찬</span></p>
							<p>나이 : <span>25</span></p>
							<p>관심분야 : <span>IT</span></p>
							<p>이메일 : <span>youchanj66@gmail.com</span></p>
							<p>상태 : <span>멘티</span></p>
						</p>
					</div>
				</div>

				
				
			</div>
			
			<div class="profile_section3">				
				
				<dl class="my_spec">
					
					<dt>질문</dt>
					<dd>
						<span class="q_list">전체질문 <strong>3건</strong></span>
					</dd>
					
					<dt style="margin-left:16px">받은 추천</dt>
					<dd>
						<span class="q_list">좋아요 <strong>1</strong></span>
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
				<a href="#">프로필 수정 및 설정</a>
			</li>
			
		</ul>
		</div>
		
		<div class="content">
			<form action="" method="POST"> 
				<fieldset>
						<table class="my_info_tbl">
							<tbody>
								<tr>
									<th>별명</th>
									<td>
										<input type="text" name="nickname" class="input_text" style="width:229px;" title="별명 입력" placeholder="별명">
										<p>한글 1~10자, 영문 대소문자 2~20자, 숫자를 사용할 수 있습니다. (혼용가능)</p>
									</td>
								</tr>
								<tr>
									<th>프로필 사진</th>
									<td>
										<div class="upload">
											<a href="#"><img src="https://ssl.pstatic.net/static/kin/09renewal/btn_upload_profilephoto2.gif" class="upload_botton" width="100" height="22" alt="프로필 사진 올리기""></a>
										</div>
									</td>
								</tr>
								
								<tr>
									<th>이름</th>
									<td>
										<input type="text" value="" name="member_name" class="input_text" style="width:229px;" placeholder="이름">
									</td>
								</tr>
								
								<tr>
									<th>나이</th>
									<td>
									<input type="text" value="" name="member_name" class="input_text" style="width:229px;" placeholder="나이" />
									</td>
								</tr>
								
								<tr>
									<th>이메일</th>
									<td>
										<input type="email" value="" name="password" class="input_text" style="width:229px;" placeholder="이메일">
									</td>
								</tr>
								
								
								<tr>
									<th>비밀번호</th>
									<td>
										<input type="password" value="" name="password" class="input_text" style="width:229px;" placeholder="비밀번호">
									</td>
								</tr>
								
								
								<tr></tr>
							</tbody>
						</table>
						
			<div class="agree_agrea">
				<div class="agree_checkbox">
					<label for="agree_check_all">
						<input type="checkbox">
						<em>아래 내용에 전체 동의합니다.</em>
						<span class="agree_right">필수동의</span>
					</label>
				</div>		
			</div>
				
				<div class="agree_list_area">
					<div class="agree_checkbox">
						<label for="agree_for_privacy" class= "agree_for__privacy">
							<input type="checkbox">
							<em>[필수] 개인정보 수집 및 이용에 동의</em>
							<p class="privacy_discription">
								입력한 별명, 프로필 사진, 하는 일, 프로필 키워드, 성별, 연령, 회사, 학교, 자격은 KnowHow&nbsp;서비스 내 프로필 페이지, 답변자 정보 영역, KnowHow 홈 및 네이버 서비스 내 프로필 공개를 목적으로 합니다.
								<strong class="highlight">수집된 정보는 언제든지 직접 삭제할 수 있고, 탈퇴 시에는 바로 파기됩니다.</strong>
							</p>
						</label>
					</div>
					<div class="agree_checkbox">
						<label for="agree_for_responsibilty" class="agree_for__responsibilty">
							<input type="checkbox">
							<em>[필수] 사실과 다른 정보를 기재하여 발생한 문제에 대해서는 본인이 일체의 책임을 부담하겠습니다.</em>
						</label>
					</div>
				</div>
					
					<div class="button">
						<button class="save">저장</button>
						<button class="cancel">취소</button>
					</div>
				</fieldset>
			</form>
		</div>
		</div>
		
				
</body>
</html>