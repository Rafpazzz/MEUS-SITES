hello(goodBye);
sum(displayPage, displayConsole, 3, 5);


function hello(callback) {
    setTimeout(callback(), 30000);
    console.log("Hello");
}

function goodBye() {
    console.log("GoodBye")
}


function sum(callback, chamda, x, y) {
    let result = x + y;
    callback(result);
    chamda(result);
}

function displayConsole(result) {
    console.log(result);
}

function displayPage(result) {
    document.getElementById("myH1").textContent = result;
}