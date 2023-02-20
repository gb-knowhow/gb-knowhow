<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edges">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>노하우 : 회원가입</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/kjp/join.css"/>
    <link rel="shortcut icon" sizes="114x114" type="image/x-icon" href="">
</head>
<body>
    <div id="wrap">
        <!-- ----------헤더 ---------- -->
        <header id="header">
            <h1>
                <a href="#" class="logo">
                   <img src="knohow.jpeg">
                </a>
            </h1>
        </header>
        <!-- ---------- 메인 ---------- -->
        <main id="main">
            <div id="main-inner-wrapper">
                <div id="sign-up-top">
                    <div>   <!-- 아이디 부분 -->
                        <h3 class="input-title email"><label>아이디</label></h3>
                        <span class="input-wrapper" id="input-id-wrapper">
                            <input type="text" maxlength="20" id="id-input">
                        </span>
                        <span class="warning" id="email-warning">
                            필수 정보입니다.
                        </span>
                    </div>
                    <div>   <!-- 비밀번호, 비밀번호 확인 부분 -->
                        <h3 class="input-title"><label>비밀번호</label></h3>
                        <span class="input-wrapper input-password-wrapper" id="password-wrapper">
                            <input type="password" maxlength="20" class="input-password" id="password-input">
                            <span id="password-lock"></span>
                        </span> 
                        <span class="warning" id="password-warning">
                            8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.
                        </span>
                        <h3 class="input-title"><label>비밀번호 재확인</label></h3>
                        <span class="input-wrapper input-password-wrapper" id="password-check-wrapper">
                            <input type="password" maxlength="20" id="password-check-input">
                            <span id="password-lock2"></span>
                        </span>
                        <span class="warning" id="password-check-warning">
                            비밀번호가 일치하지 않습니다.
                        </span>
                    </div>
                </div>
                <!-- 아이디 비밀번호 까지 -->
                <!-- 회원 정보 입력란 -->
                <div id="sign-up-middle">
                    <h3 class="input-title"><label>이름</label></h3>
                        <span class="input-wrapper" id="input-name-wrapper">
                            <input type="text" maxlength="20" id="name-input">
                        </span>
                        <span class="warning" id="name-warning">
                            필수 정보입니다.
                        </span>
                    <div id="birth-wrapper">
                        <h3 class="input-title" id="birth-title"><label>생년월일</label></h3>
                        <div id="birth-inner-wrapper">
                            <span class="birth-input-wrapper" id="year-wrapper">
                                <input type="text" placeholder="년(4자)" class="birth-input-text" id="birth-year-input">
                            </span>
                            <span class="birth-input-wrapper" id="month-wrapper">
                                <select name="MM" id="month">
                                    <option value="">월</option>
                                    <option value="1">1월</option>
                                    <option value="2">2월</option>
                                    <option value="3">3월</option>
                                    <option value="4">4월</option>
                                    <option value="5">5월</option>
                                    <option value="6">6월</option>
                                    <option value="7">7월</option>
                                    <option value="8">8월</option>
                                    <option value="9">9월</option>
                                    <option value="10">10월</option>
                                    <option value="11">11월</option>
                                    <option value="12">12월</option>
                                </select>
                            </span>
                            <span class="birth-input-wrapper" id="day-wrapper">
                                <input type="text" placeholder="일" class="birth-input-text" id="birth-day-input">
                            </span>
                        </div>
                        <span class="warning" id="birth-warning">
                            태어난 년도 4자리를 정확하게 입력하세요.
                        </span>
                        <!-- 생일 끝 -->
                        <div id="gender-wrapper">
                            <h3 class="input-title" id="gender-title"><label>성별</label></h3>
                            <div id="gender-select-wrapper">
                                <select name="gender" id="gender-select">
                                    <option value="">성별</option>
                                    <option value="M">남자</option>
                                    <option value="W">여자</option>
                                    <option value="N">선택안함</option>
                                </select>
                            </div>
                            <span class="warning" id="gender-warning">
                                필수 정보입니다.
                            </span>
                        </div>
                        <!-- 성별 끝 -->
                        <div id="email-for-check">
                            <h3 class="input-title"><label>본인 확인 이메일<span>(선택)</span></label></h3>
                            <div id="email-input-wrapper">
                                <input type="text" placeholder="선택입력" class="input" id="input-email">
                            </div>
                            <span class="warning" id="email-warning">
                                이메일 주소를 다시 확인해주세요.
                            </span>
                            <!-- <span class="warning">
                                이메일 주소를 다시 확인해주세요.
                            </span> -->
                        </div>
                        <!-- 이메일 끝 -->
                        <div id="phone-number">
                            <h3 class="input-title"><label>이력서 등록</label></h3>
                            <div id="input-phone-wrapper">
                                <span id="input-phone">
                                    <input type="file" placeholder="전화번호 입력" id="input-phone-number">
                                </span>
                                <input type="file" id="send-button">
                                    <span>인증번호 받기</span>
                            </input>
                            </div>
                            <div id="input-certification-number-wrapper">
                                <input type="text" id="input-certification-number" placeholder="인증번호 입력하세요">
                            </div>
                        </div>
                        <span class="warning" id="phone-warning">
                            필수 정보입니다.
                        </span>
                        <div id="sign-up-button-wrapper">
                            <button id="sign-up-button">
                                <span id="sign-up-button-text">등록하기</span>
                            </button>
                        </div>
                    </div>
                </div>
                <!-- 회원 정보 입력 까지 -->
            </div>
        </main>
        <!-- ---------- 푸터 ---------- -->
        <footer id="footer">
            <ul>
                <li id="first-li">
                    <a href="https://policy.naver.com/rules/service.html" class="footer-a-tag">이용약관</a>
                </li>
                <li>
                    <strong><a href="https://policy.naver.com/policy/privacy.html" class="footer-a-tag" style="color: #666666 !important;">개인정보처리방침</a></strong>
                </li>
                <li>
                    <a href="https://policy.naver.com/rules/disclaimer.html" class="footer-a-tag">책임의 한계와 법적고지</a>
                </li>
                <li>
                    <a href="https://help.naver.com/service/5640/category/bookmark?lang=ko" class="footer-a-tag">회원정보 고객센터</a>
                </li>
            </ul>
            <address>
                <em id="first-em" style="padding-left: 4px;">
                    <a href="https://www.navercorp.com/" id="bottom-logo">
                        <span style="display: none;">naver</span>
                    </a>
                </em>
                <em id="copyright">
                    Copyright
                </em>
                <a href="https://www.navercorp.com/" id="naver-corp">NAVER Corp.</a>
                <span id="all-right">All Rights Reserved.</span>
            </address>
        </footer>
        <!-- -------------------------------- -->
    </div>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script>
