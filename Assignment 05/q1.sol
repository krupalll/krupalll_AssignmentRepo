// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Crowdfunding {
    struct Campaign {
        address payable creator;
        uint256 targetAmount;
        uint256 deadline;
        uint256 totalContributions;
        bool finalized;
    }

    mapping(uint256 => Campaign) public campaigns;
    mapping(uint256 => mapping(address => uint256)) public contributions;
    uint256 public campaignCount;

    // Create a new crowdfunding campaign
    function createCampaign(uint256 _targetAmount, uint256 _deadline) external {
        require(_deadline > block.timestamp, "Deadline should be in the future");

        campaignCount++;
        campaigns[campaignCount] = Campaign({
            creator: payable(msg.sender),
            targetAmount: _targetAmount,
            deadline: _deadline,
            totalContributions: 0,
            finalized: false
        });
    }

    // Contribute to a campaign
    function contribute(uint256 _campaignId) external payable {
        Campaign storage campaign = campaigns[_campaignId];
        require(block.timestamp < campaign.deadline, "Campaign is over");

        contributions[_campaignId][msg.sender] += msg.value;
        campaign.totalContributions += msg.value;
    }

    // Finalize campaign: release funds if target met, allow refund if not
    function finalizeCampaign(uint256 _campaignId) external {
        Campaign storage campaign = campaigns[_campaignId];
        require(block.timestamp >= campaign.deadline, "Campaign is still ongoing");
        require(!campaign.finalized, "Campaign already finalized");

        campaign.finalized = true;

        if (campaign.totalContributions >= campaign.targetAmount) {
            campaign.creator.transfer(campaign.totalContributions); // Release funds
        }
    }

    // Withdraw contributions if target not met
    function withdraw(uint256 _campaignId) external {
        Campaign storage campaign = campaigns[_campaignId];
        require(block.timestamp >= campaign.deadline, "Campaign is still ongoing");
        require(campaign.totalContributions < campaign.targetAmount, "Target met, cannot withdraw");

        uint256 contributedAmount = contributions[_campaignId][msg.sender];
        require(contributedAmount > 0, "No contributions to withdraw");

        contributions[_campaignId][msg.sender] = 0;
        payable(msg.sender).transfer(contributedAmount); // Refund
    }
}
