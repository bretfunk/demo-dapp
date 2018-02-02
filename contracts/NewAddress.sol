pragma solidity ^0.4.18;

import "zeppelin-solidity/contracts/ownership/Ownable.sol";
//import "https://github.com/OpenZeppelin/zeppelin-solidity/contracts/ownership/Ownable.sol";


contract Migrations is Ownable {
  uint256 public lastCompletedMigration;

  function setCompleted(uint256 completed) onlyOwner public {
    lastCompletedMigration = completed;
  }

  function upgrade(address newAddress) onlyOwner public {
    Migrations upgraded = Migrations(newAddress);
    upgraded.setCompleted(lastCompletedMigration);
  }
}
