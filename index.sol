pragma solidity ^0.8.17;

contract myFirstContract{

    string message = "hello world";

    function hello() public view returns(string memory) {
        return message;
    }
}