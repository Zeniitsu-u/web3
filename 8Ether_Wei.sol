// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Currency{

    uint8 public oneWei = 1 wei;
    bool public isOneWei = (oneWei == 1 wei);

    uint32 public oneGWei = 4 gwei;
     // 1 GWei = 10^9 wei
    bool public isOneGWei = (oneGWei == /*4 gwei*/ 4e9); 

    uint64 public oneEther = 1 ether;
     // 1 Ether = 10^18 wei
    bool public isOneEther = (oneEther == 1e18);
}