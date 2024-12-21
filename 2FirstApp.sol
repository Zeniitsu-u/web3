
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Counter{
    uint256 public Count;

    function get() public view returns (uint256){
        return Count;
    }

    function inc() public {
        Count+=1;
    }

    function dec() public {
        Count-=1;
    }
}