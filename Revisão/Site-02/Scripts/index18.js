const numbers = [1, 2, 3, 4, 5];

const doubles = numbers.map( n => Math.pow(n,3));

console.log(doubles);

function square(element) {
    return Math.pow(element, 2);  
}

const squares = numbers.map(square);

console.log(squares);