//How can a smart contract allow a user to store and retrieve a message string?

pragma solidity ^0.8.0;

contract MessageStorage {
    string private message;

    // Function to store a message
    function setMessage(string memory _message) public {
        message = _message;
    }

    // Function to retrieve the stored message
    function getMessage() public view returns (string memory) {
        return message;
    }
}
