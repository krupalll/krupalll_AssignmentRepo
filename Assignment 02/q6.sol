//How can a smart contract allow users to vote for a candidate and keep track of votes?

pragma solidity ^0.8.0;

contract Voting {
    mapping(string => uint256) private votes;

    // Function to vote for a candidate
    function vote(string memory candidate) public {
        votes[candidate] += 1;
    }

    // Function to get the votes for a specific candidate
    function getVotes(string memory candidate) public view returns (uint256) {
        return votes[candidate];
    }
}
