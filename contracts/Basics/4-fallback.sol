pragma solidity ^0.4.24;

contract TestContract {
    // The function below will be called for each message
    // that is sent to this contract (as there is no other function to call).
    // However, if Ether is sent to this contract, an exception will occur.
    // That is because this contract does not have the "payable" modifier.
    function() { a = 1; }
    uint a;
}
// this is a contract, which keeps all Ether to it with not way of
// retrieving it.
contract SinkContract {
    function() payable { }
}
