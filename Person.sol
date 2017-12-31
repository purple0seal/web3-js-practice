pragma solidity ^0.4.18;

contract Person {
    string name;
    uint age;
    address owner;
    
    function Person() public {
        owner = msg.sender;
    }
    
    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
    
    event Instructor(
        string name,
        uint age
    );
    
    function setInstructor(string n, uint a) onlyOwner public {
        name = n;
        age = a;
        
        Instructor(n, a);
    }
    
    function getInstructor() public constant returns (string, uint) {
        return (name, age);
    }
}