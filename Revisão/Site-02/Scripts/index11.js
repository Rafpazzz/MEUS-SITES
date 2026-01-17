const minNum = 1;
const maxNum = 100;
const answer = Math.floor(Math.random() * (maxNum - minNum + 1));

let attempts = 0;
let guess;
let running = true;


while (running) {

    guess = window.prompt(`Guess a number between ${minNum} and ${maxNum}:`);
    guess = Number(guess);

    if (isNaN(guess)) {
        window.alert(`Please entre with a number!`);
    }

    if (guess < minNum || guess > maxNum) {
        window.alert(`Please enter with a valide number(1-100)`);
    } else {
        attempts++

        if (guess < answer) {
            window.alert(`Too Low, Try Again`);
        }else if(guess > answer){
            window.alert(`Too High, Try Again`);
        }else {  
            window.alert(`Corect! The  Answer is ${answer}. It took you ${attempts} attempts.`);
            running = false;        
        }
    }

}