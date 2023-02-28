// 동의버튼
const check =  document.querySelector(".check_select");
// 필수입력사항 아이디
const input = document.querySelector("#input_text");
// 필수입력사항 내용
const text = document.querySelector(".textarea");
// 동의버튼
const agree = document.querySelector(".input-agree");
// 문의하기 버튼
const button1 = document.querySelector(".button1");
//에러메시지
const err = document.querySelector(".arr");
const err2 = document.querySelector(".err2");



// 필수입력사랑 확인 플래그
let flag1 = false;
let flag2 = false;
let flag3 = false;



check.addEventListener("blur", function(){
    var idInputValue = document.querySelector(".check_select").value;
    console.log("들어옴");
    if(idInputValue.length < 1){
        err.innerHTML = "필수 정보입니다.";
        err.style.color = 'red';
    } else{
        err.innerHTML = "";
        flag1 = true;
    }
});

text.addEventListener("blur", function(){
    var idInputValue = document.querySelector(".textarea").value;
    console.log("들어옴");
    if(idInputValue.length < 1){
        err2.innerHTML = "필수 정보입니다.";
        err2.style.color = 'red';
    } else{
        err2.innerHTML = "";
        flag2 = true;
    }
});

agree.addEventListener("click",function(){
    var button1 = document.querySelector(".button1");

    if(flag3 == true){
        console.log("sd")
        agree.style.background = 'url("https://ssl.pstatic.net/static/help/new_help/checkbox_btn.svg") no-repeat';
        agree.style.backgroundSize = '22px 22px';
    }
});

agree.addEventListener("click",function(){
    var button1 = document.querySelector(".button1");

    if(flag1 == true && flag2 == true){
        button1.style.background = '#388C57';
        button1.style.borderColor = '#388C57';
        button1.style.color = '#fff';
        agree.style.background = 'url("https://ssl.pstatic.net/static/help/new_help/checkbox_btn_on.svg") no-repeat';
        agree.style.backgroundSize = '22px 22px';
        flag3 = true;
    }else{
        alert("필수사항을 모두 입력해주세요");
    }
});

button1.addEventListener("click",function(){
    if(flag1 == false && flag2 == false){
        alert("필수 사항을 입력해주세요");
    }else if(flag2 == false){
        alert("문의 내용을 입력해주세요");
    }else if(flag1 == false){
        alert("이메일을 입력해주세요");
    }else if(flag1 == true && flag2 == true){
        
    }
});



// color: #fff; */
// border-color: blue;
// background-color: blue;


$('#moText2CA').keyup(function(){
    var content = $(this).val();
    $('#writeCounter').html(content.length);
    if (content.length > 1000){
      alert("최대 1000자까지 입력 가능합니다.");
      $(this).val(content.substring(0, 1000));
      $('#writeCounter').html(1000);
    }
});
