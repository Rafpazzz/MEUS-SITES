let username;

// username = window.prompt("What is your username");
// console.log(`Name is ${username}`);
// window.alert(`Your name is ${username}`);


document.getElementById("submit").onclick = function() {
    username = document.getElementById("username").value;
    console.log(username);
    document.getElementById("myH1").textContent = `Hello ${username}`
}