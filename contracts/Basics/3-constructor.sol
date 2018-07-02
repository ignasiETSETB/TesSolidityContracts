pragma solidity ^0.4.24;

contract Impossible {

  constructor() public {

    // Por qué falla?
    this.test();

  }

  function test() public pure returns(uint256) {
    return 2;
  }

}

// Al compilar recibes una advertencia, pero compila
// Si intentas implementar una nueva instancia, se revertirá.
// Esto se debe a que no tiene sentido intentar ejecutar código que aún no está almacenado.
// Por otro lado, pudimos acceder a la dirección del contrato (contractAddress): la cuenta existe,
// pero todavía no tiene ningún código.
