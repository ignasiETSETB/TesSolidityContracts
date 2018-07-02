pragma solidity ^0.4.24;

contract cont1 {
    uint constant a = 32**22 + 8;
    string constant myText = "text";
    bytes32 public x constant myHash = keccak256("text");
}
