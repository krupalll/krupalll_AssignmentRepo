// 9: Write a function `findSmallestElement` that takes an array of numbers and returns the smallest element.

function findSmallestElement(numbers) {
    return Math.min(...numbers);
}

console.log(findSmallestElement([3, 1, 4, 1, 5]));