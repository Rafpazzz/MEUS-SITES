const textBox = document.getElementById('temperature');
const CelToFah = document.getElementById('CelToFah');
const FahToCel = document.getElementById('FahToCel');

let temperature;


function convertToCelcios(temp) {
    temp = Number(temp);
    temperature = temp - 32 * 5 / 9;
}

function convertToFahrenheit(temp) {
    temp = Number(temp);
    temperature = temp * 9 / 5 + 32;
}

function result () {
    if (CelToFah.checked) {
        convertToFahrenheit(textBox.value);
        document.getElementById('answer').textContent = `Temperature value: ${temperature.toFixed(1)} F`;
        console.log(textBox.value);
    } else if (FahToCel.checked) {
        convertToCelcios(textBox.value);
        document.getElementById('answer').textContent = `Temperature value: ${temperature.toFixed(1)} C`;
        console.log(temperature);
    } else {
        document.getElementById('answer').textContent = `Select one buttom`;
    }
}