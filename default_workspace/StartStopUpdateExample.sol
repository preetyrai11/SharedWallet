pragma solidity ^0.5.13;

contract StartStopUpdateExample {
    address owner;

    constructor() public {
        owner = msg.sender;
    }

    function sendMoney() public payable {

    }

    function setPaused(bool _paused) public {
        require(msg.sender == owner, "you are not the owner");
        paused = _paused;
    }

    function withdrawAllMoney(address payable _to) public {
        require(msg.sender == owner, "you are not teh owner");
        require(!paused, "Contract is paused");
        _to.transfer(address(this).balance);
    }

    function destroySmartContract(address payable _to) public {
        require(msg.sender == owner, "You are not the owner");
        seldDestruct(_to);
    }
    
}















