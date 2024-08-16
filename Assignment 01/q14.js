// 14: Create a function `findCommonElements` that takes two arrays and returns a new array containing the elements that are present in both arrays.

function findCommonElements(arr1, arr2) {
    return arr1.filter(element => arr2.includes(element));
}

console.log(findCommonElements([1, 2, 3], [3, 4, 5]));