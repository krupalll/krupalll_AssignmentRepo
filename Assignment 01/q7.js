// 7: Write a function `sumArray` that takes an array of numbers as input and returns the sum of all the numbers.

function sumArray(numbers) {
    return numbers.reduce((sum, num) => sum + num, 0);
}

console.log(sumArray([1, 2, 3, 4]));