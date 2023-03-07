/* 본 질문 원글의 댓글에 글자 수 제한을 주고 알럿을 띄움. 현재 글자수를 카운팅 해줌 */
$('#wr_1').keyup(function(){
    var content = $(this).val();
    $('#counter').html(content.length);
    if (content.length > 500){
      alert("최대 500자까지 입력 가능합니다.");
      $(this).val(content.substring(0, 500));
      $('#counter').html(500);
    }
});

/* 답글의 댓글에 글자 수 제한을 주고 알럿을 띄움. 현재 글자수를 카운팅 해줌 */
$('#wr_2').keyup(function(){
    var content = $(this).val();
    $('#counter2').html(content.length);
    if (content.length > 500){
      alert("최대 500자까지 입력 가능합니다.");
      $(this).val(content.substring(0, 500));
      $('#counter2').html(500);
    }
});

/* 원글의 대댓글의 글자 수 제한을 줌. 현재 글자수도 카운팅 해줌 */
$('#wr_re_reply').keyup(function(){
    var content = $(this).val();
    $('#counter-reply').html(content.length);
    if (content.length > 200){
      alert("최대 200자까지 입력 가능합니다.");
      $(this).val(content.substring(0, 200));
      $('#counter-reply').html(200);
    }
});

/* 답글의 대댓글의 글자 수 제한을 줌. 현재 글자수도 카운팅 해줌 */
$('#wr_reply_re_reply').keyup(function(){
    var content = $(this).val();
    $('#counter-reply-re-reply').html(content.length);
    if (content.length > 200){
      alert("최대 200자까지 입력 가능합니다.");
      $(this).val(content.substring(0, 200));
      $('#counter-reply-re-reply').html(200);
    }
});


/* 
$('#wr_2').keyup(function (e){
    var content = $(this).val();
    $('#counter2').html(content.length);    //글자수 실시간 카운팅

    if (content.length > 1000){
        alert("최대 1000자까지 입력 가능합니다.");
        $(this).val(content.substring(0, 1000));
    }
}); */



/* 본 질문에 댓글달기를 누르면 댓글 다는 창과 목록이 나온다. */
$(function() {
    $('.button_comment').click(function() {
        let status = $('#questionCommentList').css('display');
      if (status == 'block') {
			$('#questionCommentList').hide();
			$('#questionCommentList3').hide();
      } else {
          $('#questionCommentList').show();
      }
    })
});

/* 답글의 댓글달기를 누르면 댓글 다는 창과 목록이 나온다. */
/*$(function() {
    $('.button_reply_comment').click(function() {
        let status = $('#questionCommentList2').css('display');
      if (status == 'block') {
			$('#questionCommentList2').hide();
			$('#questionCommentList4').hide();
      } else {
          $('#questionCommentList2').show();
      }
    })
});*/

const $answerComment = $(".questionButton_comment");
const $questionCommentList2 = $("#questionCommentList2");

$answerComment.each((i, answer) => {
	$(answer).on("click", function(e) {
		console.log($(this));
		
		let status = $('#questionCommentList2').css('display');
		
		if (status == 'block') {
			$('#questionCommentList2').hide();
	  } else {
	      $(questionCommentList2).show();
	  }
	});
});


/* 본 글에 대댓글 달기를 누르면 대댓글 다는 창과 목록이 나온다. */
$(function() {
    $('.re-replyWrite').click(function() {
        let status = $('#questionCommentList3').css('display');
      if (status == 'block') {
          $('#questionCommentList3').hide();
      } else {
          $('#questionCommentList3').show();
      }
    })
});

/* 답글에 대댓글 달기를 누르면 대댓글 다는 창과 목록이 나온다. */
$(function() {
    $('.reply-re-replyWrite').click(function() {
        let status = $('#questionCommentList4').css('display');
      if (status == 'block') {
          $('#questionCommentList4').hide();
      } else {
          $('#questionCommentList4').show();
      }
    })
});


/* 질문의 좋아요 버튼 클릭시 이미지 변경 */
$(function () {
	let num=0;
	$(".button_like").click(function () {
		if(num == 0) {
			$(".button_like img").attr("src", "/css/kdh/image/love.png");
			num = 1;
		}else {
			$(".button_like img").attr("src", "/css/kdh/image/hate.png");
			num = 0;
		}
	});
});

/* 답글의 좋아요 버튼 클릭시 이미지 변경 */
$(function () {
	let num=0;
	$(".button_like2").click(function () {
		if(num == 0) {
			$(".button_like2 img").attr("src", "/css/kdh/image/love.png");
			num = 1;
		}else {
			$(".button_like2 img").attr("src", "/css/kdh/image/hate.png");
			num = 0;
		}
	});
});


/*댓글 ajax*/
const $questionId = $("input[name='questionId']"); 
const $button = $(".button_register");
const $deleteBtn = $("._reportBtn");
/*답글 달기 ajax*/
const $answer = $(".questionButton_answer");

const questionDetailService = (function(){
	function questionCommentWrite(questionId, replyContent) {
		$.ajax({
			url: contextPath + "/questionCommentWriteAction.questionComment",
			data: {questionId: questionId, replyContent: replyContent},
			success: function() {
				location.reload();
			},
			error: function(a, b, c) {
				console.log(a);
				console.log(b);
				console.log(c);
			}
		});
	}
	
	function questionCommentDelete(commentId) {
		$.ajax({
			url: contextPath + "/questionCommentDeleteAction.questionComment",
			data: {commentId: commentId},
			success: function() {
				location.reload();
			}
		});
	}
	
	
	return {questionCommentWrite: questionCommentWrite, questionCommentDelete: questionCommentDelete}
})();

$button.each((i, button) => {
	$(button).on("click", function(e) {
		let questionId = $questionId.val();
		let replyContent = $(".placeholder").val();
		questionDetailService.questionCommentWrite(questionId, replyContent);
	});	
});

$deleteBtn.each((i, button) => {
	$(button).on("click", function(e) {
		let commentId = $(button).parents().siblings(".question-commentList-nickname").children().first().text();
		
		questionDetailService.questionCommentDelete(commentId);
	});
});



















