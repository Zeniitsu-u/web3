// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract StateVariable {
    
    uint256 public Var;

    function set(uint256 _var) public {
        Var = _var;
    }

    function get() public view returns (uint256){
        return Var;
    }
}