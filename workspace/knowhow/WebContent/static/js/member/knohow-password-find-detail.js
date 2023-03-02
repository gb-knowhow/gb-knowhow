const buttonEmail = document.querySelector(".email-bt");
const errId = document.querySelector(".err-id");
const inputId = document.querySelector("#id");

let flag1 = false;

buttonEmail.addEventListener("click",function(){
    var inputEmail = document.querySelector("#email").value;
    var regExp1 = '[a-z0-9]+@naver.com';
    var regExp2 = '[a-z0-9]+@google.com';
    var regExp3 = '[a-z0-9]+@daum.net';
    if(inputEmail.length <= 0){
        console.log("1");
        alert("이메일을 입력해주세요.")
    }else if(inputEmail.match(regExp1) == null && inputEmail.match(regExp2) == null && inputEmail.match(regExp3) == null){
        console.log("2");
        alert("이메일 형식이 올바르지 않습니다.")
    }else {
        console.log("3");
        alert("발송 되었습니다")
    }
});

inputId.addEventListener("blur",function(){
    var idInputValue = document.querySelector("#id").value;
    errId.style.display = 'block';
    if(idInputValue.length < 1){
        errId.innerHTML = '아이디를 입력해주세요';
        errId.style.color = 'red';
        errId.style.fontSize = '10px';
    }else{
        errId.style.display = 'none';
        flag1 = true;
    }
});