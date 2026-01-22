function generatePassword(length, includeLowerCase, includeUperCase, includeNumber, includeSymbols) {

    const lowerCaseChars = 'abcdefghijklmnopqrstuvwxyz';
    const upPerCaseChars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    const numberChars = '1234567890';
    const symbosChars = '!@#$%¨&*()-+=_';

    let allowedChars = "";
    let password = "";

    allowedChars += includeLowerCase ? lowerCaseChars : "";
    allowedChars += includeUperCase ? upPerCaseChars : "";
    allowedChars += includeNumber ? numberChars : "";
    allowedChars += includeSymbols ? symbosChars : "";

    if (length <= 0) {
        return `(password length must be at less 1)`;
    }
    if (allowedChars.length === 0) {
        return `(At list 1 set of characteres needs to be selected)`;
    }

    for (let i = 0; i < length; i++) {
        const randonIndex = Math.floor(Math.random() * allowedChars.length);
        password += allowedChars[randonIndex];
    }

    return password;
}

const passwordLength = 12;
const includeLowerCase = true;
const includeUperCase = true;
const includeNumber = true;
const includeSymbols = true;
const gerador = document.getElementById("gere");

gerador.onclick = function () {
    const password = generatePassword(passwordLength, includeLowerCase, includeUperCase, includeNumber, includeSymbols);
    document.getElementById('text').textContent = password;
    console.log(`Password: ${password}`);
}