//아이디 변수
const idInput = document.querySelector("#id-input");
// 아이디 에러 변수
const idWarning = document.querySelector("#email-warning");
// 비밀번호 변수
const passwordInput = document.querySelector("#password-input");
// 비밀번호 에러 변수
const passwordWarning = document.querySelector("#password-warning");
// 비밀번호 확인 변수
const passwordCheckInput = document.querySelector("#password-check-input");
// 비밀번호 확인 에러 변수
const passwordCheckWarning = document.querySelector("#password-check-warning");
// 이름 확인 변수
const nameInput = document.querySelector("#name-input");
// 이름 확인 에러 변수
const nameWarning = document.querySelector("#name-warning");
// 이메일 변수
const inputEmail = document.querySelector("#input-email");
// 이메일 에러 변수
const emailWarning = document.querySelector("#email-warning");
// 핸드폰 변수
const mobile = document.querySelector('#input-phone-number');
// 핸드폰 에러 변수
const errorphoneNumber = document.querySelector('#phone-warning');
// 비밀번호 input감싸고 있는 span태그
const passwordWrapper = document.querySelector("#password-wrapper");
// 비밀번호 확인 input 감싸고 있는 span 태그
const passwordCheckWrapper = document.querySelector("#password-check-wrapper");
// 이름 input 감싸고 있는 span 태그
const nameWrapper = document.querySelector("#input-name-wrapper");


