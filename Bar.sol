// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.14;

import {Foo} from "./Foo.sol";

/**
* @title 
* @author Anthony (fps) https://github.com/0xfps.
* @dev 
*
*/

contract Bar {
    uint8 public x;

    function sending(address _foo, address _address) public {
        try Foo(_foo).receiver(_address) returns (string memory resp) {
            x ++;
            resp; // Unused.
        } catch Error(string memory reason) {
            revert(reason);
        } catch {
            revert("Call not sent");
        }
    }
}