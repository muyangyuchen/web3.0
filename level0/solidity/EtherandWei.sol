// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

contract EtherUnits {
    uint public onewei = 1 wei;
    bool public isOnewei = (onewei == 1);

    uint256 public oneGwei = 1 gwei;
    // 1 gwei is equal to 10^9 gwei
    bool public isOneGwei = (oneGwei == 1e9);

    uint256 public oneEther = 1 ether;
    // 1 ether is equal to 10^18 wei
    bool public isOneEther = (oneEther == 1e18);
}
