pragma solidity ^0.4.24;

import "./1-is.sol";

contract AnotherContract {

  Greeter public myContract;

  constructor() public {
    myContract = new Greeter("Hello");
  }

  function sayHello() public view returns(string) {
    return myContract.greet();
  }
}
