/**
 * 	myUpdateInfo.html
 */


/* 닉네임 바이트 세기 */
$('#nick_name').keyup(function(e){
    let content = $(this).val();
    $('.bytes').text(content.length);
    if (content.length > 19){
      alert("최대 20자까지 입력 가능합니다.");
       $(this).val(content.substring(0, 19));
       $('#nick_name').html(20);
    }
});

/* form 테그 엔터로 자동 submit 막기*/
$('input').keydown(function() {
  if (event.keyCode === 13) {
    event.preventDefault();
  };
});




/* 썸네일 */
const file = document.querySelector('input[type=file]');
const imgDiv = document.querySelector('label[for=profile_upload] div.image');
const closeSpan = document.querySelector('.close');
const input = document.querySelector('#profile_upload');
const fileName = document.querySelector('.file_name');

closeSpan.addEventListener('click', function (e) {
    e.preventDefault();
    input.value = "";
    fileName.innerHTML = "";
    closeSpan.style.display="none";
    imgDiv.style.backgroundImage =  `url('https://ssl.pstatic.net/static/kin/09renewal/btn_upload_profilephoto2.gif')`;
    imgDiv.style.width = "20%";
    imgDiv.style.display = "block";
    
    
});


file.addEventListener('change', function (e) {
    this.style.display = 'none';
    let reader = new FileReader();
    reader.readAsDataURL(e.target.files[0]);

    reader.onload = function (e) {
        let result = e.target.result;
        if (result.includes('image')) {
            imgDiv.style.backgroundImage = `url('${result}')`;
            closeSpan.style.display = "inline-block"
            imgDiv.style.width = "50%";
        } else {
            imgDiv.style.backgroundImage = `url('https://ssl.pstatic.net/static/kin/09renewal/btn_upload_profilephoto2.gif')`;
        }
    };
});

// ----------------------------------------------------
// 이름엔 한글과 영어만 가능하게
 $("#name").on("keyup", function() {
    $(this).val($(this).val().replace(/[^(ㄱ-힣a-zA-Z)]/gi, ''));
 });

// 나이엔 숫자만 가능하게
$("#age").on("keyup", function() {
    $(this).val($(this).val().replace(/[^0-9]/g,""));
 });

//  닉네임 값이 있으면 true
$("#nick_name").on("keyup",function(){
    if($(this).val() != ""){
        checkAll[0] = true;
        ;
    } else {
    checkAll[0] = false;
    }
    console.log();
})

 // 별명, 나이와 이름에 값이 있다면
 $("#name").on("keyup",function(){
     if($(this).val() != ""){
         checkAll[1] = true;
         ;
     } else{
     	checkAll[1] = false;
     }
 })

$("#age").on("keyup",function(){
    if($(this).val() != ""){
        checkAll[2] = true;
        ;
    } else{
    	checkAll[2] = false;
    }
});
// ------------------------------------------------------
// 이메일 유효성 검사
const $email = $("#email");
const $helpEmail = $(".help_email")

var regExp = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;

$email.keyup(function(){
    if( !$email.val() ){ 
        $helpEmail.text("이메일을 입력해주세요")
        $email.focus(); 
     } else if (!regExp.test($email.val())) { 
           $helpEmail.text("이메일이 유효하지 않습니다.")
           $email.focus(); 
           checkAll[3] = false;
        } else {
            $helpEmail.text("")
            checkAll[3] = true;
            ;
        }
        
})









/* --------------------------------------------------------- */

const $passwordInput = $("#password_input");
const $passwordCheck = $("#password_check");
const $helpPassword = $(".help_password");
const $helpPasswordConfirm = $(".help_password_confirm")
const $saveButton = $(".button .save")
/* 인풋테그에 값이 있으면 순서대로 true로 변경 */
let checkAll = [false, false, false, false, false];

/* 비밀번호 입력값 체크 */
$passwordInput.keyup(function(e){
    $value = $passwordInput.val();
    let number = $value.search(/[0-9]/g);
    let english = $value.search(/[a-z]/ig);
    let spece = $value.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
    // 아무것도 입력하지 않았을때
    let check = false;
    if($value== ""){
        $helpPassword.text("비밀번호를 입력해주세요");
    } else if($value.length<10 || $value.length>20){
        $helpPassword.text("비밀번호는 10자 이상 20자 이하로 입력해주세요")
    } else if($value.search(/\s/) != -1){
        $helpPassword.text("비밀번호는 공백 없이 입력해주세요")
    } else if(number < 0 || english < 0 || spece < 0){
        $helpPassword.text("영문,숫자, 특수문자를 혼합하여 입력해주세요.")
    } else{
        $helpPassword.text("")
    }
   
   

})
/* 새로운 비밀번호 확인 인풋테그 감지해서 값 비교 */
$passwordInput.keyup(function(e){
    if($passwordInput.val() == $passwordCheck.val()){
        checkAll[4] = true;
        $helpPasswordConfirm.text("")
    } else{
        $helpPasswordConfirm.text("비밀번호가 다릅니다")
        checkAll[4] = false;
    }
})


/* 비밀번호 확인 인풋테그 감지해서 값 비교 */
$passwordCheck.keyup(function(e){
    if($passwordInput.val() == $passwordCheck.val()){
        checkAll[4] = true;
        $helpPasswordConfirm.text("")
    } else{
        $helpPasswordConfirm.text("비밀번호가 다릅니다")
        checkAll[4] = false;
    }
})




// --------------------------------------------------------

/* 모든 인풋태그에 입력을 감지해서 checkAll의 모든 값들이 true일때 버튼색 변경 */
$("input").keyup(function(){
	if(checkAll[0] == true && checkAll[1] == true && checkAll[2] == true && checkAll[3] == true && checkAll[4] == true){
   	 	$saveButton.prop("disabled", false)
    	$saveButton.css("backgroundColor", "#388C57")
	} else{
		$saveButton.prop("disabled", true)
    	$saveButton.css("backgroundColor", "#DDDDDD")
	}
})

