const ethers = require('ethers')
const fs = require('fs-extra')

async function main() {
    try {
        const rpcServer = 'http://127.0.0.1:7545' // Ganache
        const provider = new ethers.providers.JsonRpcProvider(rpcServer) // 连接本地区块链
       
        const privateKey = '9697527aca44d93fc75dbe0ceac67740f2f50b0a66b14fd6659483b9fc848e4f'
        const wallet = new ethers.Wallet(privateKey, provider)

        const abi = fs.readFileSync('./Local_sol_Local.abi', 'utf8')
        const binary = fs.readFileSync('./Local_sol_Local.bin', 'utf8')

        const contractFactory = new ethers.ContractFactory(abi, binary, wallet)
        console.log('deploying...')
        const contract = await contractFactory.deploy()
        console.log('合约地址', contract.address)
    } catch (error) {
        console.log({error})
    }
}

main().then(() => {
    process.exit(0)
}).catch((error) => {
    process.exit(1)
})