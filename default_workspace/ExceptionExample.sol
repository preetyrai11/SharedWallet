pragma solidity ^0.5.13;

contract Exceptionexample 
{
    mapping(address => uint64) public balanceReceived;

    function receiveMoney() public payable {
        assert(balanceReveived[msg.sender] + uint4(msg.value) >= balanceReceived[msg.sender]);
        balanceRceived[msg.sender] += uint64(msg.value0;)
    }

    function withdrawMoney(address payable -to, unit4 _amount) public {
        require(_amount <= balancereceived[msg.sender], "You don't have enough ether!");
        balanceReceived[msg.sender] -= _amount;
        _to.transfer(_amount);
    }
}

pragma



















