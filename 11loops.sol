// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Loops {
    
    //do-while loops
    uint8 public count;

    function doWhile(uint8 Counter) public view returns (uint8){

        uint256 tempCount = count; //tempcount is used instead of count as count it a state variable
        // if count is used in loop, everytime the state changes, gas cost increases etc
        do{
            tempCount++;
        }while (tempCount < Counter);
        
        tempCount = count;
        return count;
    }

    function WhileLoops() public pure {
        uint8 x = 1;

        while(x < 10){   //avoid while loops and do while loops max to avoid problems discussed earlier
            x++;
        }
    }

    function ForLoops() public pure {

        for(uint8 i =0;i < 10 ; i++){

            if( i == 3){ 
                continue ;   //The loop will pass
            } else if (i == 5){
                break ;      // The iteration stops and exit the loop
            }

        }

    }
}