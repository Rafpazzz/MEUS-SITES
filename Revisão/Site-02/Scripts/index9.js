const myCheckbos = document.getElementById("myChekbox");
const visaBtn = document.getElementById("visaBtn");
const mastercardBtn = document.getElementById("mastercardBtn");
const payPalBtn = document.getElementById("payPalBtn");
const mySubmit = document.getElementById("mySubmit");
const subResult = document.getElementById("subResult");
const paymentResult = document.getElementById("paymentResult");


mySubmit.onclick = function () {

    if (myCheckbos.checked) {
        subResult.textContent = `You are Subscribe`;
    } else {
        subResult.textContent = `You are not Subscribe`;
    }

    if(visaBtn.checked) {
        paymentResult.textContent = `You are paying with Visa`;
    }else if(mastercardBtn.checked) {
        paymentResult.textContent = `You are paying with MasterCard`;
    }else if(payPalBtn.checked) {
        paymentResult.textContent = `You are paying with Pay Pal`;
    }else {
        paymentResult.textContent = `You must select a payment type`;
    }
}