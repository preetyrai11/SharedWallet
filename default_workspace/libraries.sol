pragma solidity ^0.5.11;
contract LibrariesExample {
    
    mapping(address => uint) public tokenBalance;

    constructor() public {
        tokenbalance[msg.sender] = 1;
    }

    function sendToken(address _to, uint _amount) public returns(bool){
        tokenbalance[msg.sender] -= _amount;
        toenBalance[_to] += _amount;

        return true;
    }
}







