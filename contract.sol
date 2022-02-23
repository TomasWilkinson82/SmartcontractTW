pragma solidity ^0.8.0;

contract Greeter {
  string public greeting;
  string public name;
  string public studentNumber;
  uint public count;
  
  constructor() public {
    name = 'tomas wilkinson';
    studentNumber = '10033089';
    greeting = 'Hello from the contract deployed be ' + name + ' with student number ' + studentNumber ';
    count = 0;
  }

  function setGreeting(string memory _name, string memory _studentNumber) public {
    name = _name;
    studentNumber = _studentNumber;
    greeting = 'Hello from the contract deployed be ' + name + ' with student number ' + studentNumber ';
    count++
  }

  function greet() view public returns (string memory) {
    return greeting;
  }
}
