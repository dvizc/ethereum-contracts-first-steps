// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import '@openzeppelin/contracts/security/ReentrancyGuard.sol';

contract SendEtherGuarded is ReentrancyGuard {
    
    function sendEther(address payable recipient, uint256 amount) external payable nonReentrant {
        require(address(this).balance >= amount, 'Not enough Ether');
        (bool success, ) = recipient.call{value: amount}('');
        require(success, 'Failed to send Ether');
    }

}