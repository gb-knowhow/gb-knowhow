/**
 * 	myUpdateInfo.html
 */


/* 닉네임 바이트 세기 */
$('#nickname').keyup(function(e) {
	let $content = $(this).val().length;
	$('.bytes').html($content);

	if ($content > 19) {
		alert("최대 20자까지 입력 가능합니다.");
		$('#nickname').attr("readonly", true)
	}
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
    console.log(this)
    closeSpan.style.display="none";
    imgDiv.style.backgroundImage =  `url('https://ssl.pstatic.net/static/kin/09renewal/btn_upload_profilephoto2.gif')`;
    imgDiv.style.width = "20%";
    imgDiv.style.display = "block";
    
    
});


file.addEventListener('change', function (e) {
    let name = e.target.files[0].name;
    console.log(e);
    console.log(this);
    console.log(e.target.files[0]);
    console.log(name);
    
    fileName.innerHTML = name;
    
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
