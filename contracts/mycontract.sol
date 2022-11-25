// SPDX-License-Identifier: Gavin
pragma solidity ^0.8.0;

contract Property{
    uint private price;
    address public owner;

    constructor(){
        price = 0;
        owner = msg.sender;
    }

    modifier onlyOwner(){
        require(msg.sender == owner);
        _;
    }

    function changeOwner(address _owner) public onlyOwner {
        owner = _owner;
    }

    function setPrice(uint _price) public{
        price = _price;
    }

    function getPrice() view public returns (uint) {
        return price;
    }

    /// @notice Returns the prices of the Property
    event OwnerChanged(address owner);
}

// 0xa131AD247055FD2e2aA8b156A11bdEc81b9eAD95