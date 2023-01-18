# 为什么要了解区块链？

Web3 是以区块链技术为核心,构建新一代的去中心化互联网组件,再基于它们来构建我们想要提供的服务、应用。  

虽然在实际开发中不太可能写区块链，但是了解区块链对我们的Web3开发有一定的帮助

## 区块

定义：一种数据块，它采用密码学的方法将电子数据永远的记录下来，每个“区块”就是一本账本。

<img src="https://github.com/lll618xxx/web3-notes/blob/master/blockChain/img/block_demo.png?raw=true" style="width:300px" />

从上面的图可以看到，每个区块记录了<code>position</code>、<code>nonce</code>、<code>data</code>，然后将3个合并生成 <code>hash</code>。

**hash存在碰撞（即不同的输入得到一样的结果），但这种概率非常的低**

**注意：nonce的值，是根据生成的hash是否落在指定区域来得出；只要hash值的前4位是0，即可满足。**

## 区块链

定义：就是一个又一个区块组成的链条；是共享的、不可篡改的账本；用于记录交易、跟踪资产和建立信任。  

特性：分布式存储，点对点传输、共识机制、加密算法等。

- 区块链1.0技术 -> 比特币
- 区块链2.0技术 -> 以太坊2.0

在区块链中，第一个区块叫：**创世区块**

<img src="https://github.com/lll618xxx/web3-notes/blob/master/blockChain/img/block_chain_demo.png?raw=true" style="width:300px" />

### 区块链的运行机制

- [区块-调试网址](https://andersbrownworth.com/blockchain/block)
- [区块链-调试网址](https://andersbrownworth.com/blockchain)

到了区块链这里，可以看到每一个区块都有一个**前指针**，这个是记录前一个区块的hash。

<img src="https://github.com/lll618xxx/web3-notes/blob/master/blockChain/img/first_chain_demo.png?raw=true" style="width:300px" />

如上图，对于第一个区块，即创世区块的上一个hash是000000....00000000。  

为什么要记录上一个区块的hash值，因为这样基本能做到防篡改。如果某一个区块的hash值的被更改，那么其对应的下一个区块算的hash会不满足0000开头的条件，需要重新计算nonce，然后得出最新的hash。这样子后面所有的区块都需要重新计算nonce。

### 签名交易

在区块链中，如何验证一笔交易是真实的？  

区块链中，用的是非对称加密（加密和解密的密钥不一样），生成签名的时候，用个人私钥生成，验证的时候是用个人的公钥验证

- [公钥私钥生成-调试网址](https://andersbrownworth.com/blockchain/public-private-keys/keys)
- [签名验证-调试网址](https://andersbrownworth.com/blockchain/public-private-keys/signatures)

### Gas手续费

在区块链中，区块能存储交易的空间有限。为了能让交易被写在某个区块中，需要支付手续费。手续费会根据需求变化。比如以太坊的费用会上下调节，调节的依据是有正在交易人数的量。