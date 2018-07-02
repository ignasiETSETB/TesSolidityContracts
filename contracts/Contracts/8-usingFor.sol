pragma solidity ^0.4.24;

library SearchLib {
    function getIndexOf(uint[] storage selfStore, uint value) public view returns (uint) {
        for (uint n = 0; n < selfStore.length; n++)
            if (selfStore[n] == value) return n;
        return uint(-1);
    }
}
contract Cont {
    using SearchLib for uint[];
    uint[] libData;
    function append(uint value) public {
        libData.push(value);
    }
    function replace(uint _oldData, uint _newData) public {
        // Will perform library function call
        uint index = libData.getIndexOf(_oldData);
        if (index == uint(-1))
            libData.push(_newData);
        else
            libData[index] = _newData;
    }
}
