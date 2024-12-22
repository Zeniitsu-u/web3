// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Variables{

    uint8 public eight = 8; //This is state varible,Can be accessed thoughout the contract

    function DoSomething() public view returns(uint8,uint){
        //These local(inside fn) variables are not stored on blockchain
        uint8 some = 4;

        //global varibles
        //provides info about blockchain
        uint timeStamp = block.timestamp;
        // address sender = msg.sender;

        return (some,timeStamp);
        
    }
}