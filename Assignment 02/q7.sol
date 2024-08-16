//How can a smart contract restrict certain functions to only the contract owner?

pragma solidity ^0.8.0;

contract OwnerAccess {
    address private owner;

    // Constructor to set the contract deployer as the owner
    constructor() {
        owner = msg.sender;
    }

    // Modifier to restrict access to the owner
    modifier onlyOwner() {
        require(msg.sender == owner, "Not the contract owner");
        _;
    }

    // Function restricted to the owner
    function restrictedFunction() public onlyOwner {
        // Owner-only logic
    }
}
