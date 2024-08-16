//IU2141230182-Krupal Patel
// Question - 01
function isAnagram(str1, str2) {
  // Remove spaces and convert strings to lowercase
  str1 = str1.replace(/\s+/g, '').toLowerCase();
  str2 = str2.replace(/\s+/g, '').toLowerCase();

  // If the lengths are not the same, they can't be anagrams
  if (str1.length !== str2.length) {
    return false;
  }

  // Sort the characters in each string and compare the results
  str1 = str1.split('').sort().join('');
  str2 = str2.split('').sort().join('');

  // If the sorted strings are the same, they are anagrams
  return str1 === str2;
}

console.log(isAnagram("listen", "silent"));
console.log(isAnagram("hello", "world"));



// Question - 02
function calculateTotalSpentByCategory(transactions) {
  return transactions.reduce((acc, { category, price }) => {
    acc[category] = (acc[category] || 0) + price;
    return acc;
  }, {});
}

// Convert result to array of objects
function formatResult(totalSpent) {
  return Object.entries(totalSpent).map(([category, totalSpent]) => ({ category, totalSpent }));
}

// Example usage:
const transactions = [
  { category: 'groceries', price: 30 },
  { category: 'electronics', price: 200 },
  { category: 'groceries', price: 45 },
  { category: 'clothing', price: 100 },
  { category: 'electronics', price: 150 }
];

const totalSpentByCategory = calculateTotalSpentByCategory(transactions);
const result = formatResult(totalSpentByCategory);

console.log(result);




// Question - 03
function findLargestElement(numbers) {
  return Math.max(...numbers);
}
const numbers = [1, 5, 3, 9, 2];
console.log(findLargestElement(numbers));



// Question - 04
function isPalindrome(str) {
  const cleanedStr = str.toLowerCase().replace(/[^a-z0-9]/gi, '');

  // Check if the cleaned string is equal to its reverse
  return cleanedStr === cleanedStr.split('').reverse().join('');
}

console.log(isPalindrome("A man, a plan, a canal, Panama"));
console.log(isPalindrome("Hello, World!"));


// Question - 05
function calculateTime(n) {
  const start = performance.now();
  let sum = 0;
  for (let i = 1; i <= n; i++) {
    sum += i;
  }
  const end = performance.now();
  return (end - start) / 1000;
}

console.log(calculateTime(10000));


// Question - 06
function countVowels(str) {
  return (str.match(/[aeiouAEIOU]/g) || []).length;
}

console.log(countVowels("Hello, World!"));



// Question - 07
function sumArray(numbers) {
  return numbers.reduce((sum, num) => sum + num, 0);
}

console.log(sumArray([1, 2, 3, 4]));



// Question - 08
function filterEvenNumbers(numbers) {
  return numbers.filter(num => num % 2 === 0);
}

console.log(filterEvenNumbers([1, 2, 3, 4]));


// Question - 09
function findSmallestElement(numbers) {
  return Math.min(...numbers);
}

console.log(findSmallestElement([3, 1, 4, 1, 5]));



// Question - 10
function reverseString(str) {
  return str.split('').reverse().join('');
}

console.log(reverseString("hello"));



// Question - 11
function fibonacci(n) {
  if (n <= 1) return n;
  let a = 0, b = 1;
  for (let i = 2; i <= n; i++) {
    [a, b] = [b, a + b];
  }
  return b;
}

console.log(fibonacci(6));



// Question - 12
function removeDuplicates(arr) {
  return [...new Set(arr)];
}

console.log(removeDuplicates([1, 2, 2, 3, 4, 4]));


// Question - 13
function countOccurrences(str, char) {
  return (str.match(new RegExp(char, 'g')) || []).length;
}

console.log(countOccurrences("hello", "l"));



// Question - 14
function findCommonElements(arr1, arr2) {
  return arr1.filter(element => arr2.includes(element));
}

console.log(findCommonElements([1, 2, 3], [3, 4, 5]));



// Question - 15
function sortStrings(arr) {
  return arr.slice().sort();
}

console.log(sortStrings(["banana", "apple", "cherry"])); 