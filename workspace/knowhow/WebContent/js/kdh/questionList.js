const $latest = $('#latest');
const $popular = $('#popular');



$popular.on("click", function(){
	$popular.css("color","black");
	$latest.css("color","#8c8c8c");
});


$latest.on("click", function(){
	$latest.css("color","black");
	$popular.css("color","#8c8c8c");
});