// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

//gas is the uint of computation
//gas price is how much amount i am willing to pay per gas
//gas spent is the gas used for the transaction

// we will spend gas price * gas spent for the transaction

// Here the currency we are using for all the transactions is in Ethers


//Now the contract is about how not to write the code

contract Gas {

    uint256 public i = 0 ;
    
    function lootTheGas() public {

        //This uses all the gas

        while (true){
            i += 1;
        }

        //Avoid writing such kind of codes
    }
}