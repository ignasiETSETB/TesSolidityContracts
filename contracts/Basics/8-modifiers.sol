pragma solidity ^0.4.24;

contract isOwned {
    constructor() public { owner = msg.sender; }

    address owner;

    modifier ownerOnly {
        require(msg.sender == owner);
        _;
    }
}

contract test1 is isOwned {
  uint32 total;

  function add(uint32 _a, uint32 _b) public ownerOnly returns(uint32) {
      total = _a + _b;
      return total;
  }
}
