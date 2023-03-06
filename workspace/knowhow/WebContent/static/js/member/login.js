/**
 *  로그인 페이지
 */

const $keepLoginLabel = $(".login-keep-text");
const $keepLoginInput = $("input[name='autoLogin']");
console.log($keepLoginInput)
$keepLoginLabel.on("click", function(){
	
	if($keepLoginInput.is(":checked")){
		$keepLoginInput.attr("checked", false);
	} else {
		$keepLoginInput.attr("checked", true);
	}

})

function send(){
		/*비밀번호 암호화*/
	    location.replace(location.href);
		$("input[name='memberPassword']").val(btoa($("input[name='memberPassword']").val()));
		document.loginForm.submit();
		}
		