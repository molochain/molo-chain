// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IERC20 {
    function transfer(address to, uint256 amount) external returns (bool);
    function balanceOf(address account) external view returns (uint256);
}

contract MoloLPTimeLock {
    address public immutable token;
    address public immutable beneficiary;
    uint256 public immutable releaseTime;

    event TokensLocked(address indexed token, uint256 amount, uint256 releaseTime);
    event TokensReleased(address indexed beneficiary, uint256 amount);

    constructor(address _token, address _beneficiary, uint256 _releaseTime) {
        require(_token != address(0), "Invalid token");
        require(_beneficiary != address(0), "Invalid beneficiary");
        require(_releaseTime > block.timestamp, "Release time must be in the future");
        token = _token;
        beneficiary = _beneficiary;
        releaseTime = _releaseTime;
    }

    function release() external {
        require(block.timestamp >= releaseTime, "Tokens are still locked");
        uint256 amount = IERC20(token).balanceOf(address(this));
        require(amount > 0, "No tokens to release");
        require(IERC20(token).transfer(beneficiary, amount), "Transfer failed");
        emit TokensReleased(beneficiary, amount);
    }

    function lockedBalance() external view returns (uint256) {
        return IERC20(token).balanceOf(address(this));
    }

    function timeUntilRelease() external view returns (uint256) {
        if (block.timestamp >= releaseTime) return 0;
        return releaseTime - block.timestamp;
    }
}
