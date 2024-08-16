//How can a smart contract log events when certain actions are performed?

pragma solidity ^0.8.0;

contract EventLogging {
    event LogMessage(string message);

    // Function to trigger an event
    function triggerEvent(string memory message) public {
        emit LogMessage(message);
    }
}