// 이메일 정규식 이벤트 사용
inputEmail.addEventListener("blur", checkEmail);


// 이메일 정규식 함수
function checkEmail() {
    const emailWarning = document.querySelector("#email-warning");
    const emailValue = inputEmail.value;
    var emailPattern = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
    console.log(emailValue);
    if(emailValue.length < 1){ 
        emailWarning.style.display = "none"; 
    } else if(emailPattern.test(emailValue)) {
        emailWarning.style.display = "none"; 
    } else {
        emailWarning.innerHTML = "이메일 주소를 다시 확인해주세요.";
        emailWarning.style.color = "red";
        emailWarning.style.display = "block";

    }

}

//핸드폰번호 정규식 함수
function checkPhoneNum() {
    var isPhoneNum = /([01]{2,})([01679]{1,})([0-9]{3,4})([0-9]{4})/;

    if(mobile.value.length < 1) {
        errorphoneNumber.innerHTML = "필수 정보입니다.";
        errorphoneNumber.style.display = "block";
    } else if(!isPhoneNum.test(mobile.value)) {
        errorphoneNumber.innerHTML = "형식에 맞지 않는 번호입니다.";
        errorphoneNumber.style.display = "block";
    } else {
        errorphoneNumber.style.display = "none";
    }
}

// 아이디 정규식 이벤트 사용 및 함수 
idInput.addEventListener("blur", function(){
    var idInputValue = document.querySelector("#id-input").value;

    idWarning.style.color = "red";
    // 검증에 사용할 정규식 변수 regExp에 저장
    idWarning.style.display = "block";
    var regExp = /^[a-z]+[a-z0-9]{5,19}$/g;
    if(idInputValue.length < 1){
        idWarning.innerHTML = "필수 정보입니다.";
    } else{
        idWarning.innerHTML = "";
        idWarning.style.color = "green";
    //   alert('Good!');
    }
});

// 비밀번호 정규식 이벤트 사용 및 함수
passwordInput.addEventListener("blur", function(){
    var passwordInputValue = document.querySelector("#password-input").value;
    var num = passwordInputValue.search(/[0-9]/g);
    var eng = passwordInputValue.search(/[a-z]/ig);
    var spe = passwordInputValue.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
    
    passwordWarning.style.color = "red";    
    if(passwordInputValue.length < 1){
        passwordWarning.style.display = "block";
        passwordWarning.innerHTML = "필수 정보입니다.";
    } else if(passwordInputValue.length < 8 || passwordInputValue.length > 20){
     passwordWarning.innerHTML = "8자리 ~ 20자리 이내로 입력해주세요.";
     passwordWarning.style.display = "block";
     return false;
    }else if(passwordInputValue.search(/\s/) != -1){
     passwordWarning.innerHTML = "비밀번호는 공백 없이 입력해주세요.";
     passwordWarning.style.display = "block";
     return false;
    }else if(num < 0 || eng < 0 || spe < 0 ){
     passwordWarning.innerHTML = "영문,숫자, 특수문자를 혼합하여 입력해주세요.";
     passwordWarning.style.display = "block";
     return false;
    }else {
        passwordWarning.style.color = "green";
        passwordWarning.innerHTML = "사용 가능한 비밀번호입니다.";
        passwordWarning.style.display = "none";
        return true;
    }
});

// 비밀번호 확인 정규식 이벤트 사용 및 함수
passwordCheckInput.addEventListener("blur", function(){
    if(passwordCheckInput.value.length < 1){
        passwordCheckWarning.style.display = "block";
        passwordCheckWarning.style.display = "필수 정보입니다.";
    } else if(passwordCheckInput.value == passwordInput.value){
        passwordCheckWarning.style.display = "none";
        return true;
    } else {
        passwordCheckWarning.style.display = "block";
        passwordCheckWarning.innerHTML = "비밀번호가 일치하지 않습니다.";
        return false;
    }
});

