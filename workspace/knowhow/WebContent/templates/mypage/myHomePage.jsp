<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<link rel="icon" href="${pageContext.request.contextPath}/image/favicon.ico">
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
							<img src="${pageContext.request.contextPath}/image/mentor.png" width="100%" height="100%" />
						</span>
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
							<p>분야 : <span>IT</span></p>
							<p>메일 : <span>youchanj66@gmail.com</span></p>
							<p>상태 : <span>멘티</span></p>
						</p>
					</div>
				</div>

			</div>
			
			<div class="profile_section3">				
				
				<dl class="my_spec">
					
					<dt>질문</dt>
					<dd>
						<span class="q_list">| 전체질문 <strong>3건</strong></span>
					</dd>
					
					<dt style="margin-left:16px"> 받은 추천</dt>
					<dd>
						<span class="q_list">| 좋아요 <strong>1</strong></span>
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
				<a href="#">나의 문의사항</a>
				<span class="num">(3)</span>
			</li>
			<li>
				<a href="#">프로필 수정 및 설정</a>
			</li>
			
		</ul>
		</div>
	
	<div class="main">
	
		
		
		<div class="my_info_area" id="my_answer">
			<h4>
				<span class="text">나의 답글</span>
				<span class="count">(1)</span>
			</h4>
			
			<table class="my_answer_content" width="100%">
				<colgroup>
        			<col width="3000">
					<col width="500">
        			<col width="1200">
    		</colgroup>
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
										<img src="${pageContext.request.contextPath}/html/jyc/image/qicon.png" width="14" height="14" alt="질문">
									</span>
									<a href="#">나의 첫 답글</a>
								</dt>
							
								<dd>
									<span class="icon_a">
										<img src="${pageContext.request.contextPath}/html/jyc/image/aicon.png" width="14" height="14" alt="답변">
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
		</div>
		
				<div class="my_info_area" id="my_question">
			<h4>
				<span class="text">나의 질문</span>
				<span class="count">(1)</span>
			</h4>
			
			<table class="my_question_content" width="100%">
			<colgroup>
        			<col width="3000">
					<col width="500">
        			<col width="1200">
    		</colgroup>
			
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
										<img src="${pageContext.request.contextPath}/html/jyc/image/qicon.png" width="14" height="14" alt="질문">
									</span>
									<a href="#">나의 첫 답변</a>
								</dt>
							
								<dd>
									<span class="icon_a">
										<img src="${pageContext.request.contextPath}/html/jyc/image/aicon.png" width="14" height="14" alt="답변">
									</span>
									<span>답변 내용</span>
								</dd>
							</dl>
						</td>
						
						<td class="category">
							<a href="#">공군</a>
						</td>
								
						<td class="answer">
						</td>
						
						
						<td class="first_write_date">
							2020.01.01.
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	
	</div>
</div>	
		<jsp:include page="${pageContext.request.contextPath}/templates/main/include/footer.jsp" />
</div>
	
	
	
	
	
	
	
</body>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/jyc/myHomePage.css"/>
</html>