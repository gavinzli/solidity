//SPDX-License-Identifier: GPL-3.0
 
pragma solidity >=0.5.0 <0.9.0;
contract A{
    string[] public cities = ['Prague','Bucharest'];

    function f_memory() public{
        string[] memory s1 = cities;
        s1[0] = 'London';
    }

    function f_storage() public{
        string[] storage s1 = cities;
        s1[0] = 'Berlin';
    }
      
}