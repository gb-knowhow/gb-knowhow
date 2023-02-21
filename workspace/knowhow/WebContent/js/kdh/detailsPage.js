
/* 본 질문 원글의 댓글에 글자 수 제한을 주고 알럿을 띄움. 현재 글자수를 카운팅 해줌 */
$('#wr_1').keyup(function(){
    var content = $(this).val();
    $('#counter').html(content.length);
    if (content.length > 1000){
      alert("최대 1000자까지 입력 가능합니다.");
      $(this).val(content.substring(0, 1000));
      $('#counter').html(1000);
    }
});

/* 답글의 댓글에 글자 수 제한을 주고 알럿을 띄움. 현재 글자수를 카운팅 해줌 */
$('#wr_2').keyup(function(){
    var content = $(this).val();
    $('#counter2').html(content.length);
    if (content.length > 1000){
      alert("최대 1000자까지 입력 가능합니다.");
      $(this).val(content.substring(0, 1000));
      $('#counter2').html(1000);
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
      } else {
          $('#questionCommentList').show();
      }
    })
});

/* 답글의 댓글달기를 누르면 댓글 다는 창과 목록이 나온다. */
$(function() {
    $('.button_reply_comment').click(function() {
        let status = $('#questionCommentList2').css('display');
      if (status == 'block') {
          $('#questionCommentList2').hide();
      } else {
          $('#questionCommentList2').show();
      }
    })
});


/* 본 질문의 댓글에 페이지 버튼을 클릭 했을 때 클릭 한 페이지를 알도록 그 버튼의 배경색과 글자 색을 변경 */
var changePaginator = document.getElementsByClassName("_pagingBtn1");
function handleClick(event) {
  console.log(event.target.classList);

  if (event.target.classList[1] === "clicked") {
    event.target.classList.remove("clicked");
  } else {
    for (var i = 0; i < changePaginator.length; i++) {
        changePaginator[i].classList.remove("clicked");
    }

    event.target.classList.add("clicked");
  }
}

function init() {
  for (var i = 0; i < changePaginator.length; i++) {
    changePaginator[i].addEventListener("click", handleClick);
  }
}
init();



/* 답글의 댓글에 페이지 버튼을 클릭 했을 때 클릭 한 페이지를 알도록 그 버튼의 배경색과 글자 색을 변경 */
var changePaginator = document.getElementsByClassName("_pagingBtn2");
function handleClick(event) {
  console.log(event.target.classList);

  if (event.target.classList[1] === "clicked") {
    event.target.classList.remove("clicked");
  } else {
    for (var i = 0; i < changePaginator.length; i++) {
        changePaginator[i].classList.remove("clicked");
    }

    event.target.classList.add("clicked");
  }
}

function init() {
  for (var i = 0; i < changePaginator.length; i++) {
    changePaginator[i].addEventListener("click", handleClick);
  }
}
init();

