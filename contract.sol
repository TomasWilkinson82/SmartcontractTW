// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;



contract Greeter {
  string public greeting;
  string public name;
  string public studentNumber;
  uint public count;
  
  constructor() {
    name = "tomas wilkinson";
    studentNumber = "10033089";
    greeting = "Hello from the contract deployed by Tomas Wilkinson  with student number 10033089 ";
    count = 0;
  }

  function setGreeting(string memory _name, string memory _studentNumber) public {
    name = _name;
    studentNumber = _studentNumber;
    greeting = "Hello from the contract deployed by Tomas Wilkinson  with student number 10033089 ";
    count++;
  }

  function greet() view public returns (string memory) {
    return greeting;
  }
}
