/*
   1. .userThumnail 가지고 와서 mentor/mentee 프로필 바꾸기
         - background-image: url(""); 사용
      들어갈 이미지가 없을 때 활성화 시키면 됨
         background: #eff1ee no-repeat center/cover;

   2. knowhow 로고 홈 버튼 링크 걸어주기
   3. .linkNaver 안에 jsp 파일에서 a 태그 안에 index.main 줄 것
   4. .search_dropdown_Section 안에 .search_wrapper >> 
         inputbox 클래스 명은 .searchInput_mini
      .searchSection_wrapper 안에 .searchSection_wrapper >> 
         inputbox 클래스 명은 .searchInput

         두 개 다 입력 후 submit(엔터)시 검색
          - 질문 글 제목 키워드로 검색 

          > form 태그로 감싸서 해도 되고 
          > input태그 안에 넣어 놓은
            onkeyup="enterkey()" 함수 js에서 정의해서 
            if(window.event.keyCode == 13){} 안에 작성해도 되고, 
          > 또는 onkeypress 로 속성명 바꾸고
            input 태그 안에서 
            <input...onkeypress="if(event.keyCode == 13){ search(); return; }">
            으로 속성 바꾸고 js에서 search()함수 정의해도 됨!

         - 전체 searchInput_mini 안에서도 반복
         - 두 검색창 중 어떤게 켜져 있는지 예외처리 해야 함.
            그래서 세번째 방법 추천

   5. 카테고리 안에 a태그에 해당 카테고리를 parameter로 전달하는 경로 써주기
      - innerString인가..queryString인가.. 그거 view.board?category_id=.. 이거

   6. 네비게이션에 경로 넣어주기

   7.푸터에 경로 넣어주기

*/

const $dropdownCategoryButton = $(".categoryListButton");
const $dropdownCategorySection = $(".categoryLayerWrap");
const $dropdownHiddenSection = $(".dropdownSection")
const $dropdownSearchButton = $(".searchListButton");
const $dropdownSearchSection = $(".search_dropdown");

let checkSlideDropCategory;

// console.log($dropdownButton);

$(function(){
	$dropdownSearchSection.css("display", "none");
	$dropdownCategorySection.css("display", "none");

   console.log($(document));

});


$dropdownCategoryButton.on("click", function(e){
    e.preventDefault();

    if(checkSlideDropCategory){
      //  console.log("클릭")
       $dropdownCategorySection.slideUp();
       checkSlideDropCategory = false;
    } else{
       $dropdownCategorySection.slideDown();
       checkSlideDropCategory = true;
    }
});


// $(document).on("click", function(e){
//    if(!$(e.target).is($(".categorybutton")|| $(".categoryListButton"))){
//       console.log(e.target);
//       if(checkSlideDropCategory){
//          console.log(checkSlideDropCategory)
//          $dropdownCategorySection.slideUp();
//          dropdownCategorySection = false;
//       }
//    }
// });

$dropdownCategorySection.slideToggle(500);



let checkSlideDropSearch;
// $($dropdownSearchSection).css("display", "none");
// console.log($($dropdownSearchSection))

$dropdownSearchButton.on("click", function(e){
    e.preventDefault();
         
    // console.log("클릭");

    if(checkSlideDropSearch){
       $dropdownSearchSection.slideUp();
       checkSlideDropSearch = false;
    } else{
       $dropdownSearchSection.slideDown();
       checkSlideDropSearch = true;
    }

});


$dropdownSearchSection.slideToggle(500);

