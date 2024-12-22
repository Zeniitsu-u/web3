// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Mapping{

    //Mapping is declaring a variable as a value for a key of specific data type
    //address => uint256 balance shows that a relationship is set for balances with the address
    //balances remain as uint data type , but can be used where there is a relation btw address and balances

    mapping (address => uint256) public balances;

    function Deposit() public payable {

        //Here , there is a relation btw the fn caller and his balance
        balances[msg.sender] = msg.value;

    }

    function getBalance(address user) public view returns (uint){

        //user argument is whatever the address given by fn caller
        return balances[user];

    }

    //Nested mapping

    //This is the status of the voter wether he/she voted or not
    mapping (address => mapping (uint => bool)) public voted;

    //Vote count is number of votes gained by the candidate
    mapping (uint => uint) public voteCount;

    function voteStatus(address voter, uint idNo) public view returns (bool) {

        return voted[voter][idNo];
    }

    function CastVote(address _voter, uint8 _CandidateidNo) public {

        require(!voted[_voter][_CandidateidNo],"Already voted for this candidate");

        voted[_voter][_CandidateidNo] = true;

        voteCount[_CandidateidNo]++;

    }

    function Votes(uint8 CandidateID) public view returns (uint){

        return voteCount[CandidateID];

    }
    
}