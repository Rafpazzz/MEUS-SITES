const prices = [5,30, 10, 25, 15, 20];

const total = prices.reduce(sumPrinces);
// const total = prices.reduce((n,m) => n +m);

function sumPrinces(accumulator, element) {
    return accumulator + element;
}


console.log(`$${total.toFixed(2)}`);


const grades = [75, 50, 90, 80, 65, 95];

const maximun = grades.reduce(getMax);

function getMax(accumulator, element) {
    return Math.max(accumulator, element);
}

console.log(maximun);