// 13: Write a function `countOccurrences` that takes a string and a character and returns the number of times the character appears in the string.

function countOccurrences(str, char) {
    return (str.match(new RegExp(char, 'g')) || []).length;
}

console.log(countOccurrences("hello", "l"));