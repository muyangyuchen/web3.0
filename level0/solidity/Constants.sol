// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Constants {
    uint256 public constant MY_CONSTANT = 993456;  // in Wei
    uint256 public constant TWO = 2;
    address public constant zeroAddress = 0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc;
}

contract Imuttable {
    address public immutable myAddress = msg.sender;
    uint256 public immutable MY_UINT;

    constructor(uint256 _myUint) {
        myAddress = msg.sender;
        MY_UINT = _myUint;
    }
}
