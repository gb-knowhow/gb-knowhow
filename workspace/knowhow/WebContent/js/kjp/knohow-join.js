// input 아이디 아이디
const inputId = document.querySelector('#id');
// input 비밀번호 아이디
const inputPassword = document.querySelector('#password');
// input 비밀번호 체크 아이디
const inputPasswordCheck = document.querySelector('#password-check');
// input 이메일 아이디
const inputEmail = document.querySelector('#email');
// input 닉네임 아이디
const inputNickname = document.querySelector('#nick-name');
// input 나이 아이디
const inputAge = document.querySelector('#age');
// input 비밀번호 표시 버튼
const changePassword1 = document.querySelector('.password-eye1');
const changePassword3= document.querySelector('.password-eye3');
// 두번째 체크 비밀번호 표시 버튼
const changePassword2= document.querySelector('.password-eye2');
const changePassword4= document.querySelector('.password-eye4');

// 완료버튼
const button = document.querySelector('.complete-button');
// 동의
const label = document.querySelector('.for-label');

// 에러 메세지 창
const errId = document.querySelector('.err-id');
const errPassword = document.querySelector('.err-password');
const errPasswordCheck = document.querySelector('.err-password-check');
const errEmail = document.querySelector('.err-email');
const errNick = document.querySelector('.err-nick');
const errAge = document.querySelector('.err-age');

// 필수입력사랑 확인 플래그
let flag1 = false;
let flag2 = false;
let flag3 = false;
let flag4 = false;
let flag5 = false;
let flag6 = false;
let flag7 = false;


// 비밀번호 1
changePassword1.addEventListener("click",function(){
    var password = document.querySelector('#password').value;

    if(password.length > 1){
        inputPassword.type = 'text';
        changePassword1.style.display = 'none'; 
        changePassword3.style.display = 'block'; 
    }
});

changePassword3.addEventListener("click",function(){
    var password = document.querySelector('#password').value;
    
    if(password.length > 1){
        inputPassword.type = 'password';
        changePassword1.style.display = 'block'; 
        changePassword3.style.display = 'none'; 
    }
});

// 비밀번호 2
changePassword2.addEventListener("click",function(){
    var password = document.querySelector('#password-check').value;

    if(password.length > 1){
        inputPasswordCheck.type = 'text';
        changePassword2.style.display = 'none'; 
        changePassword4.style.display = 'block'; 
    }
});

changePassword4.addEventListener("click",function(){
    var password = document.querySelector('#password-check').value;
    
    if(password.length > 1){
        inputPasswordCheck.type = 'password';
        changePassword2.style.display = 'block'; 
        changePassword4.style.display = 'none'; 
    }
});


inputId.addEventListener("blur", function(){
    var idInputValue = document.querySelector("#id").value;
    console.log("들어옴");
    if(idInputValue.length < 1){
        errId.style.display = "block";
    } else{
        errId.style.display = "none";
        inputId.style.background = '#93a0ea30';
        flag1 = true;
    }
});
inputPassword.addEventListener("blur", function(){
    var idInputValue = document.querySelector("#password").value;
    console.log("들어옴");
    if(idInputValue.length < 1){
        errPassword.style.display = "block";
    } else{
        errPassword.style.display = "none";
    }
});
inputPasswordCheck.addEventListener("blur", function(){
    var idInputValue = document.querySelector("#password-check").value;
    console.log("들어옴");
    if(idInputValue.length < 1){
        errPasswordCheck.style.display = "block";
    } else{
        errPasswordCheck.style.display = "none";
        
    }
});
inputNickname.addEventListener("blur", function(){
    var idInputValue = document.querySelector("#nick-name").value;
    console.log("들어옴");
    if(idInputValue.length < 1){
        errNick.style.display = "block";
    } else{
        errNick.style.display = "none";
        inputNickname.style.background = '#93a0ea30';
        flag5 = true;
    }
});
inputAge.addEventListener("blur", function(){
    var idInputValue = document.querySelector("#age").value;
    console.log("들어옴");
    if(idInputValue.length < 1){
        errAge.style.display = "block";
    } else{
        errAge.style.display = "none";
        inputAge.style.background = '#93a0ea30';
        flag6 = true;
    }
});



inputEmail.addEventListener("blur", function(){
    var idInputValue = document.querySelector("#email").value;
    var regExp1 = '[a-z0-9]+@naver.com';
    var regExp2 = '[a-z0-9]+@google.com';
    var regExp3 = '[a-z0-9]+@daum.net';
    if(idInputValue.length <= 0){
        console.log("11");
        errEmail.style.display = "block";
    }else if(idInputValue.match(regExp1) == null && idInputValue.match(regExp2) == null && idInputValue.match(regExp3) == null){
        errEmail.style.display = "block";
        console.log("22")
        errEmail.innerHTML = '＊이메일 형식을 확인해주세요';
    }else{
        console.log("33");
        errEmail.style.display = "none";
        inputEmail.style.background = '#93a0ea30';
        flag4 = true;
    }
});

