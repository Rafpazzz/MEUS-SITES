let numbers = [1,2,3,4,5]

numbers.forEach(touperCase)

function touperCase(element, index, array) {
    array[index] = element.toUpperCase();
}

function rolowerCase(element, index, array) {
    array[index] = element.toLowerCase();
}

function displayElemnets(element) {
    console.log(element);
}

