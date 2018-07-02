pragma solidity ^0.4.24;

contract Felinae {
    function utterance() returns (bytes32);
}

contract Cheetah is Felinae {
    function utterance() returns (bytes32) { return "sneaky cat"; }
}
