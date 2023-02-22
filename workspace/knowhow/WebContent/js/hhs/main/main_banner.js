/* banner.html */
HTMLCollection.prototype.forEach = Array.prototype.forEach;
const banner = document.querySelector("div.banner");
const imageDiv = document.querySelectorAll("div.banner div");
const lastImageDiv = document.createElement("div");
const firstImageDiv = document.createElement("div");
const next = document.querySelector("div.next");
const prev = document.querySelector("div.prev");
const buttons = document.querySelectorAll(".buttons button");
let checkArrow = false;
let count = 1;
let auto = setInterval(autoSlide, 2000);
let temp = buttons[0];

HTMLCollection.prototype.forEach = Array.prototype.forEach;
buttons.forEach(button => {
    button.addEventListener("click", () => {
        clearInterval(auto);
        count = parseInt(button.innerHTML);
        changeButtonStyle();
        banner.style.transition = "transform 0.3s";
        banner.style.transform = `translate(${-420 * count}px)`;
        auto = setInterval(autoSlide, 2000);
    });
});

imageDiv.forEach((div, i) => div.style.backgroundImage = `url(${pageContext.request.contextPath}/css/hhs/main/image/banner/img${i+1}.jpg)`)

banner.appendChild(lastImageDiv);
lastImageDiv.style.backgroundImage = `url(${pageContext.request.contextPath}/css/hhs/main/image/banner/img1.jpg)`;

banner.insertBefore(firstImageDiv, document.querySelector("div.banner div"));
firstImageDiv.style.backgroundImage = `url(${pageContext.request.contextPath}/css/hhs/main/image/banner/img${imageDiv.length}.jpg)`

banner.style.transform = `translate(-420px)`;

function changeButtonStyle() {
    if(temp){
        temp.style.background = "white";
        temp.style.color = "black";
    }
    buttons[count - 1].style.background = "black";
    buttons[count - 1].style.color = "white";
    temp = buttons[count - 1];
}

function autoSlide(){
    banner.style.transition = "transform 0.3s";
    banner.style.transform = `translate(${-420 * ++count}px)`;
    console.log(count);
    if(count == 5) {
        count = 1;
        setTimeout(function(){
            banner.style.transition = "transform 0s";
            banner.style.transform = "translate(-420px)";
        }, 300);
    }
    changeButtonStyle();
}

prev.addEventListener("click", function(){
    if(checkArrow){return;}
    checkArrow = true;
    clearInterval(auto);
    banner.style.transition = "transform 0.3s";
    banner.style.transform = `translate(${-420 * --count}px)`;
    if(count == 0) {
        count = 4;
        setTimeout(function(){
            banner.style.transition = "transform 0s";
            banner.style.transform = `translate(${-420 * (imageDiv.length)}px)`;
        }, 300);
    }
    changeButtonStyle();
    auto = setInterval(autoSlide, 2000);
    setTimeout(()=>{checkArrow = false}, 300);
});

next.addEventListener("click", function(){
    if(checkArrow){return;}
    checkArrow = true;
    clearInterval(auto);
    banner.style.transition = "transform 0.3s";
    banner.style.transform = `translate(${-420 * ++count}px)`;
    if(count == 5) {
        count = 1;
        setTimeout(function(){
            banner.style.transition = "transform 0s";
            banner.style.transform = "translate(-420px)";
        }, 300);
    }
    changeButtonStyle();
    auto = setInterval(autoSlide, 2000);
    setTimeout(()=>{checkArrow = false}, 300);
});
