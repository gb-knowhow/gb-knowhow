$('#wr_1').keyup(function (e){
    var content = $(this).val();
    $('#counter').html(content.length);    //글자수 실시간 카운팅

    if (content.length > 1000){
        alert("최대 1000자까지 입력 가능합니다.");
        $(this).val(content.substring(0, 1000));
    }
});


$('#wr_2').keyup(function (e){
    var content = $(this).val();
    $('#counter2').html(content.length);    //글자수 실시간 카운팅

    if (content.length > 1000){
        alert("최대 1000자까지 입력 가능합니다.");
        $(this).val(content.substring(0, 1000));
    }
});
