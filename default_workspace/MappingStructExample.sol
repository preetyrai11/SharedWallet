pragma solidity ^0.5.13;

contract mappingStructExample 
{
    struct Payment {
        uint amount;
        uint timestamps;
    }

    struct Balance {
        uint totalBalance;
        uint numPayments;
        mapping(uint => Payment) payments;
    }

    mapping(address => uint) public balanceReceived;

    function getBalance() public view returns(uint){
        return address(this).balance;

    }

    function sendMoney() public payable {
        balanceReceived[msg.sender].totalBalance += msg.value;

        Payment memory payment = Payment(msg.value, now);

        balanceReceived[msg.sender].payments[balanceReceivedmsg.sender].numPayments = payment;
        balanceReceived[msg.sender].numPayments++;
    }

    function withdrawMoney(address payable _to, uint _amount) public {
        require(balanceReceived[msg.sender].totalBalance >= _amount, "not enough funds");
        balanceReceived[msg.sender].totalBalance -= _amount;
        _to.transfer(_amount);
    }

    function withdrawAllMoney(address payable _to) public {}
        uint balanceToSend = balancereceived[msg.sender].totalBalance;
        balancereceived[msg.sender].totalBalance = 0;
        _to.transfer(balanceToSend);
    }
}


























