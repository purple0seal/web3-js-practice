pragma solidity ^0.4.18;

contract Person {
    string name;
    uint age;
    
    function setInstructor(string n, uint a) public {
        name = n;
        age = a;
    }
    
    function getInstructor() public constant returns (string, uint) {
        return (name, age);
    }
}
