// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/Pausable.contract Project is ReentrancyGuard, Ownable, Pausable {
    // Your contract variables here
    string public name;
    string public description
    uint256 public targetAmount;
    uint256 public currentAmount;
    uint256 public deadline;
    bool public isCompleted;
    
    // Events
    event ProjectCreated(string name, uint256 targetAmount, uint256 deadline);
    event FundsReceived(address indexed contributor, uint256 amount);
    event ProjectCompleted();
    
    // Constructor with no input parameters - deployer becomes owner
    constructor() 
        Ownable(msg.sender)  // Make deployer the owner automatically
    {
        name = "Default Project";
        description = "A default crowdfunding project";
        targetAmount = 1 ether; // Default target of 1 ETH
        deadline = block.timestamp + (30 days); // Default 30 days from deployment
        currentAmount = 0;
        isCompleted = false;
        
        emit ProjectCreated(name, targetAmount, deadline);
    }
    
    // Example function to receive funds
    function contribute() external payable whenNotPaused nonReentrant {
        require(block.timestamp < deadline, "Project deadline has passed");
        require(!isCompleted, "Project already completed");
        require(msg.value > 0, "Must contribute more than 0");
        
        currentAmount += msg.value;
        emit FundsReceived(msg.sender, msg.value);
        
        if (currentAmount >= targetAmount) {
            isCompleted = true;
            emit ProjectCompleted();
        }
    }
    
    // Owner-only function to pause the contract
    function pause() external onlyOwner {
        _pause();
    }
    
    // Owner-only function to unpause the contract
    function unpause() external onlyOwner {
        _unpause();
    }
    
    // Owner-only function to update project details (only before any contributions)
    function updateProject(
        string memory _name,
        string memory _description,
        uint256 _targetAmount,
        uint256 _durationInDays
    ) external onlyOwner {
        require(currentAmount == 0, "Cannot update after contributions received");
        require(!isCompleted, "Project already completed");
        
        name = _name;
        description = _description;
        targetAmount = _targetAmount;
        deadline = block.timestamp + (_durationInDays * 1 days);
        
        emit ProjectCreated(_name, _targetAmount, deadline);
    }
    
    // Owner-only function to withdraw funds (example)
    function withdrawFunds() external onlyOwner nonReentrant {
        require(isCompleted, "Project not completed yet");
        uint256 amount = address(this).balance;
        require(amount > 0, "No funds to withdraw");
        
        (bool success, ) = payable(owner()).call{value: amount}("");
        require(success, "Withdrawal failed");
    }
}
