
alert("Im in!")
const memberId = 1;
const $field = $("#list-here");

	
function clolo(){
	questionService.list(showList);
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

/*=======================================================================*/
/*이벤트, DOM, Ajax*/
/*=======================================================================*/
questionService.list(showList);

function showList(questions){
	
	console.log(questions);
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
						<span>좋아요 목록</span>
					</dt>
					<dd>2</dd>
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
							<th>디렉토리</th>
							<th>답글</th>
							<th>작성</th>
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
									<td class="category"><a href="${contextPath}/templates/board/questionList.board?categoryId=${question.categoryId}">${question.categoryId }</a></td>
									<td class="answer_count" style="text-align: center">답글</td>
									<td class="first_write_date">${question.questionUpdDate }</td>
								</tr>
							</tbody>`
				
		});
		text += `</table>
				<div class="page">
					<a href="#">1</a>
				</div>

				<div class="search">

					<fieldset>
						<form action="">
							<input type="text" name="" class="keyword"
								placeholder="키워드를 입력해주세요" /> <input type="image"
								src="https://ssl.pstatic.net/static/kin/09renewal/btn_search.gif">
							<div class="question_button">
								<a href="#" class="question"><img
									src="https://ssl.pstatic.net/static/kin/09renewal/btn_question.gif"
									width="92" height="30" alt="질문하기"></a>
							</div>
						</form>
					</fieldset>

				</div>

			</div>`
			
	}
	$field.append(text);
}
/*=======================================================================*/
/*퍼블리싱*/
/*=======================================================================*/


























	
