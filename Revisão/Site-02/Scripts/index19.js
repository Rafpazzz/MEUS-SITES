let numbers = [1,2,3,4,5,6,7,8,9]

let evenNum = numbers.filter(isEven);

let oddNum1 = numbers.map(n => n % 2 !== 0);
let oddNum2 = numbers.filter(n => n % 2 !== 0);

function isEven(element) {
    return element % 2 === 0;
}


console.log(oddNum1);
console.log(oddNum2);
console.log(evenNum);