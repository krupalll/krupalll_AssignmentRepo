// 5: Write a function that calculates the time (in seconds) it takes for the JS code to calculate sum from 1 to n, given n as the input.

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

