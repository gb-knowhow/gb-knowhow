function collapse(element) {
    var before = document.getElementsByClassName("active")[0]               // 기존에 활성화된 버튼
    if (before && document.getElementsByClassName("active")[0] != element) {  // 자신 이외에 이미 활성화된 버튼이 있으면
        before.nextElementSibling.style.maxHeight = null;   // 기존에 펼쳐진 내용 접고
        before.classList.remove("active");                  // 버튼 비활성화
    }
    element.classList.toggle("active");         // 활성화 여부 toggle

    var content = element.nextElementSibling;
    if (content.style.maxHeight != 0) {         // 버튼 다음 요소가 펼쳐져 있으면
        content.style.maxHeight = null;         // 접기
    } else {
        content.style.maxHeight = content.scrollHeight + "px";  // 접혀있는 경우 펼치기
    }
}

var Target = document.getElementById("clock");
function clock() {
    var time = new Date();

    var month = time.getMonth();
    var date = time.getDate();
    var day = time.getDay();
    var week = ['일', '월', '화', '수', '목', '금', '토'];

    var hours = time.getHours();
    var minutes = time.getMinutes();
    var seconds = time.getSeconds();

    Target.innerText = 
    `${month + 1}월 ${date}일 ${week[day]}요일 ` +
    `${hours < 10 ? `0${hours}` : hours}:${minutes < 10 ? `0${minutes}` : minutes}:${seconds < 10 ? `0${seconds}` : seconds}`;
        
}
clock();
setInterval(clock, 1000); // 1초마다 실행

// 체크박스 전체 선택
$(".checkbox-group").on("click", "#check-all", function () {
    $(this).parents(".checkbox-group").find('input').prop("checked", $(this).is(":checked"));
});

// 체크박스 개별 선택
$(".checkbox-group").on("click", ".normal", function() {
    var is_checked = true;

    $(".checkbox-group .normal").each(function(){
        is_checked = is_checked && $(this).is(":checked");
    });

    $("#check-all").prop("checked", is_checked);
});


var check = $("input[type='checkbox']");
check.click(function(){
	$(this).parents(".right-contents").children(".status").toggle();
});


/* 모달창 js */

function modal(id) {
    var zIndex = 9999;
    var modal = $('#' + id);

    // 모달 div 뒤에 희끄무레한 레이어
    var bg = $('<div>')
        .css({
            position: 'fixed',
            zIndex: zIndex,
            left: '0px',
            top: '0px',
            width: '100%',
            height: '100%',
            overflow: 'auto',
            // 레이어 색갈은 여기서 바꾸면 됨
            backgroundColor: 'rgba(0,0,0,0.4)'
        })
        .appendTo('body');

    modal
        .css({
            position: 'fixed',
            boxShadow: '0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19)',

            // 시꺼먼 레이어 보다 한칸 위에 보이기
            zIndex: zIndex + 1,

            // div center 정렬
            top: '50%',
            left: '50%',
            transform: 'translate(-50%, -50%)',
            msTransform: 'translate(-50%, -50%)',
            webkitTransform: 'translate(-50%, -50%)'
        })
        .show()
        // 닫기 버튼 처리, 시꺼먼 레이어와 모달 div 지우기
        .find('.modal_close_btn')
        .on('click', function() {
            bg.remove();
            modal.hide();
        });
}

/*모달창 세부사항 보기*/
function openModal(modalNum){
	 modal('my_modal'+modalNum);
}


function loadFile(input) {
    var file = input.files[0];
    
    var name = document.getElementById('fileName');
    name.textContent = file.name;
    
    var newImage = document.createElement("img");
    newImage.setAttribute("class", 'img');


    newImage.src = URL.createObjectURL(file);   

    newImage.style.width = "70%";
    newImage.style.height = "70%";
    newImage.style.display = "none";   //버튼을 누르기 전까지는 이미지 숨기기
    newImage.style.objectFit = "contain";

    var container = document.getElementById('image-show');
    container.appendChild(newImage);
};


