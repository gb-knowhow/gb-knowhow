<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href=${pageContext.request.contextPath}/css/jyc/myHomePage.css />
</head>
<body>
	<div class="nav">
		<div class="nav_inner">

			<ul class="nav_list">
				<li class="menu"><a href="?"><em>홈</em></a></li>
				<li class="menu"><a href="?"><em>Q&amp;A</em></a>
				<li class="menu"><a href="?"><em>답변하기</em></a></li>
				<li class="menu"><a href="?"><em>지식기부</em></a></li>
				<li class="menu"><a href="?"><em>사람들</em>
				<li class="menu"><a href="?"><em>베스트</em></a></li>
				<li class="menu"><a href="?"><em>명예의전당</em></a></li>
				<li class="menu on"><em style="margin-left: 2px;">|&nbsp;&nbsp; 프로필</em></a></li>
				<li class="menu"><a href="?"><em>파트너센터</em></a></li>

				<li class="menu"><a href="?"><em>룰렛</em></a></li>


			</ul>
			<button class="ask">질문하기</button>
		</div>
	</div>

<div class="my_main_content">
	<ul class="location">
		<li><a href="?">홈</a></li>
		<li class="last"><a href="?">프로필</a></li>
	</ul>
	
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
					
					<div class="answer_date">
						<span>최초답변일</span>
						<span>2020.12.07</span>
					</div>
				</div>
				
				<div class="cert_button_area">
					<button class="certi_btn">활동증명서 보기</button>
				</div>
			</div>
			
			<div class="profile_section2">
				<div class="my_intro">
					<div class="my_title">
						<p class="sum">작성된 소개글이 없습니다.</p>
						<p class="action">
							<br>본인을 알릴만한 소개글을 적어주세요
							<br>소개글이 있으면 질문하신 분이 답변을 확인하고 채택하는데
							<br>많은 도움이 됩니다
						</p>
					</div>
					<div class="modify_btn">
						<img src="https://ssl.pstatic.net/static/kin/09renewal/btn_intro_edit_130927.gif" width="27" height="16" alt="수정">
					</div>
					
				</div>
				
				<div class="certification">
						<div class="tooltip_title">
							<strong class="tit_text">취득자격</strong>
							<span class="help_button">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16">
							<g fill="none" fill-rule="evenodd">
								<circle stroke="#DADADA" cx="8" cy="8" r="7.5"></circle>
								<path d="M8.364 6.113c.238 0 .44-.079.609-.235a.749.749 0 0 0 .253-.57.756.756 0 0 0-.253-.57.857.857 0 0 0-.609-.238c-.237 0-.44.08-.61.237a.753.753 0 0 0-.255.572c0 .222.084.412.254.569a.87.87 0 0 0 .611.235zM7.74 11.42c.229 0 .43-.03.602-.09.173-.06.405-.147.695-.261l.096-.396c-.05.024-.13.05-.241.082-.112.03-.211.046-.3.046-.187 0-.319-.031-.395-.093-.076-.061-.114-.177-.114-.347 0-.067.012-.167.035-.299.024-.131.05-.249.08-.351l.36-1.279c.035-.117.059-.246.072-.387.013-.14.02-.238.02-.294a.839.839 0 0 0-.284-.657c-.189-.168-.457-.253-.806-.253-.193 0-.398.035-.615.104a9.156 9.156 0 0 0-.681.248l-.097.395c.07-.026.155-.054.253-.083.098-.03.194-.044.288-.044.19 0 .319.032.386.097.068.064.101.178.101.342 0 .091-.01.192-.033.301-.022.11-.049.227-.08.35L6.72 9.835a3.79 3.79 0 0 0-.07.363 2.314 2.314 0 0 0-.023.314c0 .263.098.48.293.652.194.172.468.257.82.257z" fill="#444" fill-rule="nonzero"></path>
							</g>
						</svg>
							</span>
							<img class="management_button" src="https://ssl.pstatic.net/static/kin/09renewal/btn_info_qual_161124.png" alt="취득자격관리">
						</div>
						<p class="action_tit">설정된 취득 자격이 없습니다. </p>
						<p class="action">오프라인에서 취득한 국가기술자격이 있다면<br>프로필에 취득 자격을 노출해보세요.</p>
				</div>
				
				<div class="my_main">
					<div class="tit">
						<strong class="tit_text">주요 활동 분야</strong>
							<span class="help_button">
								<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16">
								<g fill="none" fill-rule="evenodd">
									<circle stroke="#DADADA" cx="8" cy="8" r="7.5"></circle>
									<path d="M8.364 6.113c.238 0 .44-.079.609-.235a.749.749 0 0 0 .253-.57.756.756 0 0 0-.253-.57.857.857 0 0 0-.609-.238c-.237 0-.44.08-.61.237a.753.753 0 0 0-.255.572c0 .222.084.412.254.569a.87.87 0 0 0 .611.235zM7.74 11.42c.229 0 .43-.03.602-.09.173-.06.405-.147.695-.261l.096-.396c-.05.024-.13.05-.241.082-.112.03-.211.046-.3.046-.187 0-.319-.031-.395-.093-.076-.061-.114-.177-.114-.347 0-.067.012-.167.035-.299.024-.131.05-.249.08-.351l.36-1.279c.035-.117.059-.246.072-.387.013-.14.02-.238.02-.294a.839.839 0 0 0-.284-.657c-.189-.168-.457-.253-.806-.253-.193 0-.398.035-.615.104a9.156 9.156 0 0 0-.681.248l-.097.395c.07-.026.155-.054.253-.083.098-.03.194-.044.288-.044.19 0 .319.032.386.097.068.064.101.178.101.342 0 .091-.01.192-.033.301-.022.11-.049.227-.08.35L6.72 9.835a3.79 3.79 0 0 0-.07.363 2.314 2.314 0 0 0-.023.314c0 .263.098.48.293.652.194.172.468.257.82.257z" fill="#444" fill-rule="nonzero"></path>
								</g>
								</svg>
							</span>
						
					</div>
					
				<p class="no_action_tit">주요 활동 분야가 없습니다</p>
				</div>
				
				<p class="no_action">
					<br>주요활동분야는 채택답변이 5개 이상 있는 2단계 이하 디렉토리 중</br>
					<br>에서 최대 4개까지 선택할 수 있습니다. 자신을 대표할 수 있는 주로</br>
					<br>답변하는 디렉토리로 설정해주세요.</br>
				</p>
				
				
			</div>
			
			<div class="profile_section3">
				<div class="level_area">
					<div class="level_wrap" style="position:relative;">
							
							<strong class="my_level"><span class="level_number">2</span>시민<a href="?" target="_blank" class="guide">안내</a></strong>
							<div class="my_guage_info">
								
								<div class="inner" style="width: 14%;">
									<div class="grd_bar"><span class="grd_action"></span></div>
									<div class="grd_detail">
										<div class="detail_box">
											<div class="detail_info" style="display: block;"><p class="tit">내공</p><p class="sum">644</p><span class="tip"></span></div>
										</div>
								</div>
							</div>
							<span class="my_level_up"><span class="level_number">3</span>초수</span>
						</div>
						
					</div>
				</div>
				
				<ul class="lv_content">
					<li>
						<em class="tit">전체 답변</em>
						<p class="num" id="total_answer">3</p>
					</li>
					
					<li>
						<em class="tit">채택된 답변</em>
						<p class="num" id="total_best">0</p>
					</li>
					
					<li>
						<em class="tit">답변 채택률</em>
						<p class="num" id="total_rate">0%</p>
					</li>
				</ul>
				
				<p class="lv_til">
					<em>초수</em>
					<span>까지 남은 답변</span>
					<strong>3</strong>
				</p>
				
				<dl class="my_spec">
					<dt>내공순위</dt>
					<dd>
						<strong>0</strong>
						위
					</dd>
					
					<dt>질문</dt>
					<dd>
						<span class="q_list">전체질문 <strong>3건</strong></span>
						<span class="q_list text">답변 받은 질문 <strong>2건</strong></span>
						<span class="q_list">전체마감률 <strong>50%</strong></span>
						<span class="q_list text">답변채택률 <strong>50%</strong></span>
					</dd>
					
					<dt>받은 추천</dt>
					<dd>
						<span class="q_list">좋아요 <strong>1</strong></span>
						<span class="q_list">유익해요 <strong>0</strong></span>
						<span class="q_list">재밌어요 <strong>0</strong></span>
					</dd>
					
				</dl>
				
				<div class="helper_area">
					<div class="help_inner">
						<div class="icon_area">
							<i class="icon_helper"></i>
						</div>
						
						<div class="content_area">
							<em class="tit">도움을 준 사람 수</em>
								<span class="help_button">
									<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16">
									<g fill="none" fill-rule="evenodd">
										<circle stroke="#DADADA" cx="8" cy="8" r="7.5"></circle>
										<path d="M8.364 6.113c.238 0 .44-.079.609-.235a.749.749 0 0 0 .253-.57.756.756 0 0 0-.253-.57.857.857 0 0 0-.609-.238c-.237 0-.44.08-.61.237a.753.753 0 0 0-.255.572c0 .222.084.412.254.569a.87.87 0 0 0 .611.235zM7.74 11.42c.229 0 .43-.03.602-.09.173-.06.405-.147.695-.261l.096-.396c-.05.024-.13.05-.241.082-.112.03-.211.046-.3.046-.187 0-.319-.031-.395-.093-.076-.061-.114-.177-.114-.347 0-.067.012-.167.035-.299.024-.131.05-.249.08-.351l.36-1.279c.035-.117.059-.246.072-.387.013-.14.02-.238.02-.294a.839.839 0 0 0-.284-.657c-.189-.168-.457-.253-.806-.253-.193 0-.398.035-.615.104a9.156 9.156 0 0 0-.681.248l-.097.395c.07-.026.155-.054.253-.083.098-.03.194-.044.288-.044.19 0 .319.032.386.097.068.064.101.178.101.342 0 .091-.01.192-.033.301-.022.11-.049.227-.08.35L6.72 9.835a3.79 3.79 0 0 0-.07.363 2.314 2.314 0 0 0-.023.314c0 .263.098.48.293.652.194.172.468.257.82.257z" fill="#444" fill-rule="nonzero"></path>
									</g>
									</svg>
								</span>
							<div class="count">
								<span class="number">3</span>
							</div>
						</div>
					</div>
				</div>
				
			</div>
				
		</div>
	</div>
	
	
	<div class="left_nav">
		<ul>
			<li>
				<a href="?">나의 답변</a>
				<span class="num">(3)</span>
			</li>
			<li>
				<a href="?">나의 질문</a>
				<span class="num">(3)</span>
			</li>
			<li>
				<a href="?">나의 친구</a>
				<span class="num">(3)</span>
			</li>
			<li>
				<a href="?">포인트로 감사 내역</a>
			</li>
			<li>
				<a href="?">나의 오픈사전</a>
				<span class="num">(3)</span>
			</li>
			<li>
				<a href="?">해피빈 기부함</a>
			</li>
			<li class="has_sub">
				<a href="?">1:1질문</a>
				<ul class="sub">
					<li>
						<a href="?">받은 질문</a>
						<span class="num">(3)</span>
					</li>
					<li>
						<a href="?">보낸 질문</a>
						<span class="num">(3)</span>
					</li>
				</ul>
			</li>
			<li>
				<a href="?">나의 표정/궁금/보관지식</a>
			</li>
			<li>
				<a href="?">나의 관심질문</a>
			</li>
			<li>
				<a href="?">나의 삭제 지식</a>
				<span class="num">(3)</span>
			</li>
			<li class="has_sub">
				<a href="?">관리</a>
				<ul class="sub">
					<li>
						<a href="?">프로필 수정 및 설정</a>
					</li>
					<li>
						<a href="?">임시저장</a>
						<span class="num">(3)</span>
					</li>
					<li>
						<a href="?">내공</a>
					</li>
				</ul>
			</li>
			
		</ul>
	</div>
	
	<div class="main">
		<div class="interest_area">
			<div class="interest_section">
				<h4><img src="https://ssl.pstatic.net/static/kin/09renewal/h_interest_area.gif" width="42" height="11" alt="관심분야">
				<span>2개</span>
				<a href="#" target="_blank"><img src="https://ssl.pstatic.net/static/kin/09renewal/btn_manage.gif" width="28" height="16" alt="관리"></a>
				</h4>
				
				<ul class="tag">
					<li>
						<a href="/qna/list.naver?dirId=1" target="_blank">컴퓨터통신</a>
						<span class="bar">|</span>
					</li>
					
					<li>
						<a href="/qna/list.naver?dirId=2" target="_blank">게임</a>
					</li>
				</ul>
				
				<div class="interest_add">
					<p class="dsc"><span>최근 내가 답변한 디렉토리</span>를 관심분야로 추가해 보세요</p>
					<span class="interest_rcnt">
				<span>				
					<a href="?">학업, 진로</a>			
					<a href="?">대학교육</a>
					<a href="?">친구, 우정</a>
				</span>
			<a href="?" class="add"><img src="https://ssl.pstatic.net/static/kin/09renewal/btn_interest.gif" width="83" height="18" alt="관심분야 추가"></a>
			</span>
				</div>
			</div>
			
			<div class="interest_keyword interest_secion">
				<h4>
					<img src="https://ssl.pstatic.net/static/kin/09renewal/h_interest_keyword.gif" width="51" height="11" alt="관심키워드">
					<span>0개</span>
					<a href="#" class="keyword_management_button"><img src="https://ssl.pstatic.net/static/kin/09renewal/btn_manage.gif" width="28" height="16" alt="관리"></a>
				</h4>
				
				<ul class="tag">
					<li>
						관심 키워드가 없습니다. 관심키워드를
						<a href="?">등록</a>
						해주세요
					</li>
				</ul>
				
			</div>
			
		</div>
		
		<div class="my_activity">
			<h3>내 소식</h3>
			<div class="my_message">
				<span class="tit">최근 이틀간 지식인 소식이 없습니다</span>
			</div>
		</div>
		
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
   	         			<th>채택</th>
   	            		<th>표정</th>
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
									<a href="?">나의 첫 답변</a>
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
							<a href="?">대학 교육</a>
						</td>
						
						<td class="adapt">
							""
						</td>
						
						<td class="face_expression">
							<span class="recommend">1</span>
						</td>
						
						<td class="first_write_date">
							2020.01.01.
						</td>
					</tr>
				</tbody>
			</table>
			<a href="?" class="more">더보기</a>
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
   	         			<th>채택</th>
   	         			<th>답변</th>
   	            		<th>표정</th>
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
									<a href="?">나의 첫 질문</a>
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
							<a href="?">공군</a>
						</td>
						
						<td>
							<div class="adapted_icon"></div>
						</td>
						
						<td class="answer_count">
							""
						</td>
						
						<td class="face_expression">
							<span class="recommend">1</span>
						</td>
						
						<td class="first_write_date">
							2020.01.01.
						</td>
					</tr>
				</tbody>
			</table>
			<a href="?" class="more">더보기</a>
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
	
	
	
	
	
	
	
	
	
	
</body>
</html>