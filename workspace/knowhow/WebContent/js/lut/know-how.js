function collapse(element) {
    var before = document.getElementsByClassName("active")[0]               // 기존에 활성화된 버튼
    if (before && document.getElementsByClassName("active")[0] != element) {  // 자신 이외에 이미 활성화된 버튼이 있으면
        before.nextElementSibling.style.maxHeight = null;   // 기존에 펼쳐진 내용 접고
        before.classList.remove("active");                  // 버튼 비활성화
    }
    element.classList.toggle("active");         // 활성화 여부 toggle

    var content = element.nextElementSibling;
    if (content.style.maxHeight != 0) {         // 버튼 다음 요소가 펼쳐져 있으면
        content.style.maxHeight = null;         // 접기
    } else {
        content.style.maxHeight = content.scrollHeight + "px";  // 접혀있는 경우 펼치기
    }
}

var Target = document.getElementById("clock");
function clock() {
    var time = new Date();

    var month = time.getMonth();
    var date = time.getDate();
    var day = time.getDay();
    var week = ['일', '월', '화', '수', '목', '금', '토'];

    var hours = time.getHours();
    var minutes = time.getMinutes();
    var seconds = time.getSeconds();

    Target.innerText = 
    `${month + 1}월 ${date}일 ${week[day]}요일 ` +
    `${hours < 10 ? `0${hours}` : hours}:${minutes < 10 ? `0${minutes}` : minutes}:${seconds < 10 ? `0${seconds}` : seconds}`;
        
}
clock();
setInterval(clock, 1000); // 1초마다 실행

// 체크박스 전체 선택
$(".checkbox-group").on("click", "#check-all", function () {
    $(this).parents(".checkbox-group").find('input').prop("checked", $(this).is(":checked"));
});

// 체크박스 개별 선택
$(".checkbox-group").on("click", ".normal", function() {
    var is_checked = true;

    $(".checkbox-group .normal").each(function(){
        is_checked = is_checked && $(this).is(":checked");
    });

    $("#check-all").prop("checked", is_checked);
});



    $(".user-list-contents1").mouseenter(function(){
        setInterval(function () {
            $(".new-user > .user-list1").delay(2000);
            $(".new-user > .user-list1").animate({ marginTop: "-38.88px" });
            $(".new-user > .user-list1").delay(2000);
            $(".new-user > .user-list1").animate({ marginTop: "-77.76px" });
            $(".new-user > .user-list1").delay(2000);
            $(".new-user > .user-list1").animate({ marginTop: "-116.64px" });
            $(".new-user > .user-list1").delay(2000);
            $(".new-user > .user-list1").animate({ marginTop: "0px" });
        });
    });
    
    $(".user-list-contents1").mouseleave(function(){
        setInterval(function () {
            $(".new-user > .user-list1").animate({ marginTop: "0px" });
        });
    });

    $(".user-list-contents2").mouseenter(function(){
        setInterval(function () {
            $(".new-user > .user-list2").delay(2000);
            $(".new-user > .user-list2").animate({ marginTop: "-38.88px" });
            $(".new-user > .user-list2").delay(2000);
            $(".new-user > .user-list2").animate({ marginTop: "-77.76px" });
            $(".new-user > .user-list2").delay(2000);
            $(".new-user > .user-list2").animate({ marginTop: "-116.64px" });
            $(".new-user > .user-list2").delay(2000);
            $(".new-user > .user-list2").animate({ marginTop: "0px" });
        });
    });

    $(".user-list-contents3").mouseenter(function(){
        setInterval(function () {
            $(".new-user > .user-list3").delay(2000);
            $(".new-user > .user-list3").animate({ marginTop: "-38.88px" });
            $(".new-user > .user-list3").delay(2000);
            $(".new-user > .user-list3").animate({ marginTop: "-77.76px" });
            $(".new-user > .user-list3").delay(2000);
            $(".new-user > .user-list3").animate({ marginTop: "-116.64px" });
            $(".new-user > .user-list3").delay(2000);
            $(".new-user > .user-list3").animate({ marginTop: "0px" });
        });
    });

    $(".user-list-contents4").mouseenter(function(){
        setInterval(function () {
            $(".new-user > .user-list4").delay(2000);
            $(".new-user > .user-list4").animate({ marginTop: "-38.88px" });
            $(".new-user > .user-list4").delay(2000);
            $(".new-user > .user-list4").animate({ marginTop: "-77.76px" });
            $(".new-user > .user-list4").delay(2000);
            $(".new-user > .user-list4").animate({ marginTop: "-116.64px" });
            $(".new-user > .user-list4").delay(2000);
            $(".new-user > .user-list4").animate({ marginTop: "0px" });
        });
    });

