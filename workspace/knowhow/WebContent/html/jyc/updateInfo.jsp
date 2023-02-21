<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 정보 업데이트</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/jyc/myUpdateinfo.css" />
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
				<li class="menu"><em style="margin-left: 2px;">|&nbsp;&nbsp; 프로필</em></a></li>
				<li class="menu"><a href="#"><em>파트너센터</em></a></li>

				<li class="menu"><a href="#"><em>룰렛</em></a></li>


			</ul>
			<button class="ask">질문하기</button>
		</div>
	</div>
		
	<div class="my_main_content" style="margin-top:30px;">
		
		
	<div class="my_personal">
		<div class="my_personal_top"></div>
		<div class="my_personal_inner">
			<div class="profile_section">
				<div class="profile_name">엄준식</div>
				
				<div class="info_button" style="margin-top:10px">
					<a href="#"><img src="https://ssl.pstatic.net/static/kin/09renewal/btn_info_edit.gif" width="61" height="18" alt="정보관리"></a>
				</div>
			</div>	
			
			<div class="profile_section2">
				<div class="my_main">
					<div class="tit">
						<!-- 주요활동분야 레이어 팝업 -->
							<p>이름 :&nbsp;<em>정유찬</em></p>
							<p>나이 :&nbsp;<em>25</em></p>
							<p>닉네임 :&nbsp;<em>아차차</em></p>
							<p>역할 :&nbsp;<em>멘티</em></p>
						</div>
					</div>
				</div>
				
				<div class="profile_section3">
					<dl class="my_spec">
					<dt style="display:block">답변<strong>3</strong></dt>

					<dt style="display:block">질문<strong>3</strong></dt>

				</dl>
			</div>	
		</div>
	</div>
			
			

		
	
		<div class="left_nav">
		<ul>
			<li>
				<a href="#">나의 답변</a>
				<span class="num">(3)</span>
			</li>
			<li>
				<a href="#">나의 질문</a>
				<span class="num">(3)</span>
			</li>
			<li>
				<a href="#">내가 좋아요한 목록</a>
				<span class="num">(3)</span>
			</li>
			<li class="has_sub">
				<a href="#">관리</a>
				<ul class="sub">
					<li>
						<a href="#">프로필 수정 및 설정</a>
					</li>
					<li>
						<a href="#">임시저장</a>
						<span class="num">(3)</span>
					</li>
					<li>
						<a href="#">내공</a>
					</li>
				</ul>
			</li>
			
		</ul>
		</div>
		</div>
		
		<div class="content">
			<form action=""> 
				<fieldset>
					<div class="table_title">기본 정보</div>
						<table class="my_info_tbl">
							<tbody>
								<tr>
									<th>별명</th>
									<td>
										<input type="text" value="오큐" name="nickname" class="input_text" style="width:229px;" title="별명 입력">
										<p>한글 1~10자, 영문 대소문자 2~20자, 숫자를 사용할 수 있습니다. (혼용가능)</p>
									</td>
								</tr>
								<tr>
									<th>프로필 사진</th>
									<td>
										<div class="upload">
											<a href="#"></a>
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
										<label for="age">
											<select>
												<option>20</option>
												<option>21</option>
												<option>22</option>
												<option>23</option>
												<option>24</option>
												<option>25</option>
												<option>26</option>
												<option>50</option>
												<option>51</option>
												<option>52</option>
												
											</select>
										</label>
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
						<span class="agree_checkbox_icon"></span>
						<em>아래 내용에 동의합니다.</em>
						<span class="agree_right">필수동의</span>
					</label>
				</div>		
			</div>
				
				<div class="agree_list_area">
					<div class="agree_checkbox"></div>
					<div class="agree_checkbox"></div>
					<div class="agree_checkbox"></div>
					<div class="agree_checkbox"></div>
				</div>
					
					<div class="button">
						<button class="save">저장</button>
						<button class="cancel">취소</button>
					</div>
				</fieldset>
			</form>
		</div>
		
		
				
</body>
</html>