/**
 *  findPasswordDetail
 */

const $oldPassword = $(".old-password");
const $newPassword = $(".new-password");
const $newPasswordCheck = $(".new-password-check");

const $errOld = $(".err-old");
const $errNew = $(".err-new");
const $errNewCheck = $(".err-new-check");
let flag1 = false


/* 인풋 id테그 가져옴 */
$oldPassword.on("blur",function(){$.ajax({
   url: contextPath + "/changePasswordAction.member",
   data: {memberNewPassword: $newPassword.val()},
   success: function(result){
      let message, icon;
      result = JSON.parse(result);
      if(result.check){
         flag1 = false;
      }else if($newPassword.val().length < 1){
         flag1 = false;
      }else{
         flag1 = true;
      }
         console.log("checkPasswordAction함")
      
   }
});
});


$newPassword.keyup(function(e){
    $value = $newPassword.val();
    let number = $value.search(/[0-9]/g);
    let english = $value.search(/[a-z]/ig);
    let spece = $value.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
    // 아무것도 입력하지 않았을때
    let check = false;
    if($value== ""){
        $errNew.text("비밀번호를 입력해주세요");
		flag1=false;
    } else if($value.length<10 || $value.length>20){
		flag1=false;
        $errNew.text("비밀번호는 10자 이상 20자 이하로 입력해주세요")
    } else if($value.search(/\s/) != -1){
		flag1=false;
        $errNew.text("비밀번호는 공백 없이 입력해주세요")
    } else if(number < 0 || english < 0 || spece < 0){
		flag1=false;
        $errNew.text("영문,숫자, 특수문자를 혼합하여 입력해주세요.")
    } else{
        $errNew.text("")
		flag1=false;
    }
   
   

})


/* 비밀번호 확인 인풋테그 감지해서 값 비교 */
$newPasswordCheck.keyup(function(e){
    if($newPassword.val() == $newPasswordCheck.val()){
		$errNewCheck.css("color","rgb(43, 182, 115)");
        $errNewCheck.text("일치합니다")
		flag1 = true;
    } else{
        $errNewCheck.text("비밀번호가 다릅니다")
		flag1=false;
    }
})


if(!flag1){
	$('input').keydown(function(event) {
  if (event.keyCode === 13) {
    event.preventDefault();
  };
});
}

function send(){
	if(flag1){
	$("input[name='memberNewPassword']").val(btoa($("input[name='memberNewPassword']").val()));
	$(".new-password-check").val(btoa($(".new-password-check").val()));
	document.changeForm.submit();
	}
}














