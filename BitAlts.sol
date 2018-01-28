pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract BitAlts is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function BitAlts(address _owner)  UpgradeableToken(_owner) {
    name = "BitAlts";
    symbol = "BTA";
    totalSupply = 5000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}