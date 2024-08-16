// 3: Write a function `findLargestElement` that takes an array of numbers and returns the largest element.

function findLargestElement(numbers) {
    return Math.max(...numbers);
}
const numbers = [1, 5, 3, 9, 2];
console.log(findLargestElement(numbers));