// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Immutable { //here immutable is just the contract name

    uint256 public immutable van; //immutably declared variables, dont change their vlaues once assigned
    address public immutable myAddr;
    
    constructor(uint256 _myUnit) {
        myAddr = msg.sender;
        van = _myUnit;
    } 
}