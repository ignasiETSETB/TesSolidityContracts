pragma solidity ^0.4.24;

// Return multiple params
contract SimpleContract {

    uint total;

    function pay() public payable {
        total += msg.value;
    }

    function set1(uint _x) public {
        total = _x;
    }

    function set2(uint _x) internal {
          total = _x;
    }

    // State variables being written to.
    // Events being emitted.
    // Other contracts being created.
    // selfdestruct being used.
    // Ether being sent via calls.
    // Calling functions that are not marked view or pure.
    // Low-level calls being used.
    // Inline assembly containing certain opcodes being used
    function get1() public view returns(uint){
      return total;
    }

    // In addition to modifying the state, (defined in the tutorial on view functions) they also cannot read from the state.
    // The list below contains conditions for a function to be considered to be “reading from the state”:

    // State variable being read.
    // <address>.balance or this.balance being accessed.
    // Members of msg, tx, block being accessed (except for msg.sig and msg.data).
    // Functions that are not marked pure being called.
    // Inline assembly containing certain opcodes being used
    function arithmetics(uint _x, uint _y) public pure returns (uint o_product, uint o_sum) {
        o_sum = _x + _y;
        o_product = _x * _y;
        // set2(o_sum);
    }
}

// Private and Pure
contract C {
    function f(uint a) private pure returns (uint b)
      { return a + 1; }

    function setData(uint a) internal
      { data = a; }
    uint public data;
}
