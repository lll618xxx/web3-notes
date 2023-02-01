// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract FundMe {
    uint256 public minimumUsd = 50*1e18;
    // 通过此函数用来发送资金
    // 为了使函数可以实现支付，加上payable关键字
    function Fund() public payable {
        // 1、如何向这个合约转ETH
        // msg.value 知道转账的金额
        require(getConversionRate(msg.value) >= minimumUsd); // 要求至少发送1个ETH

        // 如何将以太币转USD
    }

    function getPrice() public view returns(uint256) {
        // ABI
        // Address 0xD4a33860578De61DBAbDc8BFdb98FD742fA7028e,
        // https://docs.chain.link/data-feeds/price-feeds/addresses
        AggregatorV3Interface priceFeed = AggregatorV3Interface(0xD4a33860578De61DBAbDc8BFdb98FD742fA7028e);
        (,int256 price,,,) = priceFeed.latestRoundData();
        return uint256(price*1e10);
    }

    function getConversionRate(uint256 ethAmount) public view returns (uint256) {
        uint256 ethPrice = getPrice();
        uint256 ethAmountInUsd = (ethPrice * ethAmount) / 1e18;
        return ethAmountInUsd;
    }


    // 合约的owner可以提取不同的funder发送的资金
    function withdraw() public {

    }
}