/*멘티 삭제 js 넣기*/
$('.mentee-delete-button').on("click", function() {
	if($("input:checkbox[id='check1']:checked").length==0) {
		alert("삭제할 항목을 선택해 주세요");
		return;
	}
	var txt = '';
	
	$("input:checkbox[id='check1']:checked").each(function(i,e){
		
		let menteeId = $(this).parent().children(".user-num").text();
		
		/*$.ajax({
			url: contextPath + "/adminMenteeDeleteAction.admin",
			data:{menteeId: menteeId},
			success: function(result){
				alert(result + "삭제 완료");				
			}
			
		});*/
		
		txt+="&"+"menteeId=" + menteeId ;
		
	});
		txt=txt.replace("&", "");
		location.href = contextPath + "/adminMenteeDeleteAction.admin?"+txt;

});





/*멘토 삭제 js 넣기*/
$('.member-delete-button').on("click", function() {
	if($("input:checkbox[id='check1']:checked").length==0) {
		alert("삭제할 항목을 선택해 주세요");
		return;
	}
	var txt = '';
	
	$("input:checkbox[id='check1']:checked").each(function(i,e){
		
		let mentorId = $(this).parent().children(".user-num").text();
		
		txt+="&"+"mentorId=" + mentorId ;
		
	});
		txt=txt.replace("&", "");
		location.href = contextPath + "/adminMentorDeleteAction.admin?"+txt;

});

/*멘토 답변 삭제 js 넣기*/
$('.mentor-answer-delete-button').on("click", function() {
	if($("input:checkbox[id='check4']:checked").length==0) {
		alert("삭제할 항목을 선택해 주세요");
		return;
	}
	var txt = '';
	
	$("input:checkbox[id='check4']:checked").each(function(i,e){
		console.log($(this));
		let answerId = $(this).parent().parent().children(".answer-num").text();
		txt+="&"+"answerId=" + answerId ;
		
	});
		txt=txt.replace("&", "");
		location.href = contextPath + "/adminMentorAnswerDeleteAction.admin?"+txt;

});

/*멘티 질문 목록 삭제 js*/
$('.mentee-question-delete-button').on("click", function() {
	if($("input:checkbox[id='check1']:checked").length==0) {
		alert("삭제할 항목을 선택해 주세요");
		return;
	}
	var txt = '';
	
	$("input:checkbox[id='check1']:checked").each(function(i,e){
		console.log($(this));
		let questionId = $(this).parent().parent().children(".ask-num").text();
		txt+="&"+"questionId=" + questionId ;
		
	});
		txt=txt.replace("&", "");
		location.href = contextPath + "/adminQuestionDeleteAction.admin?"+txt;
});


/*질문의 댓글 목록 삭제 js*/
$('.comment-delete-button').on("click", function() {
	if($("input:checkbox[id='check1']:checked").length==0) {
		alert("삭제할 항목을 선택해 주세요");
		return;
	}
	var txt = '';
	
	$("input:checkbox[id='check1']:checked").each(function(i,e){
		console.log($(this));
		let commentId = $(this).parent().parent().children(".ask-reply-num").text();
		txt+="&"+"commentId=" + commentId ;
		
	});
		txt=txt.replace("&", "");
		location.href = contextPath + "/adminQuestionCommentDeleteAction.admin?"+txt;
});

/*답글의 댓글 목록 삭제 js*/
$('.answer-comment-delete-button').on("click", function() {
	if($("input:checkbox[id='check1']:checked").length==0) {
		alert("삭제할 항목을 선택해 주세요");
		return;
	}
	var txt = '';
	
	$("input:checkbox[id='check1']:checked").each(function(i,e){
		console.log($(this));
		let answerCommentId = $(this).parent().parent().children(".answer-reply-num").text();
		txt+="&"+"answerCommentId=" + answerCommentId ;
		
	});
		txt=txt.replace("&", "");
		location.href = contextPath + "/adminAnswerCommentDeleteAction.admin?"+txt;
});

/*이력서 목록 삭제 js*/
$('.resume-delete-button').on("click", function() {
	if($("input:checkbox[id='check1']:checked").length==0) {
		alert("삭제할 항목을 선택해 주세요");
		return;
	}
	var txt = '';
	
	$("input:checkbox[id='check1']:checked").each(function(i,e){
		console.log($(this));
		let resumeId = $(this).parent().parent().children(".resume-num").text();
		txt+="&"+"resumeId=" + resumeId ;
		
	});
		txt=txt.replace("&", "");
		location.href = contextPath + "/resumeListDeleteAction.resume?"+txt;
});
