// 1: Write a function `isAnagram` which takes 2 parameters and returns true/false if those are anagrams or not.

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
  