// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract Greeter {
  string public greeting;
  string public name;
  string public studentNumber;
  uint public count;
  
  constructor() {
    name = "Tomas Wilkinson";
    studentNumber = "10033089";
    greeting = string(abi.encodePacked("Hello from the contract deployed by ",name," with student number ",studentNumber));
    count = 0;
  }

  function setGreeting(string memory _name, string memory _studentNumber) public {
    name = _name;
    studentNumber = _studentNumber;
    greeting = string(abi.encodePacked("Hello from the contract deployed by ",name," with student number ",studentNumber));
    count++;
  }

  function greet() view public returns (string memory) {
    return greeting;
  }
  
  function getCount() view public returns (uint) {
    return count;
  }
}
