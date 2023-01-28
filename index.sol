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




// Arrays
pragma solidity ^0.8.0;

contract arrays{

    uint[] public number;

    function addNumber(uint num)public{
        number.push(num);
    }

    function addSize()public returns(uint){
        return number.length;
    }

     function removeItem(uint index)public returns(uint){
        delete number[index];
    }

}



// Struct is just like a Object in javaScipt
pragma solidity ^0.8.0;

contract Team{

    Player[] public players;

    struct Player{
        string firstName;
        string lastName;
        uint age;
    }
    function addPlayer(string memory _firstName, string memory _lastName, uint memory _age)public{
        players.push( Player(_firstName, _lastName, _age) );
    }
}



// Error Handling using require
pragma solidity ^0.8.6;

contract Bank{
    mapping(address => uint) balance;

    function checkBalance()public view returns(uint){
        return balance[msg.sender];
    }
    
    function addBalance(uint _toAdd)public returns (uint){
        balance[msg.sender] += _toAdd;
        return balance[msg.sender];
    }

    function transfer(address receiverAddress, uint amount) public {
        require(balance[msg.sender] >= amount , "you dont have enough balance to transfer");
        require(msg.sender != receiverAddress, "you dont have send tokens in your own wallet!");
        balance[msg.sender] -= amount;
        balance[receiverAddress] += amount;
    }

}