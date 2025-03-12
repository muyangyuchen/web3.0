// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Counter {
    uint256 private _counter;

    constructor(uint256 counter) {
        _counter = counter;
    }

    function get() public view returns (uint counter) {
        return _counter;
    }

    function inc() public {
        _counter++;
    }

    function dec() public {
        _counter--;
    }
}
