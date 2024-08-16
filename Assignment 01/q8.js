// 8: Implement a function `filterEvenNumbers` that takes an array of numbers and returns a new array containing only the even numbers.

function filterEvenNumbers(numbers) {
    return numbers.filter(num => num % 2 === 0);
}

console.log(filterEvenNumbers([1, 2, 3, 4]));