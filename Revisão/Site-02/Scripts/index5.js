const PI = 3.14;
let radius;
let circunference;


// radius = window.prompt('Enter to the radius of the circunference');

document.getElementById('submit').onclick = function () {
    radius = document.getElementById("radius").value;
    radius = Number(radius);
    console.log(radius)
    circunference = 2 * PI * radius;
    console.log(circunference);
    document.getElementById("h2").textContent = `The circunfernce is ${circunference}`;
}
