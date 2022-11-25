// SPDX-License-Identifier: Gavin
pragma solidity ^0.8.0;

contract Property{
    int public price;
    string public location;
    address immutable public owner;
    int constant area = 100;
    // string constant public location = "London";
    // price = 100; this is not permitted in Solidity


    // pure: does not touch the blockchain
    // function f1() public pure returns(int){
    //     int x = 5;
    //     x = x* 2;
    //     // string memory s1 = "abc";
    //     return x;
    // }
    
    constructor(int _price, string memory _location){
        price = _price;
        location = _location;
        owner = msg.sender;
    }

    function setPrice(int _price) public{
        price = _price;
    }

    function getPrice() public view returns(int){
        return price;
    }

    // function setLocation(string memory _location) public{
    //     location = _location;
    // }

    /*
    // declaring state variables saved in contract's storage
    uint price; // by default is private
    string public location;
    
    // can be initialized at declaration or in the constructor only
    address immutable public owner; 
    
    // declaring a constant
    int constant area = 100;
    
    // declaring the constructor
    // is executed only once at contract's deployment
    constructor(uint _price, string memory _location){
        price = _price;
        location = _location;
        owner = msg.sender;  // initializing owner to the account's address that deploys the contract
    }
    
    
    // getter function, returns a state variable
    // a function declared `view` does not alter the blockchain 
    function getPrice() public view returns(uint){
        return price;
    }
    
    // setter function, sets a state variable
    function setPrice(uint _price) public{
        int a; // local variable saved on stack
        a = 10;
        price = _price;
    }
    
    function setLocation(string memory _location) public{ //string types must be declared memory or storage
        location = _location;
    }
    */

}

// 0xa131AD247055FD2e2aA8b156A11bdEc81b9eAD95