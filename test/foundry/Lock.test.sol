// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import 'forge-std/Test.sol';
import '../../contracts/Lock.sol';

contract ContractBTest is Test {
  Lock lock;

  function setUp() public {
    lock = new Lock(block.timestamp + 1 weeks);
  }

  function test_owner() public {
    assertEq(lock.owner(), address(this));
  }
}
