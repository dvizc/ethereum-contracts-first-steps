// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./MyLibrary.sol";

contract UseLibrary{
    function calculateSquare(uint256 x) public pure returns (uint256) {
        return Math.square(x);
    }
}