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


    
    