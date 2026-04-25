// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract DailyCheckin {contract DailyCheckin {

    struct User {
        uint256 lastCheckin;
        uint256 streak;
        uint256 totalXP;
    }

    mapping(address => User) public users;
    uint256 public constant BASE_REWARD = 10;
    uint256 public constant STREAK_BONUS = 5;
    uint256 public constant DAY = 1 days;
    function checkIn() public {User storage user = users[msg.sender];

require(
    block.timestamp >= user.lastCheckin + DAY,
    "Already checked in today"
);
if (block.timestamp <= user.lastCheckin + DAY + 1 hours) {
    user.streak += 1;
} else {
    user.streak = 1;
}
uint256 reward = BASE_REWARD + (user.streak * STREAK_BONUS);
}
