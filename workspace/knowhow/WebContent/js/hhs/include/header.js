const $dropdownButton = $(".categoryListButton");
const $dropdownSection = $(".categoryLayerWrap");
const $dropdownSearchButton = $(".searchListButton");
const $dropdownSearchSection = $(".search_dropdown");

let checkSlideDrop;

// console.log($dropdownButton);

$dropdownButton.on("click", function(e){
    e.preventDefault();
         
    // console.log("클릭")

    if(checkSlideDrop){
       $dropdownSection.slideUp();
       checkSlideDrop = false;
    } else{
       $dropdownSection.slideDown();
       checkSlideDrop = true;
    }


});

$dropdownSection.slideToggle(500);



let checkSlideDropSearch;

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

