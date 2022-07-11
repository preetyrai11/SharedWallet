pragma solidity ^0.5.13;

contract WorkingwithVariables {
    uint256 public myUint;

    function setMyUint(uint _myUint) public {
        myUint = _myUint;
    }

    bool public myBool;

    function setMyBool(bool _myBool) public {
        myBool = _myBool;
    }

    // Understanding integer wrap around
    uint8 public myUint8;

    function incrementUint() public {
        myUint8++;
    }

    function decrementUint() public {
        myUint8--;
    }


    // Address and balances
    address public myAddress;
    
    function setAddress(address _address) public {
        myAddress = _address;
    }

    function getBalanceOfAddress() public view returns(uint) {
        return myAddress.balance;
    }

    // Strings in Solidity
    string public myStrings;
    function setMyString(string memory _myString) public {
        mystring = _myString;
    }
    
   
    
}








