// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract MoloTeamVesting {
    IERC20 public immutable token;
    address public immutable beneficiary;
    uint256 public immutable startTime;

    struct Tranche {
        uint256 amount;
        uint256 unlockTime;
        bool claimed;
    }

    Tranche[5] public tranches;
    uint256 public totalLocked;
    uint256 public totalClaimed;

    event TokensClaimed(uint256 indexed tranche, uint256 amount, uint256 timestamp);
    event VestingFunded(uint256 totalAmount, uint256 timestamp);

    constructor(address _token, address _beneficiary) {
        token = IERC20(_token);
        beneficiary = _beneficiary;
        startTime = block.timestamp;

        uint256 decimals18 = 1e18;
        tranches[0] = Tranche(2_500_000_000_000 * decimals18, block.timestamp, false);
        tranches[1] = Tranche(3_750_000_000_000 * decimals18, block.timestamp + 90 days, false);
        tranches[2] = Tranche(6_250_000_000_000 * decimals18, block.timestamp + 180 days, false);
        tranches[3] = Tranche(6_250_000_000_000 * decimals18, block.timestamp + 365 days, false);
        tranches[4] = Tranche(6_250_000_000_000 * decimals18, block.timestamp + 730 days, false);

        totalLocked = 25_000_000_000_000 * decimals18;
    }

    function fund() external {
        require(token.balanceOf(address(this)) >= totalLocked, "Insufficient tokens deposited");
        emit VestingFunded(totalLocked, block.timestamp);
    }

    function claim(uint256 trancheIndex) external {
        require(msg.sender == beneficiary, "Only beneficiary");
        require(trancheIndex < 5, "Invalid tranche");
        Tranche storage t = tranches[trancheIndex];
        require(!t.claimed, "Already claimed");
        require(block.timestamp >= t.unlockTime, "Not yet unlocked");

        t.claimed = true;
        totalClaimed += t.amount;
        require(token.transfer(beneficiary, t.amount), "Transfer failed");
        emit TokensClaimed(trancheIndex, t.amount, block.timestamp);
    }

    function getTrancheInfo(uint256 index) external view returns (
        uint256 amount, uint256 unlockTime, bool claimed, bool unlocked
    ) {
        require(index < 5, "Invalid tranche");
        Tranche storage t = tranches[index];
        return (t.amount, t.unlockTime, t.claimed, block.timestamp >= t.unlockTime);
    }

    function claimableAmount() external view returns (uint256 total) {
        for (uint256 i = 0; i < 5; i++) {
            if (!tranches[i].claimed && block.timestamp >= tranches[i].unlockTime) {
                total += tranches[i].amount;
            }
        }
    }

    function remainingLocked() external view returns (uint256) {
        return totalLocked - totalClaimed;
    }
}
