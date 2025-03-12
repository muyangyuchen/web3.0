// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;


contract Primitive {
    bool public boo = true;

    uint8 public u8 = 1;
    uint256 public u256 = 429;

    int8 public i8 = -1;
    int256 public i256 = 456;
    int256 public i = -123;

    int256 public minInt = type(int256).min;
    int256 public maxInt = type(int256).max;

    /*
    In Solidity, the data type byte represent a sequence of bytes. 
    Solidity presents two type of bytes types :

     - fixed-sized byte arrays
     - dynamically-sized byte arrays.
     
     The term bytes in Solidity represents a dynamic array of bytes. 
     It’s a shorthand for byte[] .
    */
    bytes1 a = 0xb5; //  [10110101]
    bytes1 b = 0x56; //  [01010110]

    bool public defaultBoo; // false
    uint256 public defaultUint; // 0
    int256 public defaultInt; // 0
    address public defaultAddr; // 0x0000000000000000000000000000000000000000
}
