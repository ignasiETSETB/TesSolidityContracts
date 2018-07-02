pragma solidity ^0.4.24;

contract testRequire {

  uint32 public val;

  function f(uint32 _val) public {
      val =  _val;
      require( _val < 10);
  }
}

contract testAssert {

  uint32 public val;

  function f(uint32 _val) public {
      val =  _val;
      assert( _val < 10);
  }
}

contract testRevert {

  uint32 public val;

  function f(uint32 _val) public {
      val =  _val;
      revert();
  }
}
