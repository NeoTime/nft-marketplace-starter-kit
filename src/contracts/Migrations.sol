// SPDX-License-Identifier: MIT
pragma solidity 0.8.10;
// contract Migrations


contract Migrations {
    address public owner = msg.sender;
    uint public lastCompletedMigration;

    modifier restricted() {
        require(
        msg.sender == owner,
        "This function is restricted to the contract's owner"
    );
        _;
    }

    function setCompleted(uint completed) public restricted {
        lastCompletedMigration = completed;
    }
}
