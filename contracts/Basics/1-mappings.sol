pragma solidity ^0.4.24;

contract exampleMapping {
    mapping(address => uint) public balances;
    function update(uint balanceNew) public{
        balances[msg.sender] = balanceNew;
    }
}
contract userMapping {
    function f() public returns (uint)  {
        exampleMapping m = new exampleMapping();
        m.update(100);
        return m.balances(this);
    }
}
