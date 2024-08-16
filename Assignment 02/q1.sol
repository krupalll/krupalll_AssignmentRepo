//How can a smart contract return a simple message, like "Hello, World!"? 

pragma solidity ^0.8.0;

contract HelloWorld {
    // Function that returns the "Hello, World!" message
    function getMessage() public pure returns (string memory) {
        return "Hello, World!";
    }
}
