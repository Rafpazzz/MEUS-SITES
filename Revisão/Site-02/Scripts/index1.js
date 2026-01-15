// console.log("Hello");
// console.log("I like Pizza")


// window.alert("This is Alert")
// window.alert("I Like Pizza")

// document.getElementById('MyH1').textContent= "Hello";

// document.getElementById("MyP").textContent = "I like Pizza";


//This is a comment


let price = 11.99;
let age = 22;
let gpa = 2.1;
let name = "Rafael";
let lest_name = " Paz";
let even = true;
let y = 10;

console.log(`You are a ${age} year old`);
console.log(`The price is ${price}`);
console.log(`Your gpa is: ${gpa}`);
console.log(`You name is ${name + lest_name}`)
console.log(typeof age);
console.log(typeof price);
console.log(typeof name);
console.log(typeof even);

function isEven(x) {
    if(x % 2 == 0){
        return even;
    }else {
        return !even;
    }

}

console.log(isEven(y))
