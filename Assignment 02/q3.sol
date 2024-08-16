//How can a smart contract allow a user to set and get a personalized greeting message?

pragma solidity ^0.8.0;

contract Greeting {
    string private greeting;

    // Function to set a personalized greeting
    function setGreeting(string memory _greeting) public {
        greeting = _greeting;
    }

    // Function to retrieve the greeting
    function getGreeting() public view returns (string memory) {
        return greeting;
    }
}
