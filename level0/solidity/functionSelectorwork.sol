// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract FunctionSelector {
    bytes4 public storedSelector;

    function square(uint x) public pure returns (uint) {
        return x * x;
    }

    function double(uint x) public pure returns (uint) {
        return x * 2;
    }

    function getSelectorSquare() external pure returns (bytes4){
        return this.square.selector;
    }

    function getSelectorDouble() external pure returns (bytes4) {
        return bytes4(keccak256("double(uint256)"));
    }

    function storeSelector(bytes4 selector) public {
       storedSelector = selector;  
    }

    function excute(bytes4 selector,uint x) external returns (uint z) {
        (bool success, bytes memory data) = address(this).call(abi.encodeWithSelector(selector, x));
        require(success, "Call faild");
        z = abi.decode(data, (uint));
    }

    function executeStoredFunction(uint x) public returns (uint) {
        require(storedSelector != bytes4(0), "Selector not set");
        (bool success, bytes memory data) = address(this).call(abi.encodeWithSelector(storedSelector, x));
        require(success, "Function call failed");
        return abi.decode(data, (uint));
    }
}
