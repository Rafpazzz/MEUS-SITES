const DECREASEBTN = document.getElementById("decresBtn");
const RESETBTN = document.getElementById("resertBtn");
const INCREASEBTN = document.getElementById("increaseBtn");
const countLabel = document.getElementById("contLabel");
let count = 0;

INCREASEBTN.onclick = function() {
    count++;
    countLabel.textContent = count;
}

DECREASEBTN.onclick = function() {
    count--;
    countLabel.textContent = count;
}

RESETBTN.onclick = function() {
    count = 0;
    countLabel.textContent = count;
}