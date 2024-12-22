// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract ElseIf {
    function firstComeFirstServe(uint16 x) public pure returns (uint8){

        if (x < 10){
            return 0;  //if condition satisfies here, next steps are compiled
        } else if (x < 20) {
            return 1;
        } else {
            return 2;
        }
    }

    function Ternary(uint256 _x) public pure returns (uint8) {

        //shorthand to write if else 
        // '?' is ternary operator
        return _x < 10 ? 1 : 2;   //condition ? if return part : else return part
    }
}