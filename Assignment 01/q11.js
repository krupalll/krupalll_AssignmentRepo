// 11: Write a function `fibonacci` that takes a number `n` and returns the `n`th number in the Fibonacci sequence.

function fibonacci(n) {
    if (n <= 1) return n;
    let a = 0, b = 1;
    for (let i = 2; i <= n; i++) {
        [a, b] = [b, a + b];
    }
    return b;
}

console.log(fibonacci(6));