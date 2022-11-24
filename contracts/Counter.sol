// SPDX-License-Identifier: Gavin
pragma solidity ^0.8.0;

contract Counter{
    // Code goes here...
    uint public count = 0; // unsign integer 1, 2, 3

    // constructor() public {
    //     count = 0;
    // }

    // function getCount() public view returns(uint) {
    //     return count;
    // }

    function incrementCount() public{
        count++;
    }
}






