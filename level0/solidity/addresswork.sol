// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SimpleWallet {
    mapping (address => uint256) public balances;
    mapping (address => bool) public whitelist;

    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }

    function addWhitelist(address _wallet) external onlyOwner {
        whitelist[_wallet] = true;
    }

    function getMymoney() external view returns (uint256) {
        return balances[msg.sender];
    }

    function withdraw(uint256 amount) public {
        require(balances[msg.sender] >= amount, "Insufficient balance.");
        require(whitelist[msg.sender], "black");
        balances[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
    }

    function deposite() public payable {
        balances[msg.sender] += msg.value;
    }

}
