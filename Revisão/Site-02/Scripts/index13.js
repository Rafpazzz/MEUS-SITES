let numbers =[1,2,3,4,5];

let maxNumber = Math.max(...numbers);

console.log(maxNumber);

let username = "Rafael Paz";
let latters = [...username];

console.log(latters);


function sum(...numbers) {
    let result = 0;
    for(let number of numbers) {
        result += number;
    }

    return result;
}

function getAverger(...numbers) {
    let result = 0;
    for(let number of numbers) {
        result += number;
    }

    return result / numbers.length;
}


const total = getAverger(75, 100, 85, 90, 50);

console.log(total);
