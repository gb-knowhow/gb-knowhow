const $dropdownButton = $(".categoryListButton");
const $dropdownSection = $(".categoryLayerWrap");
const $dropdownHiddenSection = $(".dropdownSection")
const $dropdownSearchButton = $(".searchListButton");
const $dropdownSearchSection = $(".search_dropdown");

let checkSlideDrop;

// console.log($dropdownButton);

$(function(){
	$dropdownSearchSection.css("display", "none");
	$dropdownSection.css("display", "none");
});


$dropdownButton.on("click", function(e){
    e.preventDefault();

    if(checkSlideDrop){
       console.log("클릭")
       $dropdownSection.slideUp();
       checkSlideDrop = false;
    } else{
       $dropdownSection.slideDown();
       checkSlideDrop = true;
    }


});

$dropdownSection.slideToggle(500);



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

