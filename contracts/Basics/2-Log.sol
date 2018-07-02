pragma solidity ^0.4.24;

contract MyContract {

  event Log(address addr);

  constructor() public {
    emit Log(this);
  }

  function add(uint256 a, uint256 b) public pure returns (uint256) {
    return a + b;
  }
}

contract Receipt {
    event DepositLog(
        uint _value
        bytes32 indexed _id,
        address indexed _from,
    );
    function depositFunc(bytes32 _id) payable {
        DepositLog(msg.sender, _id, msg.value);
    }
}
