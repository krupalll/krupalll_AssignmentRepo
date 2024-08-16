// 12: Implement a function `removeDuplicates` that takes an array and returns a new array with duplicate values removed.

function removeDuplicates(arr) {
    return [...new Set(arr)];
}

console.log(removeDuplicates([1, 2, 2, 3, 4, 4]));