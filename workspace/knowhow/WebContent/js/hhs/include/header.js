
const $dropdownButton = $(".categoryListButton");
const $dropdownSection = $(".dropdownSection");

globalThis.flag=1;

$dropdownButton.on("click", function(){

    // console.log($dropdownButton);
    if(globalThis.flag==1){
        $dropdownSection.load("header-dropdown.html");
        flag++;
    }
    console.log(flag);

    if(flag ==2){
        $(".categoryLayerWrap").remove();
        flag =1;
    }
    console.log(flag);
});
