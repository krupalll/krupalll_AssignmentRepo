//How can a smart contract maintain a ledger of transactions with basic entries?

pragma solidity ^0.8.0;

contract SimpleLedger {
    struct Entry {
        address sender;
        string description;
        uint256 amount;
    }

    Entry[] public ledger;

    // Function to add a transaction entry to the ledger
    function addEntry(string memory description, uint256 amount) public {
        ledger.push(Entry(msg.sender, description, amount));
    }

    // Function to get the total number of entries
    function getLedgerCount() public view returns (uint256) {
        return ledger.length;
    }
}
