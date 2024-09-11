// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VotingSystem {
    struct Proposal {
        string name;
        uint256 voteCount;
    }

    mapping(uint256 => Proposal) public proposals;
    mapping(uint256 => mapping(address => bool)) public hasVoted;
    uint256 public proposalCount;

    // Create a new proposal
    function createProposal(string memory _name) external {
        proposalCount++;
        proposals[proposalCount] = Proposal({
            name: _name,
            voteCount: 0
        });
    }

    // Cast a vote for a proposal
    function vote(uint256 _proposalId) external {
        require(!hasVoted[_proposalId][msg.sender], "Already voted on this proposal");
        
        proposals[_proposalId].voteCount++;
        hasVoted[_proposalId][msg.sender] = true;
    }

    // View the current leading proposal
    function winningProposal() external view returns (string memory winnerName, uint256 winningVoteCount) {
        uint256 winningVoteIndex;
        uint256 highestVotes;

        for (uint256 i = 1; i <= proposalCount; i++) {
            if (proposals[i].voteCount > highestVotes) {
                highestVotes = proposals[i].voteCount;
                winningVoteIndex = i;
            }
        }

        winnerName = proposals[winningVoteIndex].name;
        winningVoteCount = proposals[winningVoteIndex].voteCount;
    }
}
