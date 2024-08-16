//How can a smart contract store and retrieve a single integer value?

pragma solidity ^0.8.0;

contract SimpleStorage {
    uint256 private storedData;

    // Function to store a value
    function set(uint256 x) public {
        storedData = x;
    }

    // Function to retrieve the stored value
    function get() public view returns (uint256) {
        return storedData;
    }
}
