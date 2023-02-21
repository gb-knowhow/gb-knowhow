<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/jyc/myHomePage.css" />
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
				<a href="#">나의 답변</a>
				<span class="num">(3)</span>
			</li>
			<li>
				<a href="#">나의 질문</a>
				<span class="num">(3)</span>
			</li>
			<li>
				<a href="#">나의 친구</a>
				<span class="num">(3)</span>
			</li>
			<li>
				<a href="#">포인트로 감사 내역</a>
			</li>
			<li>
				<a href="#">나의 오픈사전</a>
				<span class="num">(3)</span>
			</li>
			<li>
				<a href="#">해피빈 기부함</a>
			</li>
			<li class="has_sub">
				<a href="#">1:1질문</a>
				<ul class="sub">
					<li>
						<a href="#">받은 질문</a>
						<span class="num">(3)</span>
					</li>
					<li>
						<a href="#">보낸 질문</a>
						<span class="num">(3)</span>
					</li>
				</ul>
			</li>
			<li>
				<a href="#">나의 표정/궁금/보관지식</a>
			</li>
			<li>
				<a href="#">나의 관심질문</a>
			</li>
			<li>
				<a href="#">나의 삭제 지식</a>
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
	
	<div class="main">
	
		
		
		<div class="my_info_area" id="my_answer">
			<h4>
				<span class="text">나의 답변</span>
				<span class="count">(1)</span>
			</h4>
			
			<table class="my_answer_content" width="100%">
				<thead>
					<tr>
						<th>제목</th>
               			<th>디렉토리</th>
                		<th>작성</th>
                	</tr>
				</thead>
					
				<tbody>
					<tr>
						<td class="qna">
							<dl>
								<dt>
									<span class="icon_q">
										<img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="18" height="14" alt="질문">
									</span>
									<a href="#">나의 첫 답변</a>
								</dt>
							
								<dd>
									<span class="icon_a">
										<img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="18" height="14" alt="답변">
									</span>
									<span>답변 내용</span>
								</dd>
							</dl>
						</td>
						
						<td class="category">
							<a href="#">대학 교육</a>
						</td>
						
						
						<td class="first_write_date">
							2020.01.01.
						</td>
					</tr>
				</tbody>
			</table>
			<a href="#" class="more">더보기</a>
		</div>
		
				<div class="my_info_area" id="my_question">
			<h4>
				<span class="text">나의 질문</span>
				<span class="count">(1)</span>
			</h4>
			
			<table class="my_question_content" width="100%">
				<thead>
					<tr>
						<th>제목</th>
               			<th>디렉토리</th>
   	         			<th>답변</th>
                		<th>작성</th>
                	</tr>
				</thead>
					
				<tbody>
					<tr>
						<td class="qna">
							<dl>
								<dt>
									<span class="icon_q">
										<img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="18" height="14" alt="질문">
									</span>
									<a href="#">나의 첫 질문</a>
								</dt>
							
								<dd>
									<span class="icon_a">
										<img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="18" height="14" alt="답변">
									</span>
									<span>질문 내용</span>
								</dd>
							</dl>
						</td>
						
						<td class="category">
							<a href="#">공군</a>
						</td>
								
						<td class="answer_count">
							""
						</td>
						
						
						<td class="first_write_date">
							2020.01.01.
						</td>
					</tr>
				</tbody>
			</table>
			<a href="#" class="more">더보기</a>
		</div>
		
		<div class="my_info_area" id="open_dictionary">
			<h4>
				<span class="text">오픈 사전</span>
				<span class="count">(0)</span>
			</h4>
			
			<div class="know_area">
				<dl>
					<dt><img src="https://ssl.pstatic.net/static/kin/09renewal/txt_write_know.gif" width="296" height="13" alt="작성된 집필지식이 없습니다. 오픈사전으로 지식을 공유해 보세요"></dt>
					<dd><a href="/opendic/write.naver"><img src="https://ssl.pstatic.net/static/kin/09renewal/txt_write_know_1.gif" width="57" height="13" alt="집필하기"></a></dd>
				</dl>
			</div>
		</div>
	</div>
	</div>
</div>	
	
	
	
	
	
	
	
	
</body>
</html>