// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "./Simple.sol";

/**
 * 合约的继承，使用is关键字
 */
contract Extra is Simple {
    // override修饰符说明用来重写
    function setNum(uint256 _num) public override {
        num = _num*10;
    }
}