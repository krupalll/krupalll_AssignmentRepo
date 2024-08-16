//How can a smart contract keep track of a count and allow it to be incremented?

pragma solidity ^0.8.0;

contract SimpleCounter {
    uint256 private count;

    // Function to increment the counter
    function increment() public {
        count += 1;
    }

    // Function to retrieve the current count
    function getCount() public view returns (uint256) {
        return count;
    }
}
