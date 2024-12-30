// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import './11loops.sol'; //importing another file

contract Enums{

    enum Status{
        Pending,  // 0
        Shipped,  // 1
        Accepted, // 2
        Rejected, // 3
        Canceled  // 4
    }

    Status public status;

    function setStatus(Status _status) 
    public 
    {
        status = _status;
    }

    function getStatus() 
    public 
    view 
    returns (Status) 
    {
        return status;
    }

    // custom status
    function cacel() public {
        status = Status.Canceled;
    }

    // resets the status to default value
    function reset() public {
        delete status;
    }

}