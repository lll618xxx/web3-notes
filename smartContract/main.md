## Remix

Remix是以太坊官方推荐的智能合约开发IDE，可以在浏览器中快速部署测试智能合约。

- [Remix地址](https://remix.ethereum.org)

### HelloWorld，Solidity是智能合约的主流编程语言

```js
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7; // 约定solidity的版本，^是指包含以及更高
// pragma solidity >=0.8.7 <0.9.9; // 区间版本

contract HelloWorld {
    uint256 public num = 2;
    People public person = People({name:'xx', age: 1}); // 创建对象
    People[] public people; // 定义数组

     // 每个name都会被映射到一个数字
    mapping(string => uint256) public nameToAge;

    // struct类似于js的对象(object)
    struct People {
        string name;
        uint256 age;
    }

    function setNum(uint256 _num) public {
        num = _num;
        // 内部越多逻辑，越消耗gas
    }

    // view函数不能改变值，只能读取，但同时不会消耗gas
    function viewNum() public view returns(uint256) {
        return num;
    }

    // pure函数不能改变值，也不能读取，一般为常用函数，但同时不会消耗gas
    function pureNum() public pure returns (uint256) {
        return 1+1;
    }

    // string其实是一个bytes数组
    // struct、map、数组在作为参数时候，需要calldata或者momory
    function addPerson(string memory _name, uint256 _age) public {
        People memory newPerson = People({name: _name, age: _age});
        people.push(newPerson);
        nameToAge[_name] = _age;
    }

    // calldata和momory意味着变量只是暂时存在，但calldata是不能被修改，memory能修改
    // storage是可以被修改的永久变量
}
```

合约也有地址，部署一个合约其实是在发送一个交易，同时也修改了区块链，让链上拥有这个合约  

可以将合约部署到测试网上，选择测试环境，如MetaMask

<img src="https://github.com/lll618xxx/web3-notes/blob/master/smartContract/img/env_select.png?raw=true" style="width:300px" />

但前提是要有对应的测试币，因为部署合约需要支付gas，如果没有测试币，可以从下面这个链接获取。

- [获取测试以太币](https://github.com/lll618xxx/web3-notes/blob/master/wallet/METAMASK.md)

部署合约之后，可以remix的控制台点击 view on etherscan查看详情

<img src="https://github.com/lll618xxx/web3-notes/blob/master/smartContract/img/detail.png?raw=true" style="width:300px" />

