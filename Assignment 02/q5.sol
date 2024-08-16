//How can a smart contract store and retrieve a user's name?

pragma solidity ^0.8.0;

contract NameStorage {
    string private name;

    // Function to store a user's name
    function setName(string memory _name) public {
        name = _name;
    }

    // Function to retrieve the stored name
    function getName() public view returns (string memory) {
        return name;
    }
}
