/* banner.html */
HTMLCollection.prototype.forEach = Array.prototype.forEach;
const banner = document.querySelector('div.banner');
const imageDiv = document.querySelectorAll('div.banner div');
const lastImageDiv = document.createElement('div');
const firstImageDiv = document.createElement('div');
const backgoundDiv = document.querySelector('div.banner_background');
const titles = document.querySelector('.banner_title p');
const next = document.querySelector('div.next');
const prev = document.querySelector('div.prev');
let checkArrow = false;
let count = 1;
let auto = setInterval(autoSlide, 2000);
// 색은 원하는 만큼만 선언하면 되지만 text는 맨 처음 인덱스값이 마지막에 하나 더 추가되어야 함
var colors = ['#7D78FF', '#99004C', '#598700', '#FFBB00'];
var texts = ['새학기<br>학습전략<br>성공적으로<br>준비하기', '행복한<br>아이디어<br>나눔생활',
                '알쏭달쏭<br>디지털 세상<br>미디어 최고', '오늘은<br>울고<br>내일은<br>웃고',
                '새학기<br>학습전략<br>성공적으로<br>준비하기'];
// var texts = ['1파랑셋', '2분홍하트', '3초록여자', '4노랑폰', '1파랑셋'];

/*console.log(titles);*/

HTMLCollection.prototype.forEach = Array.prototype.forEach;

imageDiv.forEach((div, i) => (div.style.backgroundImage = `url(/css/hhs/main/image/banner/img${i + 1}.jpg)`));

banner.appendChild(lastImageDiv);
lastImageDiv.style.backgroundImage = `url(/css/hhs/main/image/banner/img1.jpg)`;

banner.insertBefore(firstImageDiv, document.querySelector('div.banner div'));
firstImageDiv.style.backgroundImage = `url(/css/hhs/main/image/banner/img${imageDiv.length}.jpg)`;
backgoundDiv.style.backgroundColor = colors[0];
titles.innerHTML = texts[0];

banner.style.transform = `translate(-420px)`;

function autoSlide() {
  banner.style.transition = 'transform 0.3s';
  banner.style.transform = `translate(${-420 * ++count}px)`;
  /*console.log(count);*/
  if (count == 5) {
    count = 1;
    setTimeout(function () {
      banner.style.transition = 'transform 0s';
      banner.style.transform = 'translate(-420px)';
    }, 300);
  }
  titles.innerHTML = texts[count - 1];
  backgoundDiv.style.backgroundColor = colors[count - 1];
}

prev.addEventListener('click', function () {
  if (checkArrow) {
    return;
  }
  checkArrow = true;
  clearInterval(auto);
  banner.style.transition = 'transform 0.3s';
  banner.style.transform = `translate(${-420 * --count}px)`;
  if (count == 0) {
    count = 4;
    setTimeout(function () {
      banner.style.transition = 'transform 0s';
      banner.style.transform = `translate(${-420 * imageDiv.length}px)`;
    }, 300);
  }
  auto = setInterval(autoSlide, 2000);
  titles.innerHTML = texts[count - 1];
  backgoundDiv.style.backgroundColor = colors[count - 1];
  setTimeout(() => {
    checkArrow = false;
  }, 300);
});

next.addEventListener('click', function () {
  if (checkArrow) {
    return;
  }
  checkArrow = true;
  clearInterval(auto);
  banner.style.transition = 'transform 0.3s';
  banner.style.transform = `translate(${-420 * ++count}px)`;
  if (count == 5) {
    count = 1;
    setTimeout(function () {
      banner.style.transition = 'transform 0s';
      banner.style.transform = 'translate(-420px)';
    }, 300);
  }
  auto = setInterval(autoSlide, 2000);
  titles.innerHTML = texts[count - 1];
  backgoundDiv.style.backgroundColor = colors[count - 1];
  setTimeout(() => {
    checkArrow = false;
  }, 300);
});
