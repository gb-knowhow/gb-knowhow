const $latest = $('#latest');
const $popular = $('#popular');



$popular.on("click", function(){
	$popular.css("color","rgb(24, 26, 28)");
	$popular.css("font-weight","1000");
	$latest.css("color","#8c8c8c");
	$latest.css("font-weight","350");
});

$latest.on("click", function(){
	$latest.css("color","rgb(24, 26, 28)");
	$latest.css("font-weight","1000");
	$popular.css("color","#8c8c8c");
	$popular.css("font-weight","350");
});