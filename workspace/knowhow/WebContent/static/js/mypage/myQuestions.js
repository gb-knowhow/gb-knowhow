const memberId = 1;
const $field = $("#list-here");

	
function gotoList(input){
	if(input == 'q'){questionService.list(showQuestionList);}
	if(input == 'a'){answerService.list(showAnswerList);}
	if(input == 'u'){showFormService.list(showUpdateContent);}
}
/*=======================================================================*/
/*모듈*/
/*=======================================================================*/
const questionService=(function(){
	function list(callback){
		$.ajax({
			url: contextPath+"/myQuestion.mypage",
			data: {memberId: memberId},
			dataType: "json",
			success: function(questions){
				if(callback){
					callback(questions);				
				}						
			}
		});
	}
	return {list:list};
})();

const answerService=(function(){
	function list(callback){
		$.ajax({
			url: contextPath+"/myAnswer.mypage",
			data: {memberId: memberId},
			dataType: "json",
			success: function(answers){
				if(callback){
					callback(answers);				
				}						
			}
		});
	}
	return {list:list};
})();

const showFormService=(function(){
	function list(callback){
		$.ajax({
			url: contextPath+"/myUpdateForm.mypage",
			data: {memberId: memberId},
			dataType: "json",
			success: function(myInfo){
				if(callback){
					callback(myInfo);				
				}						
			}
		});
	}
	return {list:list};
})();


/*=======================================================================*/
/*이벤트, DOM, Ajax*/
/*=======================================================================*/
questionService.list(showQuestionList);

function showQuestionList(questions){
	
	let text = "";
	
	if(questions.length == 0){
		text = `
			<h4 class="title">
				질문이 없습니다.
			</h4>
		`
	}else {
		text += `
			<div class="content">
				<dl class="my_question_info">
					<dt>
						<span>나의 질문</span>
					</dt>
				</dl>

				<table class="my_question_content" width="100%">
					<colgroup>

						<col width="3000">
						<col width="500">
						<col width="500">
						<col width="1200">

					</colgroup>

					<thead>
						<tr>
							<th>제목</th>
							<th>카테고리</th>
							<th>답글</th>
							<th>작성날짜</th>
						</tr>
					</thead>`
		questions.forEach(question => {
					text += `<tbody id="questions">
								<tr>
									<td class="qna">
										<dl>
											<dt>
												<a href="${contextPath}/templates/board/detailsPageMine.board?questionId=${question.questionId}">${question.questionTitle }</a>
											</dt>
										</dl>
									</td>
									<td class="category"><a href="${contextPath}/templates/board/questionList.board?categoryId=${question.categoryId}">${question.categoryName}</a></td>
									<td class="answer_count" style="text-align: center">${question.countAnswer }</td>
									<td class="first_write_date">${question.questionRegdate }</td>
								</tr>
							</tbody>`
				
		});
		text += `</table>
				<div class="page">
					<a href="#">1</a>
				</div>
			</div>`
			
	}
	$field.html(text);
}

function showAnswerList(answers){
	
	let text = "";
	
	if(answers.length == 0){
		text = `
			<h4 class="title">
				질문이 없습니다.
			</h4>
		`
	}else {
		
			text += `<div class="content">
			<dl class="my_question_info">
				<dt>
					<span>답글 목록</span>
				</dt>
			</dl>
			
				<table class="my_question_content" width="100%">
				<colgroup>
					
	        			<col width="3000">
	        			<col width="500">
						<col width="500">
	        			<col width="1200">
	    		</colgroup>
				
					<thead>
						<tr>
							<th>제목</th>
	               			<th>카테고리</th>
	   	         			<th>좋아요</th>
	                		<th>작성날짜</th>
	                	</tr>
					</thead>`
		answers.forEach(answer => {
					text += `<tbody>
						<tr>
							<td class="qna">
								<dl>
									<dt>
										<a href="${contextPath}/templates/board/detailsPageMine.board?questionId=${answer.questionId}">${answer.answerTitle }</a>
									</dt>
								
								</dl>
							</td>
							
							<td class="category">
								<a href="#">${answer.categoryName }</a>
							</td>
							
							
							<td class="answer_count" style="text-align:center">
								 ${answer.countAnswerLike}
							</td>
							
							
							<td class="first_write_date">
								${answer.answerRegdate}
							</td>
						</tr>
					</tbody>
					`
		});
		text += `</table>
		<div class="page">
			<a href ="#">1</a>
		</div>	
	</div>`;
	}
	$field.html(text);
}


function showUpdateContent(myInfo){
	
	let text = `<div class="content">
			<form action="/updateInfo.mypage" method="POST" id="form_tag" enctype="multipart/form-data">
				<fieldset>
					<table class="my_info_tbl">
						<tbody>
							<tr>
								<th>별명</th>
								<td>
									<input type="text" id="nick_name" name="memberNickname" class="input_text"  maxlength='20' style="width: 229px; margin-left: 65px;" title="별명 입력" placeholder="별명" value="${myInfo.memberNickname}"> 
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
								<input type="text" id="name" value="${myInfo.memberName}" name="memberName" class="input_text" style="width: 229px;" placeholder="이름">
								</td>
							</tr>

							<tr>
								<th>나이</th>
								<td>
									<input type="text" id="age" value="${myInfo.memberAge}" name="memberAge" class="input_text" style="width: 229px;" placeholder="나이" />
								</td>
							</tr>
							
							<tr>
								<th>이메일</th>
								<td>
									<input type="text" id ="email" value="${myInfo.memberEmail}" name="memberEmail" class="input_text" style="width: 229px;" placeholder="이메일">
									<p class="help_email"></p>
								</td>
							</tr>


							<tr>
								<th>새로운 비밀번호</th>
								<td>
                                    <input type="password" name="newPassword" id="password_input" placeholder="영어, 숫자, 특수문자 중 2가지 이상 10~20자">
                                    <p class="help_password" style="color:coral"></p>
								</td>
							</tr>
							<tr>
								<th>비밀번호 확인</th>
								<td>
                                    <input type="password" name="checkPassword" id="password_check" placeholder="비밀번호 재입력">
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
		<script>
			let contextPath="`+contextPath+`";
		</script>
		<script src="`+contextPath+`/static/js/mypage/myUpdateInfo.js"></script>`

	$field.html(text);
}





/*=======================================================================*/
/*퍼블리싱*/
/*=======================================================================*/


























	
