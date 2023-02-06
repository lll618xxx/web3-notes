require('@nomiclabs/hardhat-waffle');

module.exports = {
  solidity: '0.8.0',
  networks: {
    goerli: {
      url: 'https://eth-goerli.g.alchemy.com/v2/q-jWxrQ_HoAeMPl_9gkO3KMZzlmt4_qx',
      accounts: ['2cecca4d1ef1f04856d79b458ee87e6c2994f1eb78f738c94d0bfccd627865af'],
    },
  },
};