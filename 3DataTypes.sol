// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

/*     
Unsigned 
uint8 to uint256( can also be written as uint )
uint8   --> 0 to 2**8-1 memory
uint256 --> 0 to 2**256-1 memory

Signed or Integer values
int8 to int256(can be written as int for better readability)
int8  --> -2**7 to 2**6 
int256 or int  --> -2**255 to 2**254
*/
contract DataTypes{

    uint8 one = 1; /*uint8 represents memory of 8 bits i.e., 1 byte */
    uint8 public MaxUInt = type(uint8).max;
    uint8 public minUInt = type(uint8).min; /* So, I can store values from 0 to 255*/

    int8 public MaxInt = type(int8).max; /* max value that i can store is 127 */
    int8 public MinInt = type(int8).min; /* min value that i can store is -128 */

    bool public Boo = true;

    address public add = 0x0000000000000000000000000000000000000000;

    bytes1 a = 0xb5; /* This takes only one byte of memory ~ 8 bits */
    bytes1 b = 0xe2; /* The value is hexadecimal*/

}