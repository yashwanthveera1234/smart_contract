pragma solidity 0.8.4;

contract migrations {
  address public owner;
  uint public last_completed_migration;
  modifier restricted() {
    require(msg.sender == owner);_;}
  function setCompleted(uint completed) public restricted {last_completed_migration = completed;}
}