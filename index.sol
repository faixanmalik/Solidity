// first message
pragma solidity ^0.7.5;

contract myContract {

    string public message = "heelo to all member";

    function hello() public view returns(string memory){
        return message;
    }

}


// Counter
pragma solidity ^0.8.13;

contract counter {

    uint public count;


    function increment() public {
        count += 1;
    }

    function decrement() public {
        count -=1;
    }

}




// Constructor
pragma solidity ^0.7.5;

contract testing {
    string message;

    constructor (string memory _message){
        message = _message;
    }

    function get() view public returns(string memory){
        return message;
    }
}


// msg.sender
pragma solidity ^0.8.13;

contract DeployerAddress {
    function getDeployerAddress() public view returns(address){
        address accountNo;
        return accountNo = msg.sender;
    }
}


// Mapping
pragma solidity ^0.8.13;

contract Mapping {
    mapping( address => uint ) public testMapping;

    function setBalance(address _add , uint _x) public {
        testMapping[_add] = _x;
    }
}


// Create Simple Coin
pragma solidity ^0.8.13;

contract simpleCoin {
    address public minter;

    mapping(address => uint ) public balanceOf;

    constructor(){
        minter = msg.sender;
    }

    function mint(address receiver, uint amount) public{
        balanceOf[receiver] += amount;
    }
}