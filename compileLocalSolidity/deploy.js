const ethers = require('ethers')
const fs = require('fs-extra')

async function main() {
    const rpcServer = '' // Ganache
    const provider = new ethers.providers.JsonRpcProvider(rpcServer) // 连接本地区块链

    const privateKey = ''
    const wallet = new ethers.Wallet(privateKey, provider)

    const abi = fs.readFileSync('./Local_sol_Local.abi', 'utf8')
    const binary = fs.readFileSync('./Local_sol_Local.bin', 'utf8')

    const contractFactory = new ethers.ContractFactory(abi, binary, wallet)
    console.log('deploying...')
    const contract = await contractFactory.deploy()
    console.log(contract)
}

main.then(() => {
    process.exit(0)
}).catch((error) => {
    process.exit(1)
})