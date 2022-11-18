// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.14;

/**
* @title 
* @author Anthony (fps) https://github.com/0xfps.
* @dev 
*
*/

contract Foo {
    function receiver(address _address) external pure returns (string memory) {
        require (_address != address(0), "Invalid address.");
        return "Address valid";
    }
}