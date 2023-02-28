/* category id 
0. 전체, 1. 법무/세무, 2. 운세/타로, 3. 심리/건강, 
4. IT/디자인, 5. 학습/진로, 6. 어학/번역, 7. 재테크/금융, 
8. 비즈니스, 9. 라이프, 10. 취미/스포츠, 11. 자기계발, 12. 창업/부업
*/

/*
    가지고 온 category id를 이용해서 
    해당 최신 글 20개정도를 가지고 온다.
    가져올 글이 10개가 안 될 때 예외처리 
    >>>10개씩 페이징<<< 하지만 페이징은 선택사항임.
    10개를 한개 디브 반복 돌려서 채워 넣는다.
*/

/* 샘플 데이터*/
let $titles=['제목1', '제목2', '제목3', '제목4', '제목5', '제목6'];
let $details =['내용1', '내용2', '내용3', '내용4', '내용5', '내용6',];
let $num_answers=['0개'];
let $update_time=['방금']

let temp = {
    c1 : {
        title : "법무세무",
        category : 10
    },
    c2: {
        title : "운세타로",
        category : 20
    }
}

const $selections = $(".selection");

// $selections.on("click", function(){

//     let $selection = $(this).attr("dirid");

//     let $selectionTitle = $(`li[dirid="${$selection}"]`);

//     console.log($selectionTitle);
//     console.log($selection);

// })
/*$selections.each((i, e) => {
    $(e).on("click", function() {
        // ajax 코드
        // i * 10
    })
});*/
