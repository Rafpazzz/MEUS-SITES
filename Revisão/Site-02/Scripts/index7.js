const myH2 = document.getElementById('myH2');
const myButton = document.getElementById('myButton')
let max = 7;
let min = 1;
let randomNum;


myButton.onclick = function () {
    randomNum = Math.floor(Math.random() * max) + min;
    console.log(randomNum);
    myH2.textContent = `Your number is ${randomNum}`;
}


