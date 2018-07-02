pragma solidity ^0.4.24;

// Interfaces in Solidity are a lot like abstract contracts, except that their functions cannot be implemented.

// Additionally, there are other restrictions:

// Cannot inherit contracts and other interfaces.
// Some of these restrictions might be lifted in the future.
// Cannot define enums.
// Cannt define structs.
// Cannot define variables.
// Cannot define constructors.
// Interfaces are limited to what can be represented by the Contract ABI, and additionally, the conversion from the ABI and to an Interface and vice versa supposedly would be possible without any information being lost.

pnterface TokenContract {
    function transferEth(address recipientAddress, uint amountSum) external;
}
