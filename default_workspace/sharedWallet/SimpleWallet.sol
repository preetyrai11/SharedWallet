pragma solidity ^0.5.13;
import "https://github.com/drpreetyrai/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/math/SafeMath.sol";


contract Allowance is Ownable 
{
    using SafeMath for uint;

    event AllowanceChanged(address indexed _forWho, address indexed _from whom, uint _oldAmunt, uint _newAmount);

    mapping(address => uint) public alowance;

    function addAllowance(address _who, uint _amount) public onlyOwner{
        emit AllowanceChanged(_who, msg.sender, allowance[_who], _amount);
        allowance[_who] = _amount;
    }

    modifier ownerOAllowed(uint _amount0 {
        require(isOwner() || allowance[msg.sender] >= _amount, "You are not allowed");
        _;
    }

    function reduceAllowance(address _who, uint _amount) internal {
        emit AllowanceChanged(_who, msg.sender, allowance[_who], allowance[_who].sub(_amount));
        allowance[_who] = allowance[_who].sub(_amount);
    }
}


contract Simplewallet
{
    // address public owner;

    // constructor() public {
    //     owner = msg.sender;
    // }

    // modifier onlyOwner() {
    //     require(owner==msg.sender, "you are not allowed");
    //     _;
    // }

    event MoneySent(address indexed _benificiary, uint _amount);
    event MoneyReceived(address indexed _from, uint _amount);

    function withdrawMoney(address payable _to,uint _amount) public onlyOwner {
        require(_amount <= address(this).balance, "There are not enough funds stored in the smart contract");
        if(!isOwner()){
            reduceAllowance(msg.sender, _amount);
        }
        emit MoneySent(_to, _amount);
        _to.transfer(_amount);
    }

    function renounceownership() public onlyOwner {
        reert("Can't renounce ownership here");
    }

    function () external payable {
        emit MoneyReceived(msg.sender, msg.value);
    }
}






























