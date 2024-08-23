pragma solidity ^0.8.0;

contract Lottery {
    address public manager;
    address[] public players;

    modifier onlyManager() {
        require(msg.sender == manager, "Only the manager can call this function.");
        _;
    }

    // Constructor to set the manager as the contract deployer
    constructor() {
        manager = msg.sender;
    }

    // Function to allow players to enter the lottery by sending Ether
    function enter() public payable {
        require(msg.value > 0.01 ether, "Minimum Ether required is 0.01.");
        players.push(msg.sender);
    }

    // Function to generate a pseudo-random number (not secure for production)
    function random() private view returns (uint) {
        return uint(keccak256(abi.encodePacked(block.difficulty, block.timestamp, players)));
    }

    // Function for the manager to pick a winner
    function pickWinner() public onlyManager {
        require(players.length > 0, "No players have entered the lottery.");

        uint index = random() % players.length;
        address winner = players[index];

        // Transfer the total lottery balance to the winner
        payable(winner).transfer(address(this).balance);

        // Reset the lottery for the next round
        players = new address ;
    }

    // Function to get the list of all players
    function getPlayers() public view returns (address[] memory) {
        return players;
    }

    // Function to get the contract balance
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}
