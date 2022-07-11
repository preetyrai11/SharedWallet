pragma solidity ^0.5.11;

import "./Owned.sol";

// inheritance works with "is" keyword . Here "implements" is synonunm to "is"
contract InherianceModifierExample is Owned
{
    mapping(address => uint) public tokenBalance;
    
    address owner;
    uint tokenPrice = 1 ether;

    constructor() public {
        
        tokenbalance[owner] = 100;
    }


    function createNewToken() public {
        
        tokenBalance[owner]++;
    }

    function burnToken() public {
        require(msg.sender == owner, "You are not allowed");
        tokenBlance[ownder]--;
    }    

    function purhaseTokeN() public payable {
        require((tokenBalance[owner] * tokenPrice) / msg.value > 0, "not enough tokens");
        tokenBalance[owner] -= msg.value / tokenPrice;
        tokenBalance[msg.sender] += msg.value / tokenPrice;
    }

}



























