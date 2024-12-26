// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Arrays{

    // Several ways to initialise an array
    // Array declaration is done by 'uint256[]'
    uint256[] public arr;
    uint256[] public arr2 = [1,2,3,4];
    uint[10] public fixedLengthArray;

    //function to push an item into array
    function Add(uint256 i) public {
        arr.push(i);
    }

    //function to remove last item from the array
    function remove_Last_Item() public {
        arr.pop();
    }

    //function to remove an item from the array
    function remove(uint256 _index) public {
        delete arr[_index];
        //delete does not change the length of the array,
        //instead it replaces the deleted item with 0
    }

    //get length of an array
    function get_length()public view returns(uint256) {
        return arr.length;
    }
    //function to get the item at specific index number
    function get_item(uint x) public view returns (uint) {
        return arr[x];
    }

    //function to return the whole array
    function get() public view returns (uint256[] memory){
        return arr;
    }


    //When i try to remove element of particular index using delete keyword,
    // zero raplaces the value of item
    //So, to get the required array, we should shift the array items and 
    //pop the last dublicate item

    function remove_item(uint256 i ) public {
        
        require(i < arr.length,"Length of array should be more");
        for(i;i < arr.length-1;i++){
            arr[i] = arr[i-1];
        }
        arr.pop();
    }

}