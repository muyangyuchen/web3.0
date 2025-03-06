// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ArrayOperation {
    address[] public addressList;
    uint[] public array = [1,2,3,4];
    function addAddress(address _a) external {
        addressList.push(_a);
    }

    function removeAddress() external {
        addressList.pop();
    }

    function addArray(uint[] memory arrayNum) public pure returns (uint) {
        uint sum = 0;
        for (uint i = 0; i < arrayNum.length; i++) {
            sum += arrayNum[i];
        }
        return sum;
    }

    function deleteUint(uint x) public returns (uint[] memory) {
        for (uint i=0; i < array.length; i++) {
            if (array[i] == x) {
                for (x=i; x < array.length - 1; x++)
                    array[x] = array[x+1];
                break;
            }
        }
        array.pop();
        return array;
    }
}
