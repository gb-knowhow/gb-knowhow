
var changePaginator = document.getElementsByClassName("btnNums");
function handleClick(event) {
  console.log(event.target.classList);

  if (event.target.classList[1] === "clicked") {
    event.target.classList.remove("clicked");
  } else {
    for (var i = 0; i < changePaginator.length; i++) {
        changePaginator[i].classList.remove("clicked");
    }

    event.target.classList.add("clicked");
  }
}

function init() {
  for (var i = 0; i < changePaginator.length; i++) {
    changePaginator[i].addEventListener("click", handleClick);
  }
}
init();