// 이름 정규식 이벤트 사용 및 함수
nameInput.addEventListener("blur", function(){
    const nameInputValue = nameInput.value;
    var name = nameInputValue.search(/^[가-힣a-zA-Z]{2,6}$/);

    if(nameInputValue.length < 1){
        nameWarning.style.display = "block";
        nameWarning.innerHTML = "필수 정보입니다.";
    }else if(nameInputValue.search(/\s/) != -1){
     nameWarning.innerHTML = "한글과 영문 대 소문자를 사용하세요. (특수기호, 공백 사용 불가)";
     nameWarning.style.display = "block";
     return false;
    }else if(name < 0){
        nameWarning.innerHTML = "한글과 영문 대 소문자를 사용하세요. (특수기호, 공백 사용 불가)";
        nameWarning.style.display = "block";
     return false;
    }else {
        nameWarning.style.display = "none";
        return true;
    }
});

// 생일 정규식 함수
function checkBirth(){
    var birthYearValue = birthYearInput.value;
    var birthMonthValue = birthMonthInput.value;
    var birthDayValue = birthDayInput.value;
    var birthYearCheck = birthYearValue.search(/^[0-9]{3,4}$/);
    var birthDayCheck = birthYearValue.search(/^[0-9]{1,2}$/);
    var check1 = false;
    var check2 = false;
    var check3 = false;

    if(birthYearValue.length < 1){
        birthWarning.style.display = "block";
        birthWarning.innerHTML = "태어난 년도 4자리를 정확하게 입력하세요.";
    }else if(birthYearValue.search(/\s/) != -1){
     birthWarning.innerHTML = "태어난 년도 4자리를 정확하게 입력하세요.";
     birthWarning.style.display = "block";
    }else if(birthYearCheck < 0){
        birthWarning.innerHTML = "태어난 년도 4자리를 정확하게 입력하세요.";
        birthWarning.style.display = "block";
    }else {
        birthWarning.style.display = "none";
        check1 = true;
    }
    
    if(check1 && !check2){
        if(birthMonthValue.length < 1){
            birthWarning.style.display = "block";
            birthWarning.innerHTML = "태어난 월을 선택하세요.";
        } else {
            birthWarning.style.display = "none";
            check2 = true;
        }
    
    }

    if(check1 == true && check2 == true){
        if(birthDayValue.length < 1){
            birthWarning.style.display = "block";
            birthWarning.innerHTML = "태어난 일(날짜) 2자리를 정확하게 입력하세요.";
        }else if(birthDayValue.search(/\s/) != -1){
         birthWarning.innerHTML = "태어난 일(날짜) 2자리를 정확하게 입력하세요.";
         birthWarning.style.display = "block";
        }else if(parseInt(birthDayValue) > 31 || parseInt(birthDayValue) < 1){
            birthWarning.innerHTML = "태어난 일(날짜) 2자리를 정확하게 입력하세요..";
            birthWarning.style.display = "block";
        } else {
            birthWarning.style.display = "none";
            check3 = true;
        }
    }
}


// focus 됐을 때 테두리 색 변하게 하기
// passwordInput.addEventListener("focus", function(){
//     passwordWrapper.style.board = "solid 1px #03c75a";
// });

// passwordInput.addEventListener("blur", function(){
//     passwordWrapper.style.board = "solid 1px #dadada";
// });

nameInput.addEventListener("focus", function(){
    nameWrapper.style.border = "solid 1px #03c75a";
});

nameInput.addEventListener("blur", function(){
    nameWrapper.style.border = "solid 1px #dadada";
});


/* ------- */
genderSelect.addEventListener("focus", function(){
    genderSelectWrapper.style.border = "solid 1px #03c75a";
})

genderSelect.addEventListener("blur", function(){
    genderSelectWrapper.style.border = "solid 1px #dadada";
})

inputEmail.addEventListener("focus", function(){
    emailInputWrapper.style.border = "solid 1px #03c75a";
})

inputEmail.addEventListener("blur", function(){
    emailInputWrapper.style.border = "solid 1px #dadada";
})

mobile.addEventListener("focus", function(){
    phoneInputWrapper.style.border = "solid 1px #03c75a";
})

mobile.addEventListener("blur", function(){
    phoneInputWrapper.style.border = "solid 1px #dadada";
})
</script>
</html>