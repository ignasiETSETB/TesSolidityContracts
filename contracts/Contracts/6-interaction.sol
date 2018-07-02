pragma solidity ^0.4.24;

contract C1 {
    uint x;

    constructor(uint y) public payable {
        x = y;
    }
}
contract C2 {
    C1 d = new C1(4); // To be executed as a part of C2's constructor

    function createC1(uint arg) public {
        C1 newC1 = new C1(arg);
    }

    function createAndEndowC1(uint arg, uint amount) public payable {
        // Create and send the Ether
        C1 newC1 = (new C1).value(amount)(arg);
    }
}
