// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Simple {
    uint256 public num;

    // virtual修饰符使得这个函数能被重写，用于继承
    function setNum(uint256 _num) public virtual {
        num = _num;
    }

    // view函数不能改变值，只能读取，但同时不会消耗gas
    function viewNum() public view returns(uint256) {
        return num;
    }
}