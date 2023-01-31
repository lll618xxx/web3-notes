// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "./Simple.sol";

contract Factory {
    Simple[] public simpleList;

    function caeateSimpleContract() public {
        Simple simple = new Simple();
        simpleList.push(simple);
    }

    /**
        * 要和其他合约交互，需要两个东西
        * 1、合约地址
        * 2、合约ABI Application Binary Interface，告诉我们的代码如何来和合约交互
    */
    function sfStore(uint256 index, uint256 num) public {
        // 要调用其他合约里面的函数，首先要获得合约对象
        Simple simple = simpleList[index]; // 在数组获得合约地址，同时也自动获得了ABI
        simple.setNum(num);
    }

    // 是public view函数，因为只能从simple合约中读取数据
    function sfGet(uint256 index) public view returns(uint256) {
        // 要调用其他合约里面的函数，首先要获得合约对象
        return simpleList[index].viewNum();
    }
}