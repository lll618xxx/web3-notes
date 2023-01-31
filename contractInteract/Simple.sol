// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Simple {
    uint256 public num;

    function setNum(uint256 _num) public {
        num = _num;
    }

    // view函数不能改变值，只能读取，但同时不会消耗gas
    function viewNum() public view returns(uint256) {
        return num;
    }
}