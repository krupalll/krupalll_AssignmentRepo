// 10: Create a function `reverseString` that takes a string and returns the string reversed.

function reverseString(str) {
    return str.split('').reverse().join('');
}

console.log(reverseString("hello"));
