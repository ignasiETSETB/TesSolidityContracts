pragma solidity ^0.4.24;

contract ownedContract {
    function ownedContract() { ownerAddress = msg.sender; }
    address ownerAddress;
}
contract mortalContract is ownedContract {
    function killOwner() {
        if (msg.sender == ownerAddress) selfdestruct(ownerAddress);
    }
}
contract BaseNo1 is mortalContract {
    function killOwner() { /* do cleanup 1 */ mortalContract.killOwner(); }
}
contract BaseNo2 is mortalContract {
    function killOwner() { /* do cleanup 2 */ mortalContract.killOwner(); }
}
contract Final is BaseNo1, BaseNo2 {
}
