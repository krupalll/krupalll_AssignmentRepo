// 6: Implement a function `countVowels` that takes a string as an argument and returns the number of vowels in the string.

function countVowels(str) {
    return (str.match(/[aeiouAEIOU]/g) || []).length;
}

console.log(countVowels("Hello, World!"));