inputPassword.addEventListener("blur", function(){
    var passwordInputValue = document.querySelector("#password").value;
    var regExp = /^(?!((?:[A-Za-z]+)|(?:[~!@#$%^&*()_+=]+)|(?:[0-9]+))$)[A-Za-z\d~!@#$%^&*()_+=]{10,}$/;
    if(passwordInputValue.length <= 0){
        console.log("11");
        errPassword.style.display = "block";
    }else if(passwordInputValue.match(regExp) != null){
        console.log("22")
        errPassword.style.display = "none";
        inputPassword.style.background = '#93a0ea30';
        flag2 = true;
        
    }else if(passwordInputValue.length >= 1){
        console.log("33");
        errPassword.style.display = "block";
        errPassword.innerHTML = '＊영문,숫자, 특수문자를 혼합하여 8자리 ~ 20자리 이내로 입력해주세요.';
        errPassword.style.fontSize = '10px';
    }else if(passwordInputValue.search(/\s/) != -1){
        errPasswordCheck.innerHTML = '비밀번호는 공백없이 작성해주세요';
    }
});
inputPasswordCheck.addEventListener("blur", function(){
    var passwordInputValue = document.querySelector("#password").value;
    var passwordInput = document.querySelector("#password-check").value;
    var regExp = /^(?!((?:[A-Za-z]+)|(?:[~!@#$%^&*()_+=]+)|(?:[0-9]+))$)[A-Za-z\d~!@#$%^&*()_+=]{10,}$/;
    if(flag2 == true && passwordInput.length == passwordInputValue.length){
        console.log("11");
        errPasswordCheck.style.display = 'block';
        errPasswordCheck.innerHTML = "일치합니다";
        errPasswordCheck.style.color = 'blue';
        inputPasswordCheck.style.background = '#93a0ea30';
        flag3 = true;
        
    }else{
        errPasswordCheck.style.display = 'block';
        errPasswordCheck.innerHTML = "비밀번호를 확인해주세요";
        errPasswordCheck.style.color = 'red';
    }
});


button.addEventListener("click", function(){
    if(flag1 == true && flag2 == true && flag3 == true && flag4 == true && flag5 == true && flag6 == true && flag7 == true){
        alert("회원가입이 완료 되었습니다");
        location.replace(location.href);
        // window.location.href = 'https://www.naver.com';
    }else if(flag1 == false){
        alert("아이디를 입력해주세요")
    }else if(flag2 == false){
        alert("비밀번호를 입력해주세요")
    }else if(flag3 == false){
        alert("비밀번호 확인란을 입력해주세요")
    }else if(flag4 == false){
        alert("이메일을 입력해주세요")
    }else if(flag5 == false){
        alert("닉네임을 입력해주세요")
    }else if(flag6 == false){
        alert("나이를 입력해주세요")
    }else if(flag7 == false){
        alert("이용약관을 입력해주세요")
    }
});




label.addEventListener("click",function(){
    var button1 = document.querySelector(".checkbox");
    var icon = document.querySelector(".icon-checkbox");
    
    if(flag1 == true && flag2 == true && flag3 == true && flag4 == true && flag5 == true && flag6 == true){
        console.log("sd")
        button1.style.background = 'blue';
        button1.style.borderColor = 'blue';
        icon.style.color = '#fff';
        icon.style.background = 'url("https://ssl.pstatic.net/static/help/new_help/checkbox_btn_on.svg") no-repeat';
        icon.style.backgroundSize = '17px 18px';
        flag7 = true;
    }else{
        alert("필수 입력사항을 확인해주세요")
    }

});

const file = document.querySelector('input[type=file]');
const imgDiv = document.querySelector('label[for=attach] div');
const closeSpan = document.querySelector('.cancel');
const input = document.querySelector('#attach');
const fileName = document.querySelector('.file-name');

// x 버튼을 누르면, 기본 이미지로 변경!
closeSpan.addEventListener('click', function (e){
    e.preventDefault();
    input.value = "";
    fileName.innerHTML = "";
    this.style.display = 'none';
    imgDiv.style.backgroundImage = `url('../../css/kjp/file2.png')`;
});

file.addEventListener('change', function (e) {
    let name = e.target.files[0].name;
    fileName.innerHTML = name;
    closeSpan.style.display = "inline-block";
    this.style.display = 'none';
    let reader = new FileReader();
    reader.readAsDataURL(e.target.files[0]);
    reader.onload = function (e) {
        let result = e.target.result;
        if (result.includes('image')) {
            imgDiv.style.backgroundImage = `url('${result}')`;
        } else {
			this.style.display = 'block';
            imgDiv.style.backgroundImage = `url('../../css/kjp/file2.png')`;
        }
    };